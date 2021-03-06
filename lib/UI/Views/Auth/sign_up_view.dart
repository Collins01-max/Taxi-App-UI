import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app_ui/UI/Widgets/custom_button.dart';
import 'package:taxi_app_ui/UI/Widgets/custom_field.dart';
import 'package:taxi_app_ui/Utils/constants.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                color: Colors.black,
                alignment: Alignment.center,
                child: Center(
                  child: Column(
                    children: [
                      Constants.HEIGHTXL,
                      Icon(Icons.local_taxi, size: 50, color: Colors.white),
                      Text("SIGN UP",
                          style: GoogleFonts.grenze(color: Colors.white))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomField(
                title: "Full-Name",
              ),
              CustomField(
                title: "Email",
              ),
              CustomField(
                title: "Password",
              ),
              CustomField(
                title: "Phone Number",
              ),
              Constants.HEIGHTXL,
              CustomButton(
                function: () {
                  Navigator.pushNamed(context, "homeView");
                },
                title: "Sign Up",
              ),
              Constants.HEIGHTXL,
              Padding(
                padding: Constants.PADDING,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.grenze(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: Constants.PADDING,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "loginView");
                      },
                      child: Text(
                        "Have an account already? Login",
                        style: GoogleFonts.grenze(
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
