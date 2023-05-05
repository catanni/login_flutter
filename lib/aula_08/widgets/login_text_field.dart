import 'package:aula_9/aula_08/classes/loginDetails.dart';
import 'package:flutter/material.dart';

class Login_tect_field extends StatefulWidget {
  const Login_tect_field(
      {super.key, required this.loginType, required controller})
      : _controller = controller;

  final TextEditingController _controller;
  final LoginTypes loginType;
  @override
  State<Login_tect_field> createState() => _Login_tect_fieldState();
}

class _Login_tect_fieldState extends State<Login_tect_field> {
  var loginDetails = LoginDetails.loginDetails();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget._controller,
      decoration: InputDecoration(
        label: Text(loginDetails[widget.loginType]!.label),
        border: const OutlineInputBorder(),
        hintText: loginDetails[widget.loginType]!.hintText,
        prefixIcon: loginDetails[widget.loginType]!.prefixIcon,
      ),
    );
  }
}
