import 'package:flutter/material.dart';
import 'package:locatify/src/constants/image_strings.dart';
import '../../../constants/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // automaticallyImplyLeading: false,

          backgroundColor: MdAppColors.mdPrimaryColor,
          title: const Text(
            "Notifications",
            style: TextStyle(
                fontFamily: "Roboto", fontSize: 35, color: Colors.white),
          )),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: 10, // Number of items in the list
          itemBuilder: (context, index) {
            return const Card(
              elevation: 4,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  contentPadding: EdgeInsets.all(2),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(MdImages.mdNotification),
                  ),
                  title: Text(
                    "Jenna Ortega",
                    style: TextStyle(fontFamily: "Roboto"),
                  ),
                  subtitle: Text("Jenna sent you a picture."),
                  trailing: Text("6:54pm",style: TextStyle(fontFamily: "Roboto"),),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
