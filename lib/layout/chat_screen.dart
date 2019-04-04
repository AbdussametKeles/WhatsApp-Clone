import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatModel> chatModels;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chatModels = getChatModels();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatModels.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(chatModels[index].avatar_url),
          ),
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(chatModels[index].name),
              new Text(chatModels[index].chatTime),
            ],
          ),
          subtitle: new Text(chatModels[index].message),
        );
      },
    );
  }

  List<ChatModel> getChatModels() {
    return [
      new ChatModel(
          name: "Samet",
          chatTime: "15/09/19",
          message: "Hello WhatsApp!",
          avatar_url: "https://www.w3schools.com/w3images/avatar2.png"),
      new ChatModel(
          name: "Esra",
          chatTime: "13/09/19",
          message: "Hello WhatsApp!",
          avatar_url:
              "https://images.vexels.com/media/users/3/145922/preview2/eb6591b54b2b6462b4c22ec1fc4c36ea-female-avatar-maker.jpg"),
      new ChatModel(
          name: "Merve",
          chatTime: "12/09/19",
          message: "Hello WhatsApp!",
          avatar_url:
              "https://images.vexels.com/media/users/3/145922/preview2/eb6591b54b2b6462b4c22ec1fc4c36ea-female-avatar-maker.jpg"),
      new ChatModel(
          name: "Mert",
          chatTime: "10/09/19",
          message: "Hello WhatsApp!",
          avatar_url: "https://www.w3schools.com/w3images/avatar2.png"),
    ];
  }
}
