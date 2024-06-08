import 'package:ferias_pet/src/components/text_field_custom_widget.dart';
import 'package:ferias_pet/src/modules/login/login_page.dart';
import 'package:flutter/material.dart';

class RecoveryPasswordPage extends StatefulWidget {
  const RecoveryPasswordPage({super.key});

  @override
  State<RecoveryPasswordPage> createState() => _RecoveryPasswordPageState();
}

class _RecoveryPasswordPageState extends State<RecoveryPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 50,
                  color: const Color(0xff1D5FB6),
                  child: const Text(
                    'Redefina sua senha',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const TextFormCustom(
                label: 'E-mail ou nome usuário',
                hintText: 'Insira o nome ou email do usuário',
                padding: 30,
              ),
              const TextFormCustom(
                label: 'Senha Atual',
                hintText: 'Insira a senha do usuário',
                padding: 30,
              ),
              const TextFormCustom(
                label: 'Nova senha',
                hintText: 'Insira a sua nova senha do usuário',
                padding: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      alignment: Alignment.center,
                      width: 145,
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      color: const Color(0xffF4981D),
                      child: const Text(
                        "Redefinir",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
