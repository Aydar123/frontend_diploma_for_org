import 'package:dcs_43_org_frontend/app/ui/app_loader.dart';
import 'package:dcs_43_org_frontend/feature/dcs/ui/components/auth_org_builder.dart';
import 'package:dcs_43_org_frontend/feature/dcs/ui/login_screen.dart';
import 'package:dcs_43_org_frontend/feature/main/ui/main_screen.dart';
import 'package:flutter/material.dart';

class RootOrgScreen extends StatelessWidget {
  const RootOrgScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthOrgBuilder(
        isNotAuthorized: (context) => LoginScreen(),
        isWaiting: (context) => const AppLoader(),
        isAuthorized: (context, value, child) => MainScreen(orgEntity: value)
    );
  }

}