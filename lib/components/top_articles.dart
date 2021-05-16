import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopArticles extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String title;

  TopArticles({Key key, this.imageUrl, this.category, this.title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: 250,
      height: 210 ,
      child: Card(
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset( imageUrl ?? 'assets/images/fruit-Doctor.png'),
            Container(
              padding: EdgeInsets.only(top: 5, left: 10),
              child: Text(category, style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey), overflow: TextOverflow.ellipsis,maxLines: 1,),
            ),
            Container(
              padding: EdgeInsets.only(top: 5, left: 10, bottom: 10),
              child: Text(title, style: Theme.of(context).textTheme.headline6, overflow: TextOverflow.ellipsis,maxLines: 2,),
            ),
          ],
        ),
      ),
    );
  }
}
