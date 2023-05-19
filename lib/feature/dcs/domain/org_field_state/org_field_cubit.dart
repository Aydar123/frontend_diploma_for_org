import 'dart:async';

import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_repo.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_state/auth_org_cubit.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/entities/field_entity/field_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'org_field_state.dart';

part 'org_field_cubit.freezed.dart';

part 'org_field_cubit.g.dart';

class OrgFieldCubit extends HydratedCubit<OrgFieldState> {
  OrgFieldCubit(this.authOrgRepo, this.authOrgCubit)
      : super(const OrgFieldState(asyncSnapshot: AsyncSnapshot.nothing())) {
    authSub = authOrgCubit.stream.listen((event) {
      event.mapOrNull(
        authorized: (value) => fetchOrgFields(),
        notAuthorized: (value) => logOut(),
      );
    });
  }

  final AuthOrgRepo authOrgRepo;
  final AuthOrgCubit authOrgCubit;
  //Подписка
  late final StreamSubscription authSub;

  Future<void> fetchOrgFields() async {
    // Добавим ожидание для отображения процесс-индикатора при
    // отображении всех постов из таблицы OrgField - можно так не делать
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));

    await authOrgRepo.fetchOrgFields().then((value) {
      //Получаем объект Iterable
      final Iterable iterable = value;
      
      //Возвращаем список полей и AsyncSnapshot
      emit(state.copyWith(

          //Использую FieldEntity, потому что в серверной части запрос
          //строиться отностильно таблицы FieldEntity
          orgFieldList: iterable.map((e) => FieldEntity.fromJson(e)).toList(),
          asyncSnapshot:
          const AsyncSnapshot.withData(ConnectionState.done, true)));
      
    }).catchError((error) {
      addError(error);
    });
  }

  //Зачем он тут?
  /*
  Future<void> addFieldInOrgFields(String id) async {
    await authOrgRepo.addFieldInOrgFields(id).then((value) {
      fetchOrgFields();
    }).catchError((error) {
      addError(error);
    });
  }
  */

  void logOut() {
    emit(state.copyWith(
      asyncSnapshot: const AsyncSnapshot.nothing(),
      orgFieldList: [],
    ));
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }

  @override
  OrgFieldState? fromJson(Map<String, dynamic> json) {
    return OrgFieldState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(OrgFieldState state) {
    return state.toJson();
  }

  //Чтобы не было утечки памяти
  @override
  Future<void> close() {
    //Отписаться от подписки
    authSub.cancel();
    return super.close();
  }

}