import 'package:flutter/material.dart';

import 'CusmonText.dart';

class Bottomnav extends StatelessWidget {
  const Bottomnav({Key key}) : super(key: key);
  final String image;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          // Image.asset('images/home.png',width: 46,height: 46,),
          // CustomText(text: 'home')
          Icon(Icons.supervised_user_circle_outlined,size: 35,),
          CustomText(text: 'user',size: 17,)
        ],
      ),
    );
  }
}


