import 'package:flutter/material.dart';

class LoginType extends StatefulWidget {
  const LoginType(
      {required this.selectedList, required this.alterarLogin, super.key});
  final List<bool> selectedList;
  final Function(int) alterarLogin;

  @override
  State<LoginType> createState() => _LoginTypeState();
}

class _LoginTypeState extends State<LoginType> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text('Logar com'),
        const SizedBox(
          width: 8,
        ),
        ToggleButtons(
          borderRadius: BorderRadius.circular(10),
          isSelected: widget.selectedList,
          onPressed: widget.alterarLogin,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Email'),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('CPF'),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Telefone'),
            )
          ],
        )
      ],
    );
  }
}
