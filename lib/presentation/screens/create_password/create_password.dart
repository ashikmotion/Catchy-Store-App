// Root 
import 'package:flutter/material.dart';

import '../../resources/constend.dart';
import '../../widgets/button.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  static const String id = 'create-new-password';

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  String email = '';
  bool _scure = false;

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
                    'Create new password',
                    style: kCreateTitleTextStyle,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Please enter the account that you want to\nreset the password.',
                    style: kCreateDescText,
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 3, bottom: 5),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      autofocus: false,
                      decoration: kSigninTextFildDecuration.copyWith(
                        hintText: 'New password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _scure ? Icons.visibility_off : Icons.visibility,
                            color: const Color(0xff818181),
                          ),
                          onPressed: () {
                            setState(() {
                              _scure = !_scure;
                            });
                          },
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      controller: emailControlar,
                      validator: (value) {
                        if (value == null) {
                          return 'Confirm password';
                        } else if (!value.contains('@')) {
                          return 'Please Enter Valid Email';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 3, bottom: 5),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      autofocus: false,
                      decoration: kSigninTextFildDecuration.copyWith(
                        hintText: 'Confirm password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _scure ? Icons.visibility_off : Icons.visibility,
                            color: const Color(0xff818181),
                          ),
                          onPressed: () {
                            setState(() {
                              _scure = !_scure;
                            });
                          },
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
              text: 'Save',
              onTab: () {
                
              },
            )
          ],
        ),
      ),
    );
  }
}