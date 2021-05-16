import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostComponent extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String title;
  final String profileUrl;
  final String name;

  PostComponent({Key key, this.imageUrl, this.category, this.title, this.name, this.profileUrl}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      height: 140,
      child: Card(
        elevation: 3,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset( imageUrl ?? 'assets/images/fruit-Doctor.png', width: MediaQuery.of(context).size.width *0.3, height: 200, fit: BoxFit.cover,),
            Container(
              padding: EdgeInsets.only(left: 5),
              width: MediaQuery.of(context).size.width * 0.60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 10),
                    child: Text(category, style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey), overflow: TextOverflow.ellipsis,maxLines: 1,),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 10, bottom: 10),
                    child: Text(title, style: Theme.of(context).textTheme.headline6, overflow: TextOverflow.ellipsis,maxLines: 2,),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset('assets/images/ads.jpg', width: 20,)),
                            Container(
                              child: Text('Sahana Kumari', style: Theme.of(context).textTheme.bodyText2,),
                            )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
