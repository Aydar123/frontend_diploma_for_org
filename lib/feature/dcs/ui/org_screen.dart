import 'package:dcs_43_org_frontend/app/domain/error_entity/error_entity.dart';
import 'package:dcs_43_org_frontend/app/ui/app_loader.dart';
import 'package:dcs_43_org_frontend/app/ui/components/app_snack_bar.dart';
import 'package:dcs_43_org_frontend/app/ui/components/app_text_button.dart';
import 'package:dcs_43_org_frontend/app/ui/components/app_text_field.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_state/auth_org_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrgScreen extends StatelessWidget {
  const OrgScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        title: const Text('Личный кабинет'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<AuthOrgCubit>().logOut();
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: BlocConsumer<AuthOrgCubit, AuthOrgState>(
        listener: (context, state) {
          state.whenOrNull(
            authorized: (orgEntity) {
              if (orgEntity.orgState?.hasData == true) {
                AppSnackBar.showSnackBarWithMessage(
                    context, orgEntity.orgState?.data);
              }
              if (orgEntity.orgState?.hasError == true) {
                AppSnackBar.showSnackBarWithError(context,
                    ErrorEntity.fromException(orgEntity.orgState?.error));
              }
            },
          );
        },
        builder: (context, state) {
          final orgEntity = state.whenOrNull(
            authorized: (orgEntity) => orgEntity,
          );
          if (orgEntity?.orgState?.connectionState ==
              ConnectionState.waiting) {
            return const AppLoader();
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child:
                    Text(orgEntity?.email?.split("").first ?? "Photo"),
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      // TextField(
                      //   decoration: InputDecoration(hintText: "Фамилия"),
                      //   textInputAction: TextInputAction.next,
                      // ),
                      Text(orgEntity?.email ?? ""),
                      Text(orgEntity?.name ?? ""),
                      Text(orgEntity?.fullName ?? ""),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => const _UpdatePassword());
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.indigoAccent),
                      ),
                      child: const Text("Изменить пароль")),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => const _UpdateProfile());
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.indigoAccent),
                      ),
                      child: const Text("Обновить данные")),
                ],
              ),
            ]),
          );
        },
      ),
    );
  }
}

class _UpdateProfile extends StatefulWidget {
  const _UpdateProfile({Key? key}) : super(key: key);

  @override
  State<_UpdateProfile> createState() => __UpdateProfileDialogState();
}

class __UpdateProfileDialogState extends State<_UpdateProfile> {

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final fullNameController = TextEditingController();
  final cityController = TextEditingController();
  final addressController = TextEditingController();
  final innController = TextEditingController();
  final kppController = TextEditingController();
  final ogrnController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    fullNameController.dispose();
    cityController.dispose();
    addressController.dispose();
    innController.dispose();
    kppController.dispose();
    ogrnController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              AppTextField(controller: emailController, labelText: "email"),
              const SizedBox(height: 16),
              AppTextField(controller: nameController, labelText: "Название Организации"),
              const SizedBox(height: 16),
              AppTextField(controller: fullNameController, labelText: "Полное название"),
              const SizedBox(height: 16),
              AppTextField(controller: cityController, labelText: "Город"),
              const SizedBox(height: 16),
              AppTextField(controller: addressController, labelText: "Адрес"),
              const SizedBox(height: 16),
              AppTextField(controller: innController, labelText: "ИНН"),
              const SizedBox(height: 16),
              AppTextField(controller: kppController, labelText: "КПП"),
              const SizedBox(height: 16),
              AppTextField(controller: ogrnController, labelText: "ОГРН"),
              const SizedBox(height: 16),
              AppTextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<AuthOrgCubit>().updateProfile(
                      email: emailController.text,
                      name: nameController.text,
                      fullName: fullNameController.text,
                      city: cityController.text,
                      address: addressController.text,
                      inn: innController.text,
                      kpp: kppController.text,
                      ogrn: ogrnController.text,
                    );
                  },
                  text: "Применить"),
            ],
          ),
        )
      ],
    );
  }
}

class _UpdatePassword extends StatefulWidget {
  const _UpdatePassword({Key? key}) : super(key: key);

  @override
  State<_UpdatePassword> createState() => __UpdatePasswordDialogState();
}

class __UpdatePasswordDialogState extends State<_UpdatePassword> {
  final newPasswordController = TextEditingController();
  final oldPasswordController = TextEditingController();

  @override
  void dispose() {
    newPasswordController.dispose();
    oldPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              AppTextField(
                  controller: oldPasswordController,
                  labelText: "Старый пароль"),
              const SizedBox(height: 16),
              AppTextField(
                  controller: newPasswordController, labelText: "Новый пароль"),
              const SizedBox(height: 16),
              AppTextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<AuthOrgCubit>().updatePassword(
                      oldPassword: oldPasswordController.text,
                      newPassword: newPasswordController.text,
                    );
                  },
                  text: "Применить"),
            ],
          ),
        )
      ],
    );
  }
}
