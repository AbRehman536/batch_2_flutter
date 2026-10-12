import 'package:batch_2/constants/app_assets.dart';
import 'package:batch_2/constants/app_colors.dart';
import 'package:batch_2/utils/widgets/custom_button.dart';
import 'package:batch_2/utils/widgets/custom_textField.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Stack(
        children: [
          Image.asset(AppAssets.backgroundImage),
          Positioned(
              bottom: 1,
              child: Image.asset(AppAssets.backgroundImage)),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.carpenter_rounded,size: 50,)),
                SizedBox(height: 80,),
                Text("Login",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                ),),
                SizedBox(height: 10,),
                Text("Enter your emails and password",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff7C7C7C)
                ),),SizedBox(height: 40,),
                Text("Email",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xff7C7C7C)
                ),),
                CustomTextField(
                    hint: "imshuvo97@gmail.com"),
                SizedBox(height: 20,),
                Text("Password",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xff7C7C7C)
                ),),
                CustomTextField(
                  hint: "*********",
                  suffix: Icon(Icons.visibility_off_outlined),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: Text("Forget Password?"
                      ,style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black
                      ),
                    ))),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                      btnLabel: "Login", onPressed: (){}),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?"
                      ,style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),),
                    TextButton(onPressed: (){}, child: Text("SignUp"
                      ,style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.primaryColor
                      ),))
                  ],
                )
              ],
            ),
          ),
        ],
      )

    );
  }
}
