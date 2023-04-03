import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/colors.dart';
import 'package:whatsapp_ui/widget/chatList.dart';
import 'package:whatsapp_ui/widget/chatappbar.dart';
import 'package:whatsapp_ui/widget/webProfilebar.dart';
import 'package:whatsapp_ui/widget/webSearchbar.dart';

import '../widget/contactList.dart';

class webScreen extends StatelessWidget {
  const webScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                weprofilebar(),
                WebSearchBar(),
                ContactsList(),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/photo.jpg'), fit: BoxFit.cover)),
          child: Column(
            children: [
              chatappbar(),
              Expanded(child: chatList()),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: dividerColor,
                    ),
                  ),
                  color: chatBarMessage,
                ),
                child: Row(children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey,
                      )),
                        IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.attach_file_outlined,
                        color: Colors.grey,
                      )),
                      Expanded(child: Padding(padding: EdgeInsets.only(left: 10,right: 15,),child: 
                      TextField(decoration: InputDecoration(
                        filled: true,
                        fillColor: searchBarColor,
                        hintText: 'Type a message',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 0,style: BorderStyle.none),
                        ),
                        contentPadding: EdgeInsets.only(left: 20),
                      ))
                      ,)),
                      IconButton(icon:Icon(Icons.mic),onPressed: () {
                        
                      },),
                ]),
              )
            ],
          ),
        )
      ],
    ));
  }
}
