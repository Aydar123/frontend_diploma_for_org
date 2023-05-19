import 'package:dcs_43_org_frontend/feature/dcs/domain/entities/field_entity/field_entity.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/field_state/field_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FieldItem extends StatelessWidget {
  const FieldItem({super.key, required this.fieldEntity});

  final FieldEntity fieldEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: Theme.of(context).colorScheme.surfaceVariant,
      // color: Colors.white,
      child: Row(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 200,
            height: 100,
            child: Center(
                child: Text(
                  fieldEntity.name,
                  style: const TextStyle(fontSize: 24),
            )),
          ),
          ElevatedButton(
              onPressed: () {
                context.read<FieldCubit>().addFieldInOrgFields(fieldEntity.id.toString());

                //Обязательно сделать как положено!
                const snackBar = SnackBar(content: Text("Поле успешно добавлено!"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text("Добавить")
          ),
        ],
      ),
    );
  }
}
