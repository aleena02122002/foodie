import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacroject/components/colors.dart';
import 'package:hacroject/components/textFeild.dart';
import 'package:hacroject/views/home%20page/homeView.dart';
import 'package:hacroject/views/register%20page/register.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: colorGradient.colorsScaffold,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Image(image: AssetImage("assets/images/logo.png")),
                  ),
                  Container(
                    height: 398,
                    width: 300,
                    decoration: BoxDecoration(
                        gradient: containerGradient.gradientColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        const Text(
                          "Signin",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MyTextField(
                            hintText: 'Email',
                            controller: emailController,
                            prefixIcon: Icons.email_rounded,
                            focusNode: _focusNode1),
                        const SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          hintText: "Password",
                          controller: passwordController,
                          prefixIcon: Icons.lock,
                          focusNode: _focusNode2,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forget Password?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 40,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(Homeview());
                            },
                            child: const Text(
                              "Signin",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white38,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 110.0,vertical: 10),
                          child: Row(
                            children: [
                              Image(
                                      image: AssetImage(
                                          "assets/images/fbgoogle.png"))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("Don't have an account?",style: TextStyle(color: Colors.white),),
                  TextButton(onPressed: (){Get.to(SignUpView());}, child: Text("REGISTER",style: TextStyle(color: Colors.white),),)

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
