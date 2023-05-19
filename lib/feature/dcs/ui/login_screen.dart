import 'package:dcs_43_org_frontend/app/ui/components/app_text_button.dart';
import 'package:dcs_43_org_frontend/app/ui/components/app_text_field.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_state/auth_org_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        title: const Text('Добро пожаловать!'),
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Введите Email и Пароль для входа в систему!",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 26),
                AppTextField(controller: controllerEmail, labelText: "Email"),
                const SizedBox(height: 16),
                AppTextField(
                    obscureText: true,
                    controller: controllerPassword,
                    labelText: "Пароль"),
                const SizedBox(height: 16),
                AppTextButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() == true) {
                      _onTabToSignIn(context.read<AuthOrgCubit>());
                      //Оставлю эту тут!!!!!!!!!!!!!!
                      //Navigator.of(context).pop();
                    }
                  },
                  text: "Войти",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTabToSignIn(AuthOrgCubit authOrgCubit) => authOrgCubit.signIn(
      email: controllerEmail.text, password: controllerPassword.text);
}