import 'package:dcs_43_org_frontend/app/ui/app_loader.dart';
import 'package:dcs_43_org_frontend/app/ui/components/app_dialog.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_state/auth_org_cubit.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/field_state/additional_field_state/additional_field_cubit.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/org_field_state/org_field_cubit.dart';
import 'package:dcs_43_org_frontend/feature/dcs/ui/components/additional_field_item.dart';
import 'package:dcs_43_org_frontend/feature/dcs/ui/org_fields_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//OrgFieldCubit? orgFieldCubit;

class AdditionalFieldsScreen extends StatelessWidget {
  const AdditionalFieldsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        title: const Text('Дополнительные поля'),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AppDialog(
                    val1: "name",
                    onPressed: (v1) {
                      context.read<AdditionalFieldCubit>().addField(v1);
                    },
                  ),
                );
              },
              icon: const Icon(Icons.add_box)),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<AuthOrgCubit>().logOut();
              },
              icon: const Icon(Icons.exit_to_app)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: BlocConsumer<AdditionalFieldCubit, AdditionalFieldState>(
                  builder: (context, state) {
                    if (state.fieldList.isNotEmpty) {
                      return ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(110),
                          itemCount: state.fieldList.length,
                          itemBuilder: (context, index) {
                            return AdditionalFieldItem(
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
                  //orgFieldCubit?.fetchOrgFields();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OrgFieldsScreen()));
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

// import 'package:dcs_43_org_frontend/feature/dcs/domain/field_state/additional_field_state/additional_field_cubit.dart';
// import 'package:dcs_43_org_frontend/feature/dcs/ui/components/additional_field_item.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../app/ui/app_loader.dart';
//
// class AdditionalFieldsScreen extends StatelessWidget {
//   const AdditionalFieldsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AdditionalFieldCubit, AdditionalFieldState>(
//       listener: (context, state) {
//         // TODO: implement listener
//       },
//       builder: (context, state) {
//         if (state.fieldList.isNotEmpty) {
//           return ListView.builder(
//             shrinkWrap: true,
//             itemCount: state.fieldList.length,
//             itemBuilder: (context, index) {
//               return DItem(fieldEntity: state.fieldList[index]);
//             },
//           );
//         }
//         if (state.asyncSnapshot?.connectionState == ConnectionState.waiting) {
//           return const AppLoader();
//         }
//         return const SizedBox.shrink();
//       },
//     );
//   }
// }
