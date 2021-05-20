

import 'package:flutter/material.dart';

Widget onlineUser(BuildContext context,{String image, String name}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    width: 70,
    child: Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            image: DecorationImage(image: image == null ? AssetImage('assets/images/ads.jpg') : NetworkImage(image)),
            border: Border.all(color: Colors.green, width: 4),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text(name ?? 'Test user', style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.grey),),
        )
      ],
    ),
  );
}

Widget userList(BuildContext context,{Function onTap, String image, String name, String msg, String time}) {
  return Container(
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),

      onTap: onTap ?? null,
      title: Text(name ?? 'Doctor'),
      subtitle: Text(msg ?? 'Send hi...', overflow: TextOverflow.ellipsis,),
      leading: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        width: 60,
        child: Stack(
          children: [
            Positioned(
              right: 15,
              bottom: 15,
              child: Container(
                height: 5,
                width: 5,
                child: Icon(Icons.lock_clock, color: Colors.orange,),
              ),
            ),
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                image: DecorationImage(image: image == null ? AssetImage('assets/images/ads.jpg') : NetworkImage(image)),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ],
        ),
      ),
      trailing: Container(child: Text(time ?? '01:00 AM')),
    ),
  );
}

