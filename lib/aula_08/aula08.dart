import 'package:aula_9/aula_08/classes/loginDetails.dart';
import 'package:aula_9/aula_08/widgets/login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'widgets/login_type.dart';

class Aula08 extends StatefulWidget {
  const Aula08({super.key});

  @override
  State<Aula08> createState() => _Aula08State();
}

class _Aula08State extends State<Aula08> {
  bool _passwordView = true;
  late final TextEditingController _userController;
  late final TextEditingController _passwordController;
  List<bool> _selectedList = [true, false, false];
  LoginTypes typeLogin = LoginTypes.email;
  var _memory = false;

  @override
  void initState() {
    _userController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _userController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _visibilityView() {
    setState(() {
      _passwordView = !_passwordView;
    });
  }

  void _alterarLogin(int idx) {
    setState(() {
      typeLogin = LoginTypes.values[idx];
      _selectedList =
          _selectedList.mapIndexed((pos, val) => pos == idx).toList();
    });
  }

  void _test() {
    debugPrint('Usuario: ${_userController.text}');
    debugPrint('Senha: ${_passwordController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                const Image(
                  image: AssetImage('assets/images/IFSP_Logo.jpg'),
                  width: 200,
                ),
                const SizedBox(
                  height: 8,
                ),
                LoginType(
                  selectedList: _selectedList,
                  alterarLogin: _alterarLogin,
                ),
                const SizedBox(
                  height: 8,
                ),
                Login_tect_field(
                    loginType: typeLogin, controller: _userController),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                    controller: _passwordController,
                    obscureText: _passwordView,
                    decoration: InputDecoration(
                      label: const Text('Senha'),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: _visibilityView,
                        icon: Icon(_passwordView
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    )),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Memorizar dados'),
                    const SizedBox(
                      width: 8,
                    ),
                    Switch(
                        value: _memory,
                        onChanged: (value) {
                          setState(() {
                            _memory = value;
                          });
                        })
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.75, 30),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/aula09',
                        arguments: {'nome': 'Dourado'});
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
