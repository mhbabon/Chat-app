import 'package:chatapp/domain/constrains/appcolors.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContacts = [
    {
      "img": "Avatar.png",
      "name": "Athalia Putri",
      "lastseen": "Last seen yesterday",
    },
    {"img": "Avatar (1).png", "name": "Erlan Sadewa", "lastseen": "Online"},
    {
      "img": "Avatar (2).png",
      "name": "Midala Huera",
      "lastseen": "Last seen 3 hours ago",
    },
    {
      "img": "Avatar.png",
      "name": "Athalia Putri",
      "lastseen": "Last seen yesterday",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
        title: UiHelper.CustomText(
          text: "Contacts",
          fontsize: 18,
          context: context,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add, size: 30)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomTextField(
              controller: searchController,
              text: "Search",
              textInputType: TextInputType.name,
              context: context,
              icon: Icon(Icons.search, color: AppColors.searchIcon),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ListTile(
                      leading: UiHelper.CustomImage(
                        imageUrl: arrContacts[index]["img"].toString(),
                      ),
                      title: UiHelper.CustomText(
                        text: arrContacts[index]["name"].toString(),
                        fontsize: 14,
                        context: context,
                        fontweight: FontWeight.w600,
                      ),
                      subtitle: UiHelper.CustomText(
                        text: arrContacts[index]["lastseen"].toString(),
                        fontsize: 12,
                        context: context,
                        color: Color(0xffadb5bd),
                      ),
                    ),
                  );
                },
                itemCount: arrContacts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
