import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tupatane/models/message_model.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
                        child: Container(
                          height: 300.0,
                          decoration:BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(30.0),
                             topRight: Radius.circular(30.0)
                          )
                                        
                         ),
                         child: ClipRRect(
                           borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(30.0),
                             topRight: Radius.circular(30.0)
                          ),
                           child: ListView.builder(
                             itemCount: chats.length,
                             itemBuilder: (BuildContext context, int index){
                               final Message chat = chats[index];
                               return Container(
                                 margin: EdgeInsets.only(top: 5.0,bottom: 5.0,right: 20.0),
                                 padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                                 //set here
                                 decoration: BoxDecoration(
                                   color: chat.unRead ? Color(0xFFFFEFEE) : Colors.white,
                                   borderRadius: BorderRadius.only(
                                     topRight: Radius.circular(20.0),
                                     bottomRight: Radius.circular(20.0),
                                     )
                                   ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   
                                   children: [
                                     Row(
                                       children: [
                                       CircleAvatar(radius: 35.0,backgroundImage: AssetImage(chat.sender.imageUrl),),
                                       SizedBox(width: 10.0,),
                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text(
                                             chat.sender.name,
                                             style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.grey),
                                             ),
                                           SizedBox(height:5.0),
                                           Container(
                                             width: MediaQuery.of(context).size.width * 0.45,
                                             child: Text(
                                               chat.text,
                                               style: TextStyle(
                                                 fontWeight: FontWeight.w600,
                                                 fontSize: 15.0,
                                                 color: Colors.blueGrey
                                                 ),
                                                 overflow: TextOverflow.ellipsis,
                                               ),
                                           ),
                                         ],
                                       ),
                                       ]
                                     ),
                                     Column(children: [
                                       Text(chat.time,style: TextStyle(color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.bold),),
                                       SizedBox(height: 5.0,),
                                      chat.unRead ? Container(
                                         width: 40,
                                         height: 20,
                                         decoration: BoxDecoration(
                                           color: Theme.of(context).primaryColor,
                                           borderRadius: BorderRadius.circular(30.0),
                                          ), 
                                          alignment: Alignment.center,                                    
                                         child: Text("new",style: TextStyle(color: Colors.white,fontSize: 12.0,fontWeight: FontWeight.bold),)
                                      //  ) : Text(""),
                                      ) : SizedBox.shrink(),
                                     ],)
                                   ],
                         
                                 ),
                               );
                             }
                             ),
                         ),
                        ),
                      );
  }
}