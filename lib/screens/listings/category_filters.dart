import 'package:flutter/material.dart';

class FilterBy extends StatefulWidget {
  const FilterBy({Key key}) : super(key: key);

  @override
  _FilterByState createState() => _FilterByState();
}

enum ProductTypeOptions { all, rx, tablets, syrup, vitamins, dental }

class _FilterByState extends State<FilterBy> {
  ProductTypeOptions _options = ProductTypeOptions.all;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.only(left: 15),
                child: Text('Product Type', style: theme.textTheme.headline5.copyWith(
                  fontWeight: FontWeight.w800
                ),),
            ),
            Container(
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                direction: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: ProductTypeOptions.all,
                            groupValue: _options,
                            onChanged: (val) {
                              setState(() {
                                _options = val;
                              });
                            },
                          ),
                          Text(
                            'All',
                            style: new TextStyle(fontSize: 17.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: ProductTypeOptions.rx,
                            groupValue: _options,
                            onChanged: (val) {
                              setState(() {
                                _options = val;
                              });
                            },
                          ),
                          Text(
                            'Rx Medicine',
                            style: new TextStyle(fontSize: 17.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: ProductTypeOptions.tablets,
                            groupValue: _options,
                            onChanged: (val) {
                              setState(() {
                                _options = val;
                              });
                            },
                          ),
                          Text(
                            'Tablets',
                            style: new TextStyle(fontSize: 17.0),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: ProductTypeOptions.syrup,
                            groupValue: _options,
                            onChanged: (val) {
                              setState(() {
                                _options = val;
                              });
                            },
                          ),
                          Text(
                            'Syrup',
                            style: new TextStyle(fontSize: 17.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: ProductTypeOptions.vitamins,
                            groupValue: _options,
                            onChanged: (val) {
                              setState(() {
                                _options = val;
                              });
                            },
                          ),
                          Text(
                            'Vitamins',
                            style: new TextStyle(fontSize: 17.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: ProductTypeOptions.dental,
                            groupValue: _options,
                            onChanged: (val) {
                              setState(() {
                                _options = val;
                              });
                            },
                          ),
                          Text(
                            'Dental',
                            style: new TextStyle(fontSize: 17.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 15),
              child: Text('Brands', style: theme.textTheme.headline5.copyWith(
                  fontWeight: FontWeight.w800
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
