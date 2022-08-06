import 'package:flutter/material.dart';
import 'package:slaqa/constants/globals.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: hintText,
        labelStyle: TextStyle(color: Colors.white),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: GlobalVariables.textFieldBorderActiveColor)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        filled: true,
        fillColor: GlobalVariables.textFieldBgColor,
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter Your $hintText';
        }
        return null;
      },
    );
  }
}

class CustomPasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomPasswordTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool _isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: GlobalVariables.textFieldBgColor),
      obscureText: _isObsecure,
      enableSuggestions: false,
      autocorrect: false,
      controller: widget.controller,
      decoration: InputDecoration(
          labelText: widget.hintText,
          labelStyle: TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: GlobalVariables.textFieldBorderActiveColor)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          filled: true,
          fillColor: GlobalVariables.textFieldBgColor,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isObsecure = !_isObsecure;
              });
            },
            icon: Icon(_isObsecure ? Icons.visibility_off : Icons.visibility,
                color: GlobalVariables.primaryColor),
          )),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter Your ${widget.hintText}';
        }
        return null;
      },
    );
  }
}
