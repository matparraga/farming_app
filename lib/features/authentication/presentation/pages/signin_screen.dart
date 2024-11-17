import 'package:flutter/material.dart';
import 'package:farming_app/core/constants/constants.dart';
import 'package:farming_app/features/authentication/presentation/pages/signup_screen.dart';
import 'package:farming_app/features/common/widgets/appbar_widget.dart';
import 'package:farming_app/features/common/widgets/button_widget.dart';
import 'package:farming_app/features/common/widgets/input_widget.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: const AppbarWidget(),
        body: ListView(children: [
      const SizedBox(
        height: 100,
      ),
      SizedBox(
        height: 150,
        child: Image.asset("assets/virtual-assistant.png"),
      ),
      const SizedBox(
        height: 20,
      ),
      const Center(
        child: const Text(
          "Bienvenido a",
          style: TextStyle(fontSize: 25),
        ),
      ),
      const Center(
        child: const Text(
          "greenside",
          style: TextStyle(fontSize: 25, color: lightEsmeraldColor),
        ),
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
                  inputHintText: "Correo electrónico",
                  inputPrefixIcon: Icon(Icons.person),
                ),
                sizedBoxHeight,
                InputWidget(
                  inputHintText: "Contraseña",
                  inputPrefixIcon: const Icon(Icons.key),
                  inputSuffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.visibility_off)),
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
