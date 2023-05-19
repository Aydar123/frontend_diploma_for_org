import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_state/auth_org_cubit.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/entities/org_entity/org_entity.dart';
import 'package:dcs_43_org_frontend/feature/dcs/ui/fields_screen.dart';
import 'package:dcs_43_org_frontend/feature/dcs/ui/org_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.orgEntity}) : super(key: key);

  final OrgEntity orgEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        title: const Text('Главное меню'),
        actions: [
          IconButton(
              onPressed: () => context.read<AuthOrgCubit>().logOut(),
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OrgScreen()));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.indigoAccent),
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(double.maxFinite, 40))),
                    child: const Text("Личный кабинет")),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      //FieldsScreen() потом заменить
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FieldsScreen()));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.indigoAccent),
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(double.maxFinite, 40))),
                    child: const Text("Сформировать поля")),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => GetDataScreen()));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.indigoAccent),
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(double.maxFinite, 40))),
                    child: const Text("Получить данные"))
              ],
            ),
          ),
        ),
      ),

    );
  }
}