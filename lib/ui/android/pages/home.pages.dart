import 'package:flutter/material.dart';
import 'package:imc/blocs/imc.bloc.dart';
import 'package:imc/blocs/valores.mask.dart';
import 'package:imc/widget/util.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = ImcBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calcular IMC")),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Altura (cm)",
              ),
              controller: bloc.heightCtrl,
              keyboardType: TextInputType.number,
              inputFormatters: [ValoresMask(), maskFormatter],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Peso (kg)",
              ),
              keyboardType: TextInputType.number,
              controller: bloc.weightCtrl,
              inputFormatters: [maskFormatter],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              style: const TextStyle(color: Colors.red),
              bloc.result,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextButton(
              style: flatButtonStyle,
              child: const Text(
                "Calcular",
              ),
              onPressed: () {
                setState(() {
                  bloc.calculate();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
