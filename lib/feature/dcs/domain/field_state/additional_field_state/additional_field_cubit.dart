import 'dart:async';

import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_repo.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_state/auth_org_cubit.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/entities/field_entity/field_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'additional_field_state.dart';

part 'additional_field_cubit.freezed.dart';

part 'additional_field_cubit.g.dart';


class AdditionalFieldCubit extends HydratedCubit<AdditionalFieldState> {
  AdditionalFieldCubit(this.authOrgRepo, this.authOrgCubit)
      : super(const AdditionalFieldState(asyncSnapshot: AsyncSnapshot.nothing())) {
    authSub = authOrgCubit.stream.listen((event) {
      event.mapOrNull(
        authorized: (value) => fetchAdditionalFields(),
        notAuthorized: (value) => logOut(),
      );
    });
  }

  final AuthOrgRepo authOrgRepo;
  final AuthOrgCubit authOrgCubit;
  //Подписка
  late final StreamSubscription authSub;


  //Отобразить дополнительные поля
  Future<void> fetchAdditionalFields() async {
    // По желанию
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));

    await authOrgRepo.fetchAdditionalFields().then((value) {

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

  //Добавить дополнительные поля
  Future<void> addField(String name) async {
    await authOrgRepo.addField(name).then((value) {
      fetchAdditionalFields();
    }).catchError((error) {
      addError(error);
    });
  }

  //Добавить дополнительное поле в таблицу OrgFields
  Future<void> addAdditionalFieldInOrgFields(String id) async {
    await authOrgRepo.addFieldInOrgFields(id).then((value) {}
    ).catchError((error) {
      addError(error);
    });
  }

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
  AdditionalFieldState? fromJson(Map<String, dynamic> json) {
    return AdditionalFieldState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AdditionalFieldState state) {
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