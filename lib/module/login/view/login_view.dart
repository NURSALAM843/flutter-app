import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/core.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 174, 236, 249),
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    color: const Color.fromARGB(255, 53, 190, 188),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icon/icon.png",
                                width: 32.0,
                                height: 32.0,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(),
                          child: TextFormField(
                            initialValue: null,
                            decoration: const InputDecoration(
                              labelText: 'Username',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              suffixIcon: Icon(
                                Icons.abc_rounded,
                                color: Colors.white,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(),
                          child: TextFormField(
                            initialValue: null,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              suffixIcon: Icon(
                                Icons.password,
                                color: Colors.white,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.login_rounded),
                          label: const Text("Login"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12), // <-- Radius
                            ),
                          ),
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        InkWell(
                          onTap: () => Get.offAll(const RegistrasiView()),
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              "Registrasi",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
