import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacroject/components/colors.dart';
import 'package:hacroject/components/elevatedButton.dart';
import 'package:hacroject/components/textFeild.dart';
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
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Image(image: AssetImage("assets/images/logo.png")),
                  ),
                  _text("Deliver Favourite Food", whites,21.0),
                  const SizedBox(height: 15),
                  Container(
                    height: 398,
                    width: 300,
                    decoration: BoxDecoration(
                        gradient: containerGradient.gradientColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: "SF"
                          ),
                        ),

                        MyTextField(
                            hintText: 'Email',
                            controller: emailController,
                            prefixIcon: Icons.email_rounded,
                            focusNode: _focusNode1),

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
                        const Elevatedbutton(text: "Sign in"),
                        _text("Or", red.withOpacity(0.5), 15.0),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 110.0,vertical: 10),
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
                  const SizedBox(height: 10),
                  _text("Don't have an account?", whites, 14.0),
                  TextButton(onPressed: (){Get.to(SignUpView());}, child: const Text("REGISTER",style: TextStyle(color: Colors.white),),)

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  _text(String text, Color colors,double size) {
    return Text(
      text,
      style: TextStyle(color: colors,fontSize: size,fontFamily: "SF"),
    );
  }
}
