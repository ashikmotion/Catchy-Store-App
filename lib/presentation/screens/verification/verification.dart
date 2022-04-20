import 'package:catchy_store/presentation/resources/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import '../../resources/constend.dart';
import '../../widgets/button.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  static const String id = 'varification-code-screen';

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Verification',
                    style: kVerificationTitle,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Please enter the verification code we just\nsent you on your email/mobile number.',
                    style: kVerificationDesc,
                  ),
                  const SizedBox(height: 25),
                  VerificationCode(
                    length: 4,
                    underlineWidth: 2.0,
                    underlineColor: Colors.black,
                    keyboardType: TextInputType.number,
                    underlineUnfocusedColor: Colors.black,
                    textStyle: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    onCompleted: (value) {},
                    onEditing: (value) {},
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      const Text(
                        'Didn\'t receive a code?',
                        style: TextStyle(
                          color: Color(0xff8482AC),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Resend',
                          style: TextStyle(
                            color: Color(0xffF82D7F),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            ButtonWidget(
              text: 'Continue',
              onTab: () {
                Navigator.pushNamed(context, Routes.createPasswordRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
