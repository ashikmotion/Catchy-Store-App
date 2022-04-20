import 'package:catchy_store/presentation/resources/routes.dart';
import 'package:flutter/material.dart';

import '../../resources/constend.dart';
import '../../widgets/button.dart';

class RecoveryPasswordScreen extends StatefulWidget {
  const RecoveryPasswordScreen({Key? key}) : super(key: key);

  static const String id = 'recovery-password-screen';

  @override
  State<RecoveryPasswordScreen> createState() => _RecoveryPasswordScreenState();
}

class _RecoveryPasswordScreenState extends State<RecoveryPasswordScreen> {
  String email = '';
 

  final emailControlar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Reset password',
                    style: kRecoveryTitle,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Please enter the account that you want to\nreset the password.',
                    style: kRecoveryDesc,
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 3, bottom: 5),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      autofocus: false,
                      decoration: kSigninTextFildDecuration.copyWith(
                        hintText: 'Email or mobile number',
                        suffixIcon: IconButton(
                          icon: Icon(
                            emailControlar.text.isNotEmpty ? Icons.close : null,
                            color: const Color(0xff818181),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      controller: emailControlar,
                      validator: (value) {
                        if (value == null) {
                          return 'Please enter Email';
                        } else if (!value.contains('@')) {
                          return 'Please Enter Valid Email';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            ButtonWidget(
              text: 'Continue',
              onTab: () {
                Navigator.pushNamed(context, Routes.verificationRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}