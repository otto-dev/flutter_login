import 'package:flutter/material.dart';

Size? getWidgetSize(GlobalKey key) {
  final renderBox = key.currentContext?.findRenderObject() as RenderBox?;
  return renderBox?.size;
}

showSuccessToast(
  BuildContext context,
  String title,
  String message, [
  Duration? duration,
]) {
  final snackBar = SnackBar(
    content: Text("$title: $message"),
    backgroundColor: Colors.green[400],
    duration: duration ?? const Duration(seconds: 4),
  );
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

showErrorToast(BuildContext context, String title, String message) {
  final snackBar = SnackBar(
    content: Text("$title: $message"),
    backgroundColor: Colors.red[400],
    duration: const Duration(seconds: 4),
  );
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(snackBar);

}
