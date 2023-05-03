import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_zone/Widgets/input_text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailTextEditngController = TextEditingController();
  TextEditingController passwordTextEditngController = TextEditingController();
  bool showProgressBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'images/tiktok.png',
                width: 255,
              ),
              Text(
                'SOCIAL ZONE',
                style: GoogleFonts.anaheim(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'You will always have a friend here',
                style: GoogleFonts.anaheim(
                    fontSize: 25,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: InputTextWidget(
                    controller: emailTextEditngController,
                    labelString: 'Email',
                    iconData: Icons.email_outlined,
                    isObscure: false,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: InputTextWidget(
                  controller: passwordTextEditngController,
                  labelString: 'Password',
                  iconData: Icons.lock_outlined,
                  isObscure: true,
                ),
              ),

              showProgressBar == false ?
              Column(children: Container(width: MediaQuery.of(context).size.width,),
              )
                  :Container(),
            ],
          ),
        ),
      ),
    );
  }
}
