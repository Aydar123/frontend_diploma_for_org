import 'package:dcs_43_org_frontend/app/ui/app_loader.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_state/auth_org_cubit.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/org_field_state/org_field_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/org_field_item.dart';

class OrgFieldsScreen extends StatelessWidget {
  const OrgFieldsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        title: const Text('Сформированный список полей'),
        actions: [
          IconButton(
              onPressed: () {
                context.read<OrgFieldCubit>().fetchOrgFields();
              },
              icon: const Icon(Icons.refresh)
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<AuthOrgCubit>().logOut();
              },
              icon: const Icon(Icons.exit_to_app)
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: BlocConsumer<OrgFieldCubit, OrgFieldState>(
                  builder: (context, state) {
                    if (state.orgFieldList.isNotEmpty) {
                      return ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(110),
                          itemCount: state.orgFieldList.length,
                          itemBuilder: (context, index) {
                            return OrgFieldItem(
                                orgFieldEntity: state.orgFieldList[index],
                            );
                          });
                    }
                    if (state.asyncSnapshot?.connectionState ==
                        ConnectionState.waiting) {
                      return const AppLoader();
                    }
                    return const SizedBox.shrink();
                  },
                  listener: (context, state) {}),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  //Где брать организацию? Как вернуться на главное меню?
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen(orgEntity: orgEntity)));
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                    backgroundColor: Colors.indigoAccent,
                ),
                child: const Text("Готово")
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

