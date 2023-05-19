import 'dart:async';

import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_repo.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_state/auth_org_cubit.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/entities/field_entity/field_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'field_state.dart';

part 'field_cubit.freezed.dart';

part 'field_cubit.g.dart';

class FieldCubit extends HydratedCubit<FieldState> {
  FieldCubit(this.authOrgRepo, this.authOrgCubit)
      : super(const FieldState(asyncSnapshot: AsyncSnapshot.nothing())) {
    authSub = authOrgCubit.stream.listen((event) {
      event.mapOrNull(
        authorized: (value) => fetchFields(),
        notAuthorized: (value) => logOut(),
      );
    });
  }

  final AuthOrgRepo authOrgRepo;
  final AuthOrgCubit authOrgCubit;
  //Подписка
  late final StreamSubscription authSub;

  //Отобразить поля, где createdIrgId = null
  Future<void> fetchFields() async {
    // По желанию
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));

    await authOrgRepo.fetchFields().then((value) {

      //Получаем объект Iterable
      final Iterable iterable = value;

      //Возвращаем список полей и AsyncSnapshot
      emit(state.copyWith(
          fieldList: iterable.map((e) => FieldEntity.fromJson(e)).toList(),
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, true)));

    }).catchError((error) {
      addError(error);
    });
  }

  //Добавить поле по умолчанию в таблицу OrgFields
  Future<void> addFieldInOrgFields(String id) async {
    await authOrgRepo.addFieldInOrgFields(id).then((value) {
      //fetchFields();
    }).catchError((error) {
      addError(error);
    });
  }

  //Пока не использую - но нужно - чуть погодя
  void logOut() {
    emit(state.copyWith(
      asyncSnapshot: const AsyncSnapshot.nothing(),
      fieldList: [],
    ));
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }

  @override
  FieldState? fromJson(Map<String, dynamic> json) {
    return FieldState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(FieldState state) {
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
