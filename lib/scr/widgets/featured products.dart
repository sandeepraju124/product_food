import 'package:flutter/material.dart';
import 'package:shopping/scr/commons.dart';
import 'package:shopping/scr/models/product.dart';
import 'package:shopping/scr/widgets/CusmonText.dart';



List<Product> productList = [
  Product(name: 'pulav biryani',image: '2.jpg',price: 47,rating: 3.7,wishlist: true),
  Product(name: 'egg',image: '3.jpg',price: 30,rating: 2.7,wishlist: true),
  Product(name: 'omlet',image: '4.jpg',price: 10,rating: 4.8,wishlist: true),
  Product(name: 'noodles',image: '5.jpg',price: 100,rating: 2.7,wishlist: true)
];

class Featured extends StatelessWidget {
  const Featured({Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(height: 220,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productList.length,
          itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 220,width: 200,
                // color: Colors.yellow,
                decoration: BoxDecoration(
                    color: white,
                    boxShadow: [BoxShadow(color: Colors.red[300],offset: Offset(1,1),blurRadius: 2)]
                ),
                child: Column(children: [
                  Image.asset('images/${productList[index].image}',height: 115,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: productList[index].name,size: 18,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [BoxShadow(color: Colors.red[100],offset: Offset(6,3),blurRadius: 9)]
                          ),
                          child: Icon(Icons.favorite_border_rounded,color: red,),),
                      )


                    ],),
                  Row(
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9),
                          child: CustomText(text: productList[index].rating.toString()),
                        ),
                        Icon(Icons.star,size: 20,color: red,),
                        Icon(Icons.star,size: 20,color: red,),
                        Icon(Icons.star,size: 20,color: red,),
                        Icon(Icons.star,size: 20,color: red,),
                        Icon(Icons.star,size: 20,color: grey,)],


                      ),
                      SizedBox(width: 15,),

                      CustomText(text: '\$${productList[index].price}',weight: FontWeight.bold,size: 13,)],
                  ),

                ],),
              ),
            );
          }),
    );
  }
}
