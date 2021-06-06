import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/scr/commons.dart';
import 'package:shopping/scr/widgets/CusmonText.dart';
import 'package:shopping/scr/widgets/categories.dart';
import 'package:shopping/scr/widgets/featured%20products.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: 'what would like to eat ?',size: 19, ),

              ),
              Stack(
                children: [
                  IconButton(icon: Icon(Icons.notifications_none), onPressed: (){}),
                  Positioned(
                    top: 18,
                    bottom: 18,
                    child: Container(

                      height: 10,width: 10,
                    decoration: BoxDecoration(color: red,borderRadius: BorderRadius.circular(20)),),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 8,),
          Container(
            // height: 100,width: 100,
            decoration: BoxDecoration(color: white,
                boxShadow: [
              BoxShadow(color: grey,offset: Offset(1,1),blurRadius: 4)

            ]),
          child: ListTile(
            leading: Icon(Icons.search,color: red,),
            title: TextField(decoration: InputDecoration(
                hintText: 'Find food and restaurent',border: InputBorder.none),),
            trailing: Icon(Icons.filter_list,color: red,),
          ),),
          SizedBox(height: 9,),
          Categories(),
          SizedBox(height: 5,),

          // Featured text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: CustomText(text: 'Featured',size: 25,colors: grey,),
          ),

          Featured(),

          // Popular text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: CustomText(text: 'Popular',size: 25,colors: grey,),
          ),
          SizedBox(height: 5,),
          
          Stack(
            children: [
              Padding(padding: EdgeInsets.all(8),
              child: ClipRRect(borderRadius: BorderRadius.circular(30),
                  child: Image.asset('images/2.jpg')),),

               
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                  child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(19)),
                      child: Icon(Icons.favorite_border_rounded))
                ),
                Container(
                  // color: Colors.white,
                  decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(8)),
                  height: 30,width: 70,
                child: Row(children: [
                  Icon(Icons.star,color: Colors.green,),
                  SizedBox(width: 4,),
                  Text('4.7')
                ],),)

              ],),

              // black shade
              Positioned.fill(child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.025),])
                  ),

                ),
              )),


              Positioned.fill(child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 8, 8, 8),
                    child: RichText(text: TextSpan(children: [
                      TextSpan(text: 'pancake\n',style: TextStyle(fontSize: 26 )),
                      TextSpan(text: 'by ',style: TextStyle(fontSize: 13 )),
                      TextSpan(text: 'pizza hut',style: TextStyle(fontSize: 14 )),
                    ]),)
                  ),
                  Text('\$12.99',style: TextStyle(color: Colors.white,fontSize: 18),)
                ],),
              ))

            ],
          )







        ],),
      ),
      bottomNavigationBar:Container(

        height: 75,
        // color: Colors.yellow,
        color: Colors.white,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // Image.asset('images/home.png',width: 46,height: 46,),
                // CustomText(text: 'home')
                Icon(Icons.home_rounded,size: 35,),
                CustomText(text: 'home')
              ],
            ),
          ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Image.asset('images/home.png',width: 46,height: 46,),
            // CustomText(text: 'home')
            Icon(Icons.supervised_user_circle_outlined,size: 35,),
            CustomText(text: 'user',size: 17,)
          ],
        ),
      ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // Image.asset('images/home.png',width: 46,height: 46,),
                  // CustomText(text: 'home')
                  Icon(Icons.shopping_bag,size: 35,),
                  CustomText(text: 'bag')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // Image.asset('images/home.png',width: 46,height: 46,),
                  // CustomText(text: 'home')
                  Icon(Icons.settings,size: 35,),
                  CustomText(text: 'setting')
                ],
              ),
            ),
        
      ],),) ,
    );
  }
}


