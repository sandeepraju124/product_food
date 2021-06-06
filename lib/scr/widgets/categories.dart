import 'package:flutter/material.dart';
import 'package:shopping/scr/models/category.dart';
import 'package:shopping/scr/widgets/CusmonText.dart';

import '../commons.dart';

List<Category> categoriesList = [
  Category(name: 'Fast food',image: '7.png'),
  Category(name: 'non veg',image: 'meet.png'),
  Category(name: 'sea foof',image: 'sea food.png'),
  Category(name: 'veg',image: 'veg.png'),
  // Category(name: 'pizza',image: '3.jpg'),
  Category(name: 'ice cream',image: 'ice cream.png'),
];

class Categories extends StatelessWidget {
  const Categories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
        height: 130,
        child: ListView.builder(
            scrollDirection: Axis.horizontal ,
            itemCount: categoriesList.length,
            itemBuilder: (_,index){
              return
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: white,
                              boxShadow: [BoxShadow(color: Colors.red[100],offset: Offset(6,3),blurRadius: 9)]
                          ),
                          child:Padding(padding: EdgeInsets.all(5),
                            child:Image.asset('images/${categoriesList[index].image}',width: 90,height: 70,) ,)

                      ),
                      SizedBox(height: 6,),
                      CustomText(text: categoriesList[index].name)

                    ],),
                );
            })
    );
  }
}
