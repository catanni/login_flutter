import 'package:aula_9/aula_15/http/dio_client.dart';
import 'package:aula_9/aula_15/widgets/fipe_dropdown_button.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConsultaFipeView extends StatefulWidget {
  const ConsultaFipeView({super.key});

  @override
  State<ConsultaFipeView> createState() => _ConsultaFipeViewState();
}

class _ConsultaFipeViewState extends State<ConsultaFipeView> {
  late Dio _dio;
  List<String> _veiculos = ['Carros', 'Motos', 'Caminhoes'];
  String? _veiculo;

  void _serverError() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Center(
          child: Text('Erro no servidor. Refaça a alteração'),
        ),
      ),
    );
  }

  Future<void> mudarVeiculo(novo) async {
    var backup = _veiculo;
    setState(() {
      _veiculo = novo;
    });
    try {
      _dio.get('/${_veiculo!.toLowerCase()}/marcas');
    } on DioException catch (_) {
      _serverError();
      _veiculo = backup;
    }
    setState(() {});
  }

  @override
  void initState() {
    DioClient.getInstance().then((instance) => _dio = instance);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                children: [
                  const Text('Consulta à tabela Fipe'),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 50,
                          child: Text("Veículo"),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: FipeDropDownButton(
                            hint: 'Selecione um veículo',
                            value: _veiculo,
                            items: _veiculos
                                .map(
                                  (v) => DropdownMenuItem(
                                    value: v,
                                    child: Text(v),
                                  ),
                                )
                                .toList(),
                            onChangeFunc: mudarVeiculo,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
