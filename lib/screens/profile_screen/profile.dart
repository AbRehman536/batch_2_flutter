import 'package:batch_2/constants/app_assets.dart';
import 'package:batch_2/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(AppAssets.onBoarding1),
              ),
              Text("Morgan Mills"),
              Text("morganmill@gmail.com"),
              CustomButton(btnLabel: "Edit Profile", onPressed: (){}),
              SizedBox(height: 20,),
              _customListTile(
                  title: "Notifications",
                  icon: Image.asset(AppAssets.notificationIcon,width: 24,height: 24,)),
              Divider(),
              _customListTile(
                  title: "Privacy Policy",
                  icon: Icon(Icons.privacy_tip))
            ],
          ),
        ),
      ),
    );
  }
  Widget _customListTile({
    required String title,
    required Widget icon
}){
    return ListTile(
      leading: icon,
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios,size: 20,),
    );
  }

}
