import 'package:chatapp/domain/constrains/appcolors.dart';
import 'package:chatapp/repository/screens/chats/chatsscreen.dart';
import 'package:chatapp/repository/screens/contacts/contactsscreen.dart';
import 'package:chatapp/repository/screens/more/morescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 0;

  List<Widget> pages = [ContactsScreen(), ChatScreen(), MoreScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2_alt),
            label: "Contacts",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: "Chats",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
        currentIndex: currentIndex,
        onTap: (value){
          setState(() {
            currentIndex =value;
          });

        },
        backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.bottomDarkMode : AppColors.bottomLightMode,
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).brightness == Brightness.dark ? AppColors.iconDarkMode : AppColors.iconLightMode,
        ),
      ),
      body: IndexedStack(index: currentIndex, children: pages),
    );
  }
}
