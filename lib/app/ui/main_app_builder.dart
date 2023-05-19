import 'package:dcs_43_org_frontend/app/di/init_di.dart';
import 'package:dcs_43_org_frontend/app/domain/app_builder.dart';
import 'package:dcs_43_org_frontend/app/ui/root_org_screen.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_repo.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_state/auth_org_cubit.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/field_state/additional_field_state/additional_field_cubit.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/field_state/field_cubit.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/org_field_state/org_field_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class MainAppBuilder implements AppBuilder{

  @override
  Widget buildApp() {
    return const _GlobalProviders(
      child: MaterialApp(
        home: RootOrgScreen(),
      ),
    );
  }

}

class _GlobalProviders extends StatelessWidget {
  const _GlobalProviders({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => locator.get<AuthOrgCubit>(),
      ),

      BlocProvider(
          create: (context) => FieldCubit(locator.get<AuthOrgRepo>(), locator.get<AuthOrgCubit>())..fetchFields(),
      ),
      BlocProvider(
        create: (context) => AdditionalFieldCubit(locator.get<AuthOrgRepo>(), locator.get<AuthOrgCubit>())..fetchAdditionalFields(),
      ),
      BlocProvider(
          create: (context) => OrgFieldCubit(locator.get<AuthOrgRepo>(), locator.get<AuthOrgCubit>())..fetchOrgFields(),
      ),



      // BlocProvider(
      //   create: (context) => locator.get<FieldCubit>(),
      // ),
      // BlocProvider(
      //   create: (context) => locator.get<AdditionalFieldCubit>(),
      // ),


    ], child: child);
  }
}