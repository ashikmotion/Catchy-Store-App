import 'package:flutter/material.dart';

import '../../resources/constend.dart';
import '../../widgets/search_bar.dart';
import '../../widgets/users_list.dart';
import '../chat_details/chat_detailes.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  static const String id = 'chat-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          'Messages',
          style: kChatAppBarText,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Padding(
              padding:
                   EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: SearchBar(
                color:  Color(0xffF4F4F6),
                
              ),
            ),
            UserList(
              imageUrl:
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              userName: 'Meyri Carles',
              userMassage: 'Lorem ipsum dolor us was they amet...',
              userMassageCouunt: '5',
              time: '8.30 PM',
              onPress: () {
                Navigator.pushNamed(context, ChatDetailsScreen.id);
              },
            ),
            UserList(
              imageUrl:
                  'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              userName: 'Shreyu Neu',
              userMassage: 'Lorem ipsum dolor us was they amet...',
              userMassageCouunt: '12',
              time: '2:11 PM',
              onPress: () {},
            ),
            UserList(
              imageUrl:
                  'https://images.pexels.com/photos/1300402/pexels-photo-1300402.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              userName: 'Domnic Harris',
              userMassage: 'Lorem ipsum dolor us was they amet...',
              userMassageCouunt: '3',
              time: 'Yesterday',
              onPress: () {},
            ),
            UserList(
              imageUrl:
                  'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              userName: 'Khalid Hasan',
              userMassage: 'Lorem ipsum dolor us was they amet...',
              userMassageCouunt: '8',
              time: 'Wed',
              onPress: () {},
            ),
            UserList(
              imageUrl:
                  'https://images.pexels.com/photos/1121796/pexels-photo-1121796.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              userName: 'Tuhin Molla',
              userMassage: 'Lorem ipsum dolor us was they amet...',
              userMassageCouunt: '7',
              time: 'Tue',
              onPress: () {},
            ),
            UserList(
              imageUrl:
                  'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              userName: 'Billal Hossain',
              userMassage: 'Lorem ipsum dolor us was they amet...',
              userMassageCouunt: '6',
              time: '12 Jan',
              onPress: () {},
            ),
            UserList(
              imageUrl:
                  'https://images.pexels.com/photos/532220/pexels-photo-532220.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              userName: 'Ibn Adam',
              userMassage: 'Lorem ipsum dolor us was they amet...',
              userMassageCouunt: '18',
              time: '6 Feb',
              onPress: () {},
            ),
            UserList(
              imageUrl:
                  'https://images.pexels.com/photos/1121796/pexels-photo-1121796.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              userName: 'Tuhin Molla',
              userMassage: 'Lorem ipsum dolor us was they amet...',
              userMassageCouunt: '7',
              time: 'Tue',
              onPress: () {},
            ),
            UserList(
              imageUrl:
                  'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              userName: 'Billal Hossain',
              userMassage: 'Lorem ipsum dolor us was they amet...',
              userMassageCouunt: '6',
              time: '12 Jan',
              onPress: () {},
            ),
            UserList(
              imageUrl:
                  'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              userName: 'Shreyu Neu',
              userMassage: 'Lorem ipsum dolor us was they amet...',
              userMassageCouunt: '12',
              time: '2:11 PM',
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}