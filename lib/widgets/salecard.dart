import 'package:flutter/material.dart';
import 'package:s/ontapcontainer.dart';


class SaleCard extends StatelessWidget {
   void _navigate(BuildContext context) {
  
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Ont(imageaddress,title),
        ));
  }
 final String imageaddress;
final String title;
final String postedby;
 SaleCard(this.imageaddress,this.title,this.postedby);
  @override
  Widget build(BuildContext context) {
    final mqw = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(.2),
      child: GestureDetector(
        onTap: (){_navigate(context);},
              child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          elevation: 0.2,
          child: Container(
            width: mqw * 0.95,
         height: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: mqw * 0.30,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: new DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: new NetworkImage(
                                imageaddress))),
                  ),
                ),
                SizedBox(width: mqw * 0.05),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'posted by $postedby',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
