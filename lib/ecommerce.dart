import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Ecommerce extends StatefulWidget {
  const Ecommerce({ Key? key }) : super(key: key);

  @override
  _EcommerceState createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
  var lst = [1,2,3,4,5];
  var productimages = ["product1.jpg","product2.jpg","product3.jpg","product4.jpg","product5.jpg","product6.jpg","product7.jpg","product8.jpg",];
  var productnames = ["Iphone X","Iphone Pro","Probook","Apple Air","Gaming Pc","Gaming Keyboard","Mouse","Headphones"];
  var categories = ["Cars","Watches","Houses"];
  var categoryicons = [61458,59086,57420];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Ecom App UI",style: TextStyle(color: Colors.black),)),backgroundColor: Colors.white,actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.notifications,
        color: Colors.black,
      ),
      onPressed: () {},
    )
  ],
  ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            ListTile(title: Text("Items",style:TextStyle(fontSize: 25,fontWeight:FontWeight.bold)),trailing: Text("View More",style: TextStyle(color: Colors.purple),),),

            CarouselSlider(
        options: CarouselOptions(height: 200.0),
        items: [0,1,2,3,4,5,6,7].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                image: AssetImage(
                    "assets/"+productimages[i]),
                fit: BoxFit.fill,
              ),
                ),
              
              );
            },
          );
        }).toList(),
      ),
      



      ListTile(title: Text("More Categories",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold))),
      


  CarouselSlider(
        options: CarouselOptions(height: 50.0),
        items: [0,1,2].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(IconData(categoryicons[i], fontFamily: 'MaterialIcons'),color:Colors.purple),
                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: Column(
                            children: [
                              Text(categories[i], style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold),),
                              Text('20 Items', style: TextStyle(fontSize: 13.0),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              );
            },
          );
        }).toList(),
      ),











      ListTile(title: Text("Popular Items",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),trailing: Text("Show More",style: TextStyle(color: Colors.purple),),),
      
      GridView.count(
        shrinkWrap:true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing:10,
        children: List.generate(productimages.length,(index){
        return Padding(
          padding: const EdgeInsets.all(13.0),
          child: Container(
            height: 400,
            width: 400,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
              
               cardproductimage(productimages[index]),
            
            Text(productnames[index]),
             Row(
                children: [
                  Icon(Icons.star,color: Colors.amber,size:15) ,
                  Icon(Icons.star,color: Colors.amber,size:15) ,
                  Icon(Icons.star,color: Colors.amber,size:15) ,
                  Text("5.0 (23 Reviews)"),
                ],
             ),

            ],),),
        );
      },)
      )
      
          ],
        ),
      ),      
    );
  }
}




Widget cardproductimage(var imagelink){
   return Container(height: 100,width: 200, decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/"+imagelink),
                fit: BoxFit.fill,
              ),
                ),
              
            
              );
            
}