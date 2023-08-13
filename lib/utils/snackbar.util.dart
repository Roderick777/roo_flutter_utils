import 'package:flutter/material.dart';

void showSnackbar(BuildContext context, Widget content) {
  final snackBar = SnackBar(
    content: content,
    duration: const Duration(seconds: 3), // Duración de la aparición del SnackBar
    action: SnackBarAction(
      label: 'Cerrar',
      onPressed: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
