//5.34
import 'package:dcs_43_org_frontend/app/ui/components/app_text_button.dart';
import 'package:dcs_43_org_frontend/app/ui/components/app_text_field.dart';
import 'package:flutter/material.dart';

class AppDialog extends StatefulWidget {
  const AppDialog({
    super.key,
    required this.val1,
    required this.onPressed,
  });

  final String val1;
  final Function(String v1) onPressed;

  @override
  State<AppDialog> createState() => _AppDialogState();
}

class _AppDialogState extends State<AppDialog> {
  final val1Controller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    val1Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                AppTextField(
                    controller: val1Controller, labelText: widget.val1),
                const SizedBox(height: 16),
                AppTextButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() == true) {
                        Navigator.pop(context);
                        widget.onPressed(val1Controller.text);
                      }
                    },
                    text: "Применить"),
              ],
            ),
          ),
        )
      ],
    );
  }
}