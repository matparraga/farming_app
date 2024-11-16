import 'package:flutter/material.dart';
import 'package:farming_app/constants.dart';
import 'package:farming_app/screens/signup_screen.dart';
import 'package:farming_app/widgets/appbar_widget.dart';
import 'package:farming_app/widgets/button_widget.dart';
import 'package:farming_app/widgets/input_widget.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

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
                    SizedBox(
                        width: 200,
                        child: ButtonWidget(
                          buttomText: "Login",
                          onPressed: () {},
                        )),
                    sizedBoxHeight,
                    const Text(
                      "Olvidaste la contraseña?",
                      style: TextStyle(fontSize: 15),
                    ),
                    sizedBoxHeight,
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupScreen()));
                      },
                      child: const Text("No tienes cuenta? registrate",
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
