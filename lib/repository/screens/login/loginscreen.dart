import 'package:chatapp/domain/constrains/appcolors.dart' show AppColors;
import 'package:chatapp/repository/screens/otp/otpscreen.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginsScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              text: "Enter Your Phone Number",
              fontsize: 24,
              context: context,
              fontweight: FontWeight.bold,
              fontfamily: "bold",
            ),
            UiHelper.CustomText(
              text: "Please confirm your country code and enter ",
              fontsize: 14,
              context: context,
            ),
            UiHelper.CustomText(
              text: "your phone number",
              fontsize: 14,
              context: context,
            ),
            SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: phoneController,
              text: "Phone Number",
              textInputType: TextInputType.phone,
              context: context,
              icon: Icon(Icons.phone),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        buttonname: "Continue",
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OTPScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
