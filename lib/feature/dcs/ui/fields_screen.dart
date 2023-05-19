import 'package:dcs_43_org_frontend/app/ui/app_loader.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_state/auth_org_cubit.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/field_state/field_cubit.dart';
import 'package:dcs_43_org_frontend/feature/dcs/ui/additional_fields_screen.dart';
import 'package:dcs_43_org_frontend/feature/dcs/ui/components/field_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FieldsScreen extends StatelessWidget {
  const FieldsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        title: const Text('Сформировать список полей'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<AuthOrgCubit>().logOut();
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: BlocConsumer<FieldCubit, FieldState>(
                  builder: (context, state) {
                    if (state.fieldList.isNotEmpty) {
                      return ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(110),
                          itemCount: state.fieldList.length,
                          itemBuilder: (context, index) {
                            return FieldItem(
                                fieldEntity: state.fieldList[index]);
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AdditionalFieldsScreen()));
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 50),
                  backgroundColor: Colors.indigoAccent,
                ),
                child: const Text("Далее")),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
