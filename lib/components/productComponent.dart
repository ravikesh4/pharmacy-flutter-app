import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductComponent extends StatefulWidget {
  final String title;
  final String quantitylabel;
  final String bestPrice;
  final String mrp;
  final String offer;
  final String imageUrl;
  const ProductComponent({
    Key key,
    this.title,
    this.quantitylabel,
    this.bestPrice,
    this.mrp,
    this.offer,
    this.imageUrl,
  }) : super(key: key);

  @override
  _ProductComponentState createState() => _ProductComponentState();
}

class _ProductComponentState extends State<ProductComponent> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 10,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, snapshot) {
          return Container(
            child: Card(
              margin: EdgeInsets.all(5),
              elevation: 3,
              child: Container(
                padding: EdgeInsets.all(10),
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        widget.imageUrl == null
                            ? Container(
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  'assets/images/pills.png',
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                ),
                              )
                            : Image.network(
                                widget.imageUrl,
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                              ),
                        Positioned(
                          right: 5,
                          top: 5,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                liked = !liked;
                              });
                            },
                            child: liked
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.orange,
                                  )
                                : Icon(
                                    Icons.favorite_border,
                                    color: Colors.grey,
                                  ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                        widget.title,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Container(
                      child: Text(
                        widget.quantitylabel,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text('Rs. ${widget.bestPrice}'),
                        ),
                        Column(
                          children: [
                            widget.mrp == null
                                ? Container()
                                : Container(
                                    padding: EdgeInsets.only(bottom: 2),
                                    child: Text(
                                      'Rs. ${widget.mrp}',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                            widget.offer == null
                                ? Container()
                                : Container(
                                    padding: EdgeInsets.only(bottom: 2),
                                    child: Text(
                                      '${widget.offer}',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
