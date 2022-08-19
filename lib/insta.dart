import 'package:flutter/material.dart';

class insta extends StatefulWidget {
  const insta({Key? key}) : super(key: key);

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Text("INSTAGRAM",style: TextStyle(fontSize: 15,color: Colors.black),),
        title: Text(
          "INSTAGRAM",
          style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'Pacifico'),
        ),
        actions: [
          Icon(Icons.add_circle_outline,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.mark_unread_chat_alt_rounded),
          ),
         // Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Column(
        children: [
         // SizedBox(height:30 ,),
          Container(
            margin: EdgeInsets.all(20),
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                story(),
                story(),
                story(),
                story(),
                story(),
                story(),
                story(),
                story(),
                story(),
                story(),
              ],
            ),
          ),
          Container(
            height: 500,
            width: 390,
            child: ListView(
              children: [
                posts(),
                posts(),
                posts(),
                posts(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container story() {
    return Container(
      margin: EdgeInsets.all(6),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.red,
            spreadRadius: 3,
          ),
        ],
      ),
      // child: FittedBox(
      //   fit: BoxFit.cover,
      //   child: Image.asset('images/chen.jpg'),
      // ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.asset('images/chen.jpg'),
      ),
    );
  }
  Container posts(){
    return Container(
      height: 430,
      width: 390,
      //color: Colors.grey,
      child: Column(
        children: [
          Container(
            height: 50,
            width:390 ,
            color: Colors.grey,
            child: Row(
              children: [
                SizedBox(width: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset('images/chen.jpg'),
                ),
                SizedBox(width: 5,),
                Text("Alyamama",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(width: 190,),
                Image.asset('images/options.png',width: 30,height: 30,),
              ],
            ),
          ),
          Image.asset('images/do2.jpg',width: 390,height: 250,),
          Container(
            height: 50,
            width:390 ,
            color: Colors.grey,
            child: Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.favorite_border,size: 35,color: Colors.white,),
                SizedBox(width: 10,),
                Icon(Icons.chat_bubble_outline_rounded,color: Colors.white,size: 35,),
                SizedBox(width: 10,),
                Icon(Icons.send,size: 35,color: Colors.white,),
                SizedBox(width: 210,),
                Image.asset('images/save.png',width: 35,height: 35,),
              ],
            ),
            
          ),
          Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
        ],
      ),

    );
  }
}
