import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FullProductComponent extends StatefulWidget {
  final String title;
  final String quantitylabel;
  final String bestPrice;
  final String mrp;
  final String offer;
  final String imageUrl;

  const FullProductComponent({
    Key key,
    this.title,
    this.quantitylabel,
    this.bestPrice,
    this.mrp,
    this.offer,
    this.imageUrl,
  }) : super(key: key);

  @override
  _FullProductComponentState createState() => _FullProductComponentState();
}

class _FullProductComponentState extends State<FullProductComponent> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      child: Card(
        margin: EdgeInsets.all(5),
        elevation: 3,
        child: Container(
          padding: EdgeInsets.all(10),
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      widget.imageUrl == null
                          ? Container(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/images/products/product2.jpg',
                                width: 100,
                                height: 80,
                              ),
                            )
                          : Image.network(
                              widget.imageUrl,
                              width: 100,
                              height: 100,
                            ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 4),
                            child: Text(
                              widget.title,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          Container(
                            child: Text(
                              widget.quantitylabel,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(right: 10, top: 10),
                                child: Text('Rs. ${widget.bestPrice}'),
                              ),
                              Column(
                                children: [
                                  widget.mrp == null
                                      ? Container()
                                      : Container(
                                          padding: EdgeInsets.only(
                                              right: 10, top: 10),
                                          child: Text(
                                            'MRP: Rs. ${widget.mrp}',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 180,
                            child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                widget.offer == null
                                    ? Container()
                                    : Container(
                                        padding:
                                            EdgeInsets.only(right: 10, top: 20),
                                        child: Text(
                                          '${widget.offer}',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Add'),
                                    style: ElevatedButton.styleFrom(
                                      textStyle: const TextStyle(fontSize: 16),
                                      primary: theme.primaryColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(30.0)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
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
            ],
          ),
        ),
      ),
    );
  }
}
