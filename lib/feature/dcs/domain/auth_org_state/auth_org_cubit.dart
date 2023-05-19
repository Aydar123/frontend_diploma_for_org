
import 'package:dcs_43_org_frontend/app/domain/error_entity/error_entity.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_repo.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/entities/org_entity/org_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'auth_org_state.dart';

part 'auth_org_cubit.freezed.dart';

part 'auth_org_cubit.g.dart';

@Singleton()
class AuthOrgCubit extends HydratedCubit<AuthOrgState> {
  AuthOrgCubit(this.authOrgRepo):super(AuthOrgState.notAuthorized());

  //Абстрация
  final AuthOrgRepo authOrgRepo;

  //Выход из системы
  void logOut() => emit(AuthOrgState.notAuthorized());

  Future<void> signIn(
      {required String email, required String password}) async {
    emit(AuthOrgState.waiting());
    try {
      final OrgEntity orgEntity =
      await authOrgRepo.signIn(email: email, password: password);
      emit(AuthOrgState.authorized(orgEntity));
    } catch (error, stackTrace) {
      addError(error, stackTrace);
    }
  }

  //Восстановление состояния
  @override
  AuthOrgState? fromJson(Map<String, dynamic> json) {
    final state = AuthOrgState.fromJson(json);
    return state.whenOrNull(
      authorized: (orgEntity) => AuthOrgState.authorized(orgEntity),
    );
  }

  //Сохранение состояния
  @override
  Map<String, dynamic>? toJson(AuthOrgState state) {
    return state
        .whenOrNull(
      authorized: (orgEntity) => AuthOrgState.authorized(orgEntity),
    )
        ?.toJson() ??
        AuthOrgState.notAuthorized().toJson();
  }

  //Обработчик ошибок
  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(AuthOrgState.error(error));
    super.addError(error, stackTrace);
  }

  Future<String?> refreshToken() async {
    final refreshToken =
    state.whenOrNull(authorized: (orgEntity) => orgEntity.refreshToken);
    try {
      return await authOrgRepo.refreshToken(refreshToken: refreshToken).then((value) {
        final OrgEntity orgEntity = value;
        emit(AuthOrgState.authorized(orgEntity));
        return orgEntity.accessToken;
      });
    } catch (error, stateTrace) {
      //rethrow;
      addError(error, stateTrace);
    }
  }

  Future<void> updateProfile({
    String? email,
    String? name,
    String? fullName,
    String? city,
    String? address,
    String? inn,
    String? kpp,
    String? ogrn,
  }) async {
    try {
      _updateOrgState(const AsyncSnapshot.waiting());
      //Ожидание...
      //await Future.delayed(const Duration(seconds: 1));

      final bool isEmptyEmail = email
          ?.trim()
          .isEmpty == true;
      final bool isEmptyName = name
          ?.trim()
          .isEmpty == true;
      final bool isEmptyFullName = fullName
          ?.trim()
          .isEmpty == true;
      final bool isEmptyCity = city
          ?.trim()
          .isEmpty == true;
      final bool isEmptyAddress = address
          ?.trim()
          .isEmpty == true;
      final bool isEmptyInn = inn
          ?.trim()
          .isEmpty == true;
      final bool isEmptyKpp = kpp
          ?.trim()
          .isEmpty == true;
      final bool isEmptyOgrn = ogrn
          ?.trim()
          .isEmpty == true;

      final OrgEntity newOrgEntity = await authOrgRepo.updateProfile(
        email: isEmptyEmail ? null : email,
        name: isEmptyName ? null : name,
        fullName: isEmptyFullName ? null : fullName,
        city: isEmptyCity ? null : city,
        address: isEmptyAddress ? null : address,
        inn: isEmptyInn ? null : inn,
        kpp: isEmptyKpp ? null : kpp,
        ogrn: isEmptyOgrn ? null : ogrn,
      );
      emit(state.maybeWhen(
        orElse: () => state,
        authorized: (orgEntity) =>
            AuthOrgState.authorized(orgEntity.copyWith(
              email: newOrgEntity.email,
              name: newOrgEntity.name,
              fullName: newOrgEntity.fullName,
              city: newOrgEntity.city,
              address: newOrgEntity.address,
              inn: newOrgEntity.inn,
              kpp: newOrgEntity.kpp,
              ogrn: newOrgEntity.ogrn,
            )),
      ));
      _updateOrgState(const AsyncSnapshot.withData(
          ConnectionState.done, "Успешное обновление данных"));
    } catch (error) {
      _updateOrgState(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  void _updateOrgState(AsyncSnapshot asyncSnapshot) {
    emit(state.maybeWhen(
      orElse: () => state,
      authorized: (orgEntity) {
        return AuthOrgState.authorized(
            orgEntity.copyWith(orgState: asyncSnapshot));
      },
    ));
  }

  Future<void> updatePassword({required String oldPassword, required String newPassword}) async {
    try {
      _updateOrgState(const AsyncSnapshot.waiting());
      //await Future.delayed(const Duration(seconds: 1));

      if (newPassword.trim().isEmpty == true) {
        throw ErrorEntity(message: "Новый пароль пустой");
      }

      //message из backend
      final message = await authOrgRepo.updatePassword(
          oldPassword: oldPassword, newPassword: newPassword);

      _updateOrgState(AsyncSnapshot.withData(ConnectionState.done, message));

    } catch (error) {
      _updateOrgState(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  Future<void> getProfile() async {
    try {
      _updateOrgState(const AsyncSnapshot.waiting());
      final OrgEntity newOrgEntity = await authOrgRepo.getProfile();
      emit(state.maybeWhen(
        orElse: () => state,
        authorized: (orgEntity) => AuthOrgState.authorized(orgEntity.copyWith(
          email: newOrgEntity.email,
          name: newOrgEntity.name,
          fullName: newOrgEntity.fullName,
        )),
      ));
      _updateOrgState(const AsyncSnapshot.withData(
          ConnectionState.done, "Успешное получение данных"));
    } catch (error) {
      _updateOrgState(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }



}