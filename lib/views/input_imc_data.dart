import 'package:flutter/material.dart';
import 'package:flutter_project/routes/AppRoutes.dart';

import '../models/Imc.dart';

class InputImcDataStateful extends StatefulWidget {
  const InputImcDataStateful({super.key});

  @override
  State<StatefulWidget> createState() => InputImcData();
}

class InputImcData extends State<InputImcDataStateful> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, double> _form = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cálculo IMC"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              decoration: const InputDecoration(labelText: "Altura (m)"),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              onSaved: (value) {
                _form['height'] = double.parse(value!);
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Peso (Kg)"),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              onSaved: (value) => {_form['weight'] = double.parse(value!)},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _formKey.currentState?.save();
                      final imc = Imc(
                          height: _form['height']!, weight: _form['weight']!);
                      Navigator.of(context)
                          .pushNamed(AppRoutes.SHOW_DATA, arguments: imc);
                    },
                    child: const Text("Mostrar resultado"))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
