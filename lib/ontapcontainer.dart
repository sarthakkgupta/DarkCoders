import 'package:flutter/material.dart';

class Ont extends StatelessWidget {
  final String imageaddress;
  final String itemName;
  Ont(this.imageaddress,this.itemName);
  @override
  Widget build(BuildContext context) {
    final mqw = MediaQuery.of(context).size.width;
    final mqh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: mqh * 0.895,
            child: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Container(
                  width: mqw * 1,
                  height: mqh * .7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: new DecorationImage(
                          fit: BoxFit.scaleDown,
                          image: new NetworkImage(imageaddress))),
                ),
                Text('$itemName',style:TextStyle(fontSize: 100,))
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top:1.0,bottom: 0.0,left: 2,right: 2),
            child: Container(
               height: mqh * 0.10,
              child: RaisedButton(
                color: Color(0xff63FFDB),
                elevation: 10,
                onPressed: (){},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    shape: BoxShape.rectangle
                  ),
                  alignment: Alignment.center,
                  width: mqw*1,
                  child: Text('Make a Deal',style: TextStyle(
                    fontSize: 40,fontWeight: FontWeight.w400
                  ),),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
