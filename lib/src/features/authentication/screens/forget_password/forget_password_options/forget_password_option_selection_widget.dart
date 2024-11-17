import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPasswordOptionSelctionWidget extends StatelessWidget {
  final String title, subtitle;
  final IconData btnIcon;
  final VoidCallback onTap;
  const ForgetPasswordOptionSelctionWidget({
    required this.subtitle,
    required this.title,
    required this.btnIcon,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.grey.shade100,
        child: ListTile(
          leading: Icon(btnIcon,size: 40,),
          title: Text(title,style: TextStyle(fontFamily: "Roboto",),),
          subtitle: Text(subtitle,style: TextStyle(fontSize: 16),),
        ),
      ),
    );
  }
}