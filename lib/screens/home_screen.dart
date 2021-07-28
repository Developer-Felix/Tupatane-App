import 'package:flutter/material.dart';
import 'package:tupatane/widgets/categoryselector.dart';
import 'package:tupatane/widgets/favoritecontacts.dart';
import 'package:tupatane/widgets/recentchats.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar configurations and settings
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          ),
        centerTitle: true, 
        title: Text("Tupatane",style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),
        elevation: 0.0,
        actions: [
          IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          iconSize: 30.0,
          color: Colors.white,
          ),
        ],
        ),

        //Body sections
        body: Column(
          children: [
            CategorySelector(),
            Expanded(
              child: Container(

                //decorating my corners
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)
                  )
                  
                  ),

                  //On the favorite contacts
                  child: Column(
                    children: [
                      FavoriteContacts(),
                      RecentChats(),
                    ],
                  ),
                  
                
              ),
            )
          ],
          )
    );
  }
}