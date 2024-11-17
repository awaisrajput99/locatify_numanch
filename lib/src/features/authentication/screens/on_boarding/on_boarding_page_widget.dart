import 'package:flutter/material.dart';

import '../../models/model_on_boarding.dart';
class onBoardingWidget extends StatelessWidget {
  final onBoardingModel model;
  const onBoardingWidget({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8),
      color: model.bgColor,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: size.height*0.19),
          Image.asset(model.image,height: size.height*0.34,),
          SizedBox(height: size.height*0.03),
          Column(
            children: [
              Text(model.title,style: const TextStyle(fontSize: 24, fontFamily: "Roboto", fontWeight: FontWeight.w700),),
              Text(model.subtitle,textAlign: TextAlign.center,style: const TextStyle(fontSize: 16),),
            ],
          ),
          SizedBox(height: size.height*0.03),
          Text(model.counterText,style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17),),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}