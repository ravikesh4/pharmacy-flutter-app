import 'package:flutter/material.dart';
import 'package:pharmacy/components/adsSlideCardComponent.dart';
import 'package:pharmacy/components/categoryShopComponent.dart';
import 'package:pharmacy/components/post_components.dart';
import 'package:pharmacy/components/productComponent.dart';
import 'package:pharmacy/components/top_articles.dart';

class ArticlesPage extends StatefulWidget {
  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Top Articles', style: theme.textTheme.headline5.copyWith(fontWeight: FontWeight.w800),),
                    Container(
                      height: 210,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: (){},
                              child: TopArticles(title: '5 fruits to boost your health',
                                category: 'Dietitian / Nutritionist',));
                        },),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Recent Posts', style: theme.textTheme.headline5.copyWith(fontWeight: FontWeight.w800),),
                    Container(
                      // height: 150,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: (){},
                              child: PostComponent(title: '5 fruits to boost your health', category: 'Dietitian / Nutritionist',));
                        },),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
