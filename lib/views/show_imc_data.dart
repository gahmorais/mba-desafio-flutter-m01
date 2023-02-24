import 'package:flutter/material.dart';
import 'package:flutter_project/components/TextComponent.dart';
import 'package:flutter_project/models/Imc.dart';
import '../models/User.dart';

class ShowImcData extends StatelessWidget {
  const ShowImcData({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments as User;
    final imcResult = calculateImc(user.height, user.weight);
    final imcStatus = statusImc(imcResult);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultado IMC"),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextTitleComponent(text: 'Nome: ${user.name}'),
            const SizedBox(height: 30.0),
            TextTitleComponent(
                text: 'Altura: ${user.height.toStringAsFixed(2)}'),
            const SizedBox(height: 30.0),
            TextTitleComponent(
                text: "Peso: ${user.weight.toStringAsFixed(2)} Kg"),
            const SizedBox(height: 30.0),
            TextTitleComponent(text: "IMC: ${imcResult.toStringAsFixed(2)}"),
            const SizedBox(height: 30.0),
            TextTitleComponent(text: "Status: $imcStatus")
          ])),
    );
  }
}
