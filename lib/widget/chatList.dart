import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui/utils/info.dart';
import 'package:whatsapp_ui/widget/mymessage.dart';
import 'package:whatsapp_ui/widget/sendermessage.dart';

class chatList extends StatelessWidget {
  const chatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return mymessage(
              message: messages[index]['text'].toString(),
              time: messages[index]['time'].toString());
        } else {
               return sendermessage(
              message: messages[index]['text'].toString(),
              time: messages[index]['time'].toString());
        }
      },
      itemCount: messages.length,
    );
  }
}
