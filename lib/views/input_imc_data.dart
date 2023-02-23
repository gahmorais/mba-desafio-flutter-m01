import 'package:flutter/material.dart';

class InputImcData extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  InputImcData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cálculo IMC"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: Column(children: [
            TextFormField(
              decoration: const InputDecoration(labelText: "Altura (m)"),
              onSaved: (value) => print(value),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Peso (Kg)"),
              onSaved: (value) => print(value),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){}, child: const Text("Calcular"))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
