
import 'package:flutter/material.dart';
import 'package:tupatane/models/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children : [
                                   Text("Favorite Contacts",style: TextStyle(color: Colors.blueGrey,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 1.0),),
                                   IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz),iconSize: 30.0,color: Colors.blueGrey,)
                                ]
                                
                              ),
          ),
          Container(
            height: 120,
            // color: Colors.blue,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context,int index){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 39.0,
                        backgroundImage: AssetImage(favorites[index].imageUrl),
                      ),
                      SizedBox(height: 6.0,),
                      Text("${favorites[index].name}",
                      style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                );
              }),
          )
        ],
      ),
    );
  }
}