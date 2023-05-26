
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../components/InputDecoration.dart';
import '../../components/gradient_button.dart';
import '../../utils/style/text_style.dart';





class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  googleLogin() async {
    print("googleLogin method Called");
    GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      var result = await _googleSignIn.signIn();
      if (result == null) {
        return;
      }

      final userData = await result.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
      var finalResult =
      await FirebaseAuth.instance.signInWithCredential(credential);
      print("Result $result");
      print(result.displayName);
      print(result.email);
      print(result.photoUrl);
    } catch (error) {
      print(error);
    }
  }

  Future<void> logout() async {
    await GoogleSignIn().disconnect();
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    OverlayEntry loader;
    return SafeArea(
      child:
            Form(

              child: Scaffold(
                body:
               SingleChildScrollView(
                    physics: BouncingScrollPhysics(),

                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/logos/logo4.png",),),),),
                            ],
                          ),
                          SizedBox(
                            height: 60.0,
                          ),
                          Text(
                            'Welcome!',
                            style: genericTextStyle(
                              size: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Sign in your account',
                            style: text(
                              size: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          TextFormField(

                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.phone,
                            inputFormatters: <TextInputFormatter>[
                              LengthLimitingTextInputFormatter(10),
                              FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                            ],
                            validator: (String? input) {
                              if (input!.isEmpty) {
                                return 'Please enter phone number';
                              }
                              if (input.length < 10) {
                                return 'Phone Number Should be 10 Digits';
                              }

                              return null;
                            },
                            autofocus: false,
                            decoration: textFieldMainDecoration(
                                hintText: 'Phone Number',
                                icon: const Icon(
                                  Icons.phone_outlined,
                                )),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          GradientButton1(
                              context: context,
                              rWidth: 92,
                              rHeight: 6,
                              btnText: "Login",
                              onPress: () async {

                              }),
                          const SizedBox(
                            height: 20.0,
                          ),

                          GradientButton1(
                              context: context,
                              rWidth: 92,
                              rHeight: 6,
                              btnText: "log in with google",
                              onPress: () async {
                                await googleLogin();
                              }),

                        ],
                      ),
                    ),
                  ),
                ),
              ),

      );

  }


}


