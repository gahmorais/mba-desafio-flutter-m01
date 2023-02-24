import 'package:flutter/material.dart';
import 'package:flutter_project/routes/AppRoutes.dart';
import '../models/User.dart';

class InputImcDataStateful extends StatefulWidget {
  const InputImcDataStateful({super.key});

  @override
  State<StatefulWidget> createState() => InputImcData();
}

class InputImcData extends State<InputImcDataStateful> {
  final _formKey = GlobalKey<FormState>();
  User user = User(name: "", height: 0.0, weight: 0.0);
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
              decoration: const InputDecoration(labelText: "Nome"),
              onSaved: (value) {
                user.name = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Altura (m)"),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              onSaved: (value) {
                user.height = double.parse(value!);
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Peso (Kg)"),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              onSaved: (value) => {user.weight = double.parse(value!)},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _formKey.currentState?.save();
                      Navigator.of(context)
                          .pushNamed(AppRoutes.SHOW_DATA, arguments: user);
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
