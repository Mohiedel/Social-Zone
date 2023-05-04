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
              const SizedBox(
                height: 35,
              ),
              showProgressBar == false
                  ? Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 38,
                        height: 65,
                        decoration: const BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            )),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              showProgressBar = true;
                            });
                          },
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Not Registered?',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            child: const Center(
                              child: Text(
                                'Sign up now',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )
                    ])
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
