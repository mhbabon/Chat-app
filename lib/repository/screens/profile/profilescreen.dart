import 'package:chatapp/domain/constrains/appcolors.dart';
import 'package:chatapp/repository/screens/bottomnavigation/bottomnavigationscreen.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
        title: UiHelper.CustomText(
          text: "Your Profile",
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imageUrl: "dark_profile.png")
                : UiHelper.CustomImage(imageUrl: "light_profile.png"),
            SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: firstNameController,
              text: "First Name (Required)",
              textInputType: TextInputType.name,
              context: context,
            ),
            SizedBox(height: 10),
            UiHelper.CustomTextField(
              controller: lastNameController,
              text: "Last Name (Required)",
              textInputType: TextInputType.name,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        buttonname: "Save",
        callback: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigationScreen() ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
