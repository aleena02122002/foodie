import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacroject/components/colors.dart';
import 'package:hacroject/components/elevatedButton.dart';
import 'package:hacroject/components/textFeild.dart';
import 'package:hacroject/views/home%20page/homeView.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final userName = TextEditingController();

  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();

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
                  _text("Deliver Favourite Food", whites, 21.5),
                  Text("",style: TextStyle(color: Colors.white),),
                  Container(
                    height: 450,
                    width: 300,
                    decoration: BoxDecoration(
                        gradient: containerGradient.gradientColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        const Text(
                          "Signup",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: "SF"
                          ),
                        ),
                        MyTextField(
                            hintText: 'UserName',
                            controller: userName,
                            prefixIcon: Icons.person,
                            focusNode: _focusNode3),

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
                        const SizedBox(height: 20),
                        Elevatedbutton(text: "Create Account"),
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
                 _text("Already have an account?", whites, 14),
                  TextButton(onPressed: (){Get.back();}, child: Text("SIGN IN",style: TextStyle(color: Colors.white),),),

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
