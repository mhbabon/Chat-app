import 'package:chatapp/domain/constrains/appcolors.dart';
import 'package:chatapp/repository/screens/profile/profilescreen.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  TextEditingController otpController = TextEditingController();
  OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 20,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.otpDarkMode
            : AppColors.otpLightMode,
      ),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.otpDarkMode
            : AppColors.otpLightMode,
      ),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              text: "Enter OTP",
              fontsize: 24,
              context: context,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 05),
            UiHelper.CustomText(
              text: "We have sent you an SMS with a code",
              fontsize: 14,
              context: context,
            ),
            UiHelper.CustomText(
              text: "to +880 189-3981-714",
              fontsize: 14,
              context: context,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Pinput(
                onCompleted: (value) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                autofocus: true,
                controller: otpController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {},
        child: Text(
          "Resend OTP",
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.otpTextDarkMode
                : AppColors.otpTextLightMode,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
