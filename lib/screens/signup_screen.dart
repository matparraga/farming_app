import 'package:flutter/material.dart';
import 'package:farming_app/constants.dart';
import 'package:farming_app/main.dart';
import 'package:farming_app/widgets/appbar_widget.dart';
import 'package:farming_app/widgets/button_widget.dart';
import 'package:farming_app/widgets/dropdown_button_widget.dart';
import 'package:farming_app/widgets/input_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  List<String> carreras = ["Ing. software", "Ing. TI", "Ing. ambiental"];
  String carreraInicial = "Ing. TI";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppbarWidget(),
        body: ListView(children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 140,
            child: Image.asset("assets/virtual-assistant.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: SizedBox(
                width: 500,
                child: Form(
                    child: Column(
                  children: [
                    Center(
                      child: DropdownButtonWidget(
                        hintText: "Seleccione su carrera",
                        items: carreras,
                      ),
                    ),
                    sizedBoxHeight,
                    const InputWidget(
                      inputHintText: "correo institucional",
                      inputPrefixIcon: Icon(Icons.person),
                    ),
                    sizedBoxHeight,
                    InputWidget(
                      inputHintText: "Contraseña",
                      inputPrefixIcon: const Icon(Icons.key),
                      inputSuffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.visibility_off)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InputWidget(
                      inputHintText: "Confirmar contraseña",
                      inputPrefixIcon: const Icon(Icons.key),
                      inputSuffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.visibility_off)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        width: 200,
                        child: ButtonWidget(
                            buttomText: "Registrate", onPressed: () {})),
                    sizedBoxHeight,
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      child: const Text("Ya tienes una cuenta?",
                          style: TextStyle(fontSize: 15)),
                    )
                  ],
                )),
              ),
            ),
          ),
        ]));
  }
}
