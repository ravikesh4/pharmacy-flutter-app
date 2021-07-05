import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryShopComponent extends StatefulWidget {
  final Color colors;
  final IconData icon;
  final String text;
  final Color iconColor;
  final bool leftText;
  const CategoryShopComponent({Key key, this.leftText = false, this.iconColor,this.colors, this.icon, this.text}) : super(key: key);

  @override
  _CategoryShopComponentState createState() => _CategoryShopComponentState();
}

class _CategoryShopComponentState extends State<CategoryShopComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.leftText ? Container(
        padding: EdgeInsets.all(10),
        color: Colors.grey[200],
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: widget?.colors, borderRadius: BorderRadius.circular(100)),
              child: Icon(
                widget.icon,
                color: widget?.iconColor,
                size: 35,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: widget?.text == null ? 0 : 5, horizontal: 5),
              child: Text(
                widget?.text ?? '',
              ),
            ),
          ],
        ),
      ) : Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                  color: widget?.colors, borderRadius: BorderRadius.circular(100)),
              child: Icon(
                widget.icon,
                color: widget?.iconColor,
                size: 35,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: widget?.text == null ? 0 : 5),
              child: Text(
                widget?.text ?? '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
