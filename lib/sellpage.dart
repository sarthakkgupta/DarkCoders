import 'package:flutter/material.dart';
class Product{
  String title;
  String description;
}
class SellPage extends StatelessWidget {
  void _showDialog(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Put up item for sale"),
          content: Column(children: <Widget>[
            TextField(
              textInputAction: TextInputAction.none,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // hintText: 'Enter your product title',
                  labelStyle: TextStyle(color: Colors.grey),
                  labelText: 'item title'),
              onChanged: (String value) {
              },
            ),
               Padding(
                 padding: const EdgeInsets.only(top:20.0),
                 child: TextField(
              textInputAction: TextInputAction.none,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    // hintText: 'Enter your product title',
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: 'Discrpiton'),
              onChanged: (String value) {
              },
            ),
               ),
          ]),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Save"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Color(0xff63FFDB),
      ),
    );
  }
}
