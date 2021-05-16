import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/utils/customButton.dart';

class OrderComponent extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String title;
  final String orderId;
  final double price;
  final String status;
  final String date;
  OrderComponent({Key key, this.imageUrl, this.category, this.title, this.orderId, this.price, this.status, this.date}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 190,
      child: Card(
        elevation: 3,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset( imageUrl ?? 'assets/images/fruit-Doctor.png', width: MediaQuery.of(context).size.width *0.3, height: 100, fit: BoxFit.cover,),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5, left: 10, bottom: 10),
                        child: Text(title, style: Theme.of(context).textTheme.headline6, overflow: TextOverflow.ellipsis,maxLines: 2,),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 0, left: 10),
                        child: Text(category, style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey), overflow: TextOverflow.ellipsis,maxLines: 1,),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 5, left: 5),
                              child: Text('Order Id: $orderId', style: Theme.of(context).textTheme.bodyText2,),
                            ),
                            Container(
                              child: Text('\$ $price', style: Theme.of(context).textTheme.bodyText2,),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('$date', style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 14),),
                Text('$status', style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.green),),
                CustomButton(onPressed: () {},
                child: Text('Track'),
                  width: 100,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
