import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/call_model.dart';
class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {

  List<CallModel> callModels;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callModels = getCallModels();

  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callModels.length,
      itemBuilder: (context,index){
        return ListTile(

          leading: CircleAvatar(backgroundImage: NetworkImage(callModels[index].avatar_url),),
          title: Text(callModels[index].name),
          subtitle: Row(
            children: <Widget>[
              Icon(Icons.subdirectory_arrow_left),
              Text(callModels[index].callDate+","+callModels[index].callTime)
            ],
          ),
          trailing: Icon(Icons.call),

        );

      },
    );
  }

  List<CallModel> getCallModels(){

    return [

        new CallModel(
          name: "Samet",
          callDate: "15/09/19",
          callTime: "09:17",
          avatar_url: "https://www.w3schools.com/w3images/avatar2.png"),
      new CallModel(
          name: "Esra",
          callDate: "13/09/19",
          callTime: "17:56",
          avatar_url:
              "https://images.vexels.com/media/users/3/145922/preview2/eb6591b54b2b6462b4c22ec1fc4c36ea-female-avatar-maker.jpg"),
      new CallModel(
          name: "Merve",
          callDate: "12/09/19",
          callTime: "01:20",
          avatar_url:
              "https://images.vexels.com/media/users/3/145922/preview2/eb6591b54b2b6462b4c22ec1fc4c36ea-female-avatar-maker.jpg"),
      new CallModel(
          name: "Mert",
          callDate: "10/09/19",
          callTime: "13:47",
          avatar_url: "https://www.w3schools.com/w3images/avatar2.png"),

    ];

  }
}