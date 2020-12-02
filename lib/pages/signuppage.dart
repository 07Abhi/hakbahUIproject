import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/widgetspage.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RegisterLine(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: FormFields(
                      inputType: TextInputType.number,
                      hintsText: "Customer Id",
                      iconsData: Icon(
                        Icons.contact_mail_outlined,
                        color: Colors.black,
                      ),
                      labelText: "Customer Id",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: FormFields(
                      inputType: TextInputType.emailAddress,
                      hintsText: "Email Address",
                      iconsData: Icon(
                        Icons.mail_outline,
                        color: Colors.black,
                      ),
                      labelText: "Email Address",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: FormFields(
                      hintsText: "Mobile Number",
                      inputType: TextInputType.number,
                      iconsData: Icon(
                        Icons.mobile_screen_share_outlined,
                        color: Colors.black,
                      ),
                      labelText: "Mobile Number",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: FormFields(
                      inputType: TextInputType.text,
                      hintsText: "First Name",
                      iconsData: Icon(
                        Icons.person_outline,
                        color: Colors.black,
                      ),
                      labelText: "First Name",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: FormFields(
                      inputType: TextInputType.text,
                      hintsText: "Last Name",
                      iconsData: Icon(
                        Icons.person_outline,
                        color: Colors.black,
                      ),
                      labelText: "Last Name",
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                    child: Container(
                      height: 60.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Center(
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Already a User?",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "LOGIN",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.yellow.shade800,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
