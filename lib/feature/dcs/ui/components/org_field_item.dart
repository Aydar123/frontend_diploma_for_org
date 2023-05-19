import 'package:flutter/material.dart';

import '../../domain/entities/field_entity/field_entity.dart';

class OrgFieldItem extends StatelessWidget {
  const OrgFieldItem({super.key, required this.orgFieldEntity});

  //Использую FieldEntity, потому что в серверной части запрос
  //строиться отностильно таблицы FieldEntity
  final FieldEntity orgFieldEntity;

  //final OrgFieldEntity orgFieldEntity;

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
                  //orgFieldEntity.fieldId?.name ?? "",
                  orgFieldEntity.name,
                  style: const TextStyle(fontSize: 24),
                )),
          ),
        ],
      ),
    );
  }
}