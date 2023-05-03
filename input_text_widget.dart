import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final TextEditingController controller;
  final IconData? iconData;
  final String? assetRefrence;
  final String labelString;
  final bool isObscure;

  const InputTextWidget(
      {required this.controller,
      this.iconData,
      this.assetRefrence,
      required this.labelString,
      required this.isObscure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelString,
        prefixIcon: iconData != null
            ? Icon(iconData)
            : Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  assetRefrence!,
                  width: 15,
                ),
              ),
        labelStyle: const TextStyle(
          fontSize: 25,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: Colors.blueGrey,),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: Colors.blueGrey,),
        ),
      ),
      obscureText: isObscure,
    );
  }
}
