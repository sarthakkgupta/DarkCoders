import 'package:flutter/material.dart';
import './widgets/salecard.dart';

class BuyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5FFFD),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          SaleCard(
              'https://images-na.ssl-images-amazon.com/images/I/51H52tr3KHL._SX346_BO1,204,203,200_.jpg',
              'Let Us C',
              'Sarthak'),
          SaleCard('https://contents.mediadecathlon.com/p1737696/a3501ce26e3a12458171555d41d8ada5/p1737696.jpg', 'Cycle', 'Anshul'),
          SaleCard(
              'https://cdn.shopify.com/s/files/1/0025/0206/6242/products/U-CA42_Cryo-Apron_RGB_1024x1024.jpg?v=1587343387',
              'Apron',
              'Prince'),
          SaleCard(
              'https://5.imimg.com/data5/YM/QI/MY-32432037/sheet-holder-500x500.jpg',
              'Sheet Holder',
              'Madhur'),
        ],
      )),
    );
  }
}
