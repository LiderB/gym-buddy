import 'package:flutter/material.dart';
import 'package:personal_feed/views/login.dart';
import 'package:personal_feed/views/signUp.dart';
import 'package:personal_feed/util/styles.dart';
import 'package:personal_feed/util/colors.dart';
import 'package:personal_feed/util/auth.dart';

import '../util/analytics.dart';
class Welcome extends StatelessWidget {
  final AuthService _auth = AuthService();
  Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
              child: Image.network(
                  'https://pbs.twimg.com/profile_images/687300887971270656/_j-bPjAp_400x400.png'),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(0.0),

                child: RichText(
                    text: TextSpan(
                      text: "GYM BUDDY",
                      style: welcomeAppNameTextStyle,
                    )
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Expanded(
                  flex: 1,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Login()),);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 60),
                      child: Text(
                        'Login',
                        style: welcomeLoginandSignupButtonTextStyle,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                    ),
                  ),
                ),
              ),
            ),


            Center(
              child: Padding(
                padding: const EdgeInsets.all(0.0),

                child: RichText(
                    text: TextSpan(
                      text: "Dont have an account yet?",
                      style: welcomeDontHaveAccountTextStyle,
                    )
                ),
              ),
            ),


            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Expanded(
                  flex: 1,
                  child: OutlinedButton(
                    onPressed: () {
                      AppAnalytics.setScreenName("Sign Up");
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const MyApp()),
                      );

                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 55),
                      child: Text(
                        'Signup',
                        style: welcomeLoginandSignupButtonTextStyle,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Expanded(
                  flex: 1,
                  child: OutlinedButton(
                      onPressed: () async{
                        dynamic user = await _auth.signInWithGoogle();
                        if(user != null){

                          Navigator.pushNamedAndRemoveUntil(context,'/homePage', (route) => false);
                        }
                      },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 55),
                      child: Text(
                        'Google',
                        style: welcomeLoginandSignupButtonTextStyle,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

