import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bca/BitcoinData.dart';

class BCAConverterScreen extends StatefulWidget {
  @override
  _BCAConverterScreenState createState() => _BCAConverterScreenState();
}

class _BCAConverterScreenState extends State<BCAConverterScreen> {
  String selectedCurrency = 'USD';

  //function for adding items from currencyList to dropdownMenu
  List<DropdownMenuItem> getDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for(String currency in currencyList) {
     var newItem =  DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
     dropdownItems.add(newItem);
    }
    return dropdownItems;
  }

  @override
  Widget build(BuildContext context) {
    getDropdownItems();
    return Scaffold(
      appBar: AppBar(
        title: Text('BCAConverter'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 240.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/bitcoin1.jpg'),
                    fit: BoxFit.fitWidth
                  )
                ),
              ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0)
                ),
                margin: EdgeInsets.only(top:10.0, left: 10.0, right: 10.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('1 Bitcoin = 500XAF', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.red),),
                ),
                color: Colors.white,
              ),
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0)
                ),
                margin: EdgeInsets.only(top:10.0, left: 10.0, right: 10.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('1 Bitcoin = 500XAF', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.red),),
                ),
                color: Colors.white,
              ),
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0)
                ),
                margin: EdgeInsets.only(top:10.0, left: 10.0, right: 10.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('1 Bitcoin = 500XAF', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.red),),
                ),
                color: Colors.white,
              ),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.only(top: 176.0),
              height: 60.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 40.0, right: 0.0),
                child: DropdownButton<String>(
                  iconEnabledColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  value: selectedCurrency,
                  underline: SizedBox(),
                  items: getDropdownItems(),
                  onChanged: (value) {
                    setState(() {
                      selectedCurrency = value;
                    });
                  },
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
