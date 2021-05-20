import 'package:flutter/material.dart';
import 'package:pharmacy/components/adsSlideCardComponent.dart';
import 'package:pharmacy/components/categoryShopComponent.dart';
import 'package:pharmacy/components/chat_component.dart';
import 'package:pharmacy/components/productComponent.dart';

class MessagesPages extends StatefulWidget {
  @override
  _MessagesPagesState createState() => _MessagesPagesState();
}

class _MessagesPagesState extends State<MessagesPages> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 5,
              margin: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 20),
                    child: Text('Online specialist', style: theme.textTheme.headline6,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    height: 100,
                    child: ListView.builder(
                      itemCount: 20,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () => print('user number $index'),
                            child: onlineUser(context));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: ListView.separated(
              itemBuilder: (context, index) => userList(context,
                  onTap: () => print('list $index')),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => Divider(height: 1,),
                  itemCount: 20
              ),
            )
          ],
        ),
      ),
    );
  }
}
