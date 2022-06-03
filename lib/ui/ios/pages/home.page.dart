import 'package:flutter/cupertino.dart';
import 'package:imc/blocs/imc.bloc.dart';
import 'package:imc/blocs/valores.mask.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = ImcBloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Calcular IMC"),
      ),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: "Altura (cm)",
              maxLength: 4,
              controller: bloc.heightCtrl,
              keyboardType: TextInputType.number,
              inputFormatters: [ValoresMask()],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: "Peso (kg)",
              maxLength: 4,
              controller: bloc.weightCtrl,
              keyboardType: TextInputType.number,
              inputFormatters: [ValoresMask()],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              bloc.result,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CupertinoButton.filled(
              onPressed: () {
                setState(() {
                  bloc.calculate();
                });
              },
              child: const Text(
                "Calcular",
              ),
            ),
          )
        ],
      ),
    );
  }
}
