import 'package:dcs_43_org_frontend/app/domain/error_entity/error_entity.dart';
import 'package:dcs_43_org_frontend/app/ui/components/app_snack_bar.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_state/auth_org_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthOrgBuilder extends StatelessWidget {
  const AuthOrgBuilder(
      {Key? key,
        required this.isNotAuthorized,
        required this.isWaiting,
        required this.isAuthorized})
      : super(key: key);

  final WidgetBuilder isNotAuthorized;
  final WidgetBuilder isWaiting;
  final ValueWidgetBuilder isAuthorized;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthOrgCubit, AuthOrgState>(
        builder: (context, state) {
          return state.when(
              notAuthorized: () => isNotAuthorized(context),
              authorized: (orgEntity) =>
                  isAuthorized(context, orgEntity, this),
              waiting: () => isWaiting(context),
              error: (error) => isNotAuthorized(context));
        },
        //Если одна и та же ошибка повторяется несколько раз, то ее можно не отображать
        listenWhen: ((previous, current) =>
        previous.mapOrNull(
          error: (value) => value,
        ) !=
            current.mapOrNull(
              error: (value) => value,
            )),
        listener: (context, state) {
          state.whenOrNull(
              error: (error) =>
                  AppSnackBar.showSnackBarWithError(context, ErrorEntity.fromException(error)));
        });
  }

}