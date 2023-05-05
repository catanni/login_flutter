import 'package:aula_9/aula_09/view/aula09_dashboard.dart';
import 'package:aula_9/aula_09/view/aula09_disciplinas.dart';
import 'package:flutter/material.dart';

class Aula09 extends StatefulWidget {
  const Aula09({super.key});

  @override
  State<Aula09> createState() => _Aula09State();
}

class _Aula09State extends State<Aula09> {
  var _itemSelecionado = 0;

  void _alterarBottomNav(int idx) {
    if (idx == 2) {
      Navigator.pop(context);
    }
    setState(() {
      _itemSelecionado = idx;
    });
  }

  final List<Widget> _subtelas = [
    Aula09Dashboard(),
    Aula09Disciplinas(),
  ];

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Center(
          child: _subtelas[_itemSelecionado],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _itemSelecionado,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
              label: 'Dashboard',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Disciplinas',
              icon: Icon(Icons.menu),
            ),
            BottomNavigationBarItem(
              label: 'Sair',
              icon: Icon(Icons.logout),
            ),
          ],
          onTap: _alterarBottomNav,
        ),
      ),
    );
  }
}
