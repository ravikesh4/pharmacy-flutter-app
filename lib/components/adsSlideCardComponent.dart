import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget adsSlideCardComponent(
    BuildContext context, Color colors, String title, String description,
    {String imageUrl}) {
  return Container(
    height: 150,
    padding: EdgeInsets.only(left: 15, right: 5),
    margin: EdgeInsets.only(right: 15, top: 15),
    width: MediaQuery.of(context).size.width * 0.8,
    decoration: BoxDecoration(
      color: colors,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
              Container(
                child: Text(description,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.white, fontSize: 18)),
              ),
            ],
          ),
        ),
        imageUrl == null
            ? Container(
            alignment: Alignment.bottomRight,
            child: Image.asset('assets/images/ads1.png', width: 140, alignment: Alignment.bottomRight,))
            : Image.network(imageUrl, width: 140, alignment: Alignment.bottomRight,),
      ],
    ),
  );
}
