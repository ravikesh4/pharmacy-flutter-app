import 'package:flutter/material.dart';
import 'package:pharmacy/components/full_product_component.dart';
import 'package:pharmacy/utils/inputfield.dart';

class SearchListings extends StatefulWidget {
  const SearchListings({Key key}) : super(key: key);

  @override
  _SearchListingsState createState() => _SearchListingsState();
}

class _SearchListingsState extends State<SearchListings> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title: Container(
          color: theme.primaryColor,
          margin: EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              Expanded(child: InputField(
                prefixIcons: Icon(Icons.search),
              )),
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text('Cancel', style: TextStyle(
                  color: Colors.white
              ),),),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
          itemCount: 20,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return FullProductComponent(
              bestPrice: '300',
              mrp: '500',
              offer: '30% off',
              title: 'Dabur Chyawanprash',
              quantitylabel: 'Jar of 1KG paste',
            );
          },
        ),
      ),
    );
  }
}
