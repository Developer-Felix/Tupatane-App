import 'package:tupatane/models/user_model.dart';

class Message{
  final User sender;
  final time;
  final text;
  final isLike;
  final unRead;
  Message({required this.sender,this.time,this.text,this.isLike,this.unRead});
}

//YOU - curent user
final User currentUser = User(id: 0, name: "Felix",imageUrl: "assets/images/felix.jpg");

//Users
final User dad = User(id: 1, name: "Dad",imageUrl: "assets/images/dad.jpg");

final User beb = User(id: 2, name: "Beb",imageUrl: "assets/images/marion.jpg");

final User bytecity = User(id: 3, name: "Byte City",imageUrl: "assets/images/bytecity.png");

final User teamtechkenya = User(id: 4, name: "Teamtechkenya",imageUrl: "assets/images/tech.jpg");

final User silicon = User(id: 5, name: "Silicon Valley",imageUrl: "assets/images/silicon.jpg");

final User google = User(id: 6, name: "Google",imageUrl: "assets/images/google.jpg");


//Favorite contacts
List<User> favorites = [ dad, beb,bytecity,teamtechkenya,silicon ];


//Example messages in the chat screen
List<Message> chats = [
  Message(sender: dad,text: "Hae My son felix how is you are you still at shool or you went home",isLike: true,unRead: false,time: "5:30pm"),
  Message(sender: beb,text: "hae Beb",isLike: false,unRead: true,time: "5:30pm"),
  Message(sender: teamtechkenya,text: "hae you",isLike: false,unRead: false,time: "5:30pm"),
  Message(sender: bytecity,text: "hae you",isLike: false,unRead: true,time: "5:30pm"),
  Message(sender: teamtechkenya,text: "hae you",isLike: false,unRead: true,time: "5:30pm"),
  Message(sender: silicon,text: "hae you",isLike: false,unRead: true,time: "5:30pm"),
  Message(sender: google,text: "hae you",isLike: false,unRead: true,time: "5:30pm"),
  Message(sender: teamtechkenya,text: "hae you",isLike: false,unRead: false,time: "5:30pm"),
];