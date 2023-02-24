import 'package:flutter/material.dart';
import 'package:flutter_project/components/TextComponent.dart';
import 'package:flutter_project/utils/calculateIMC.dart';
import '../models/Imc.dart';

class ShowImcData extends StatelessWidget {
  const ShowImcData({super.key});

  @override
  Widget build(BuildContext context) {
    final imc = ModalRoute.of(context)?.settings.arguments as Imc;
    final imcResult = calculateImc(imc.height, imc.weight);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultado IMC"),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextTitleComponent(
                text: 'Altura: ${imc.height.toStringAsFixed(2)} m'),
            const SizedBox(height: 30.0),
            TextTitleComponent(text: "Peso: ${imc.weight} Kg"),
            const SizedBox(height: 30.0),
            TextTitleComponent(text: "IMC: $imcResult")
          ])),
    );
  }
}
