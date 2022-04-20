import 'package:flutter/material.dart';

import '../../resources/constend.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({Key? key}) : super(key: key);

  static const String id = 'chat_datails-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F6),
      appBar: AppBar(
        title: const Text(
          'Men\'n Fashion',
          style: kChatDetailsAppBarText,
        ),
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
      body: Column(
        children: const [
          SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Mon, Jan 11, 8:09 AM',
              style: TextStyle(color: Color(0xff8482AC)),
            ),
          ),
        ],
      ),
    );
  }
}