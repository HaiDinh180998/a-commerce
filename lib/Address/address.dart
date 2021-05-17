import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_shop/Config/config.dart';
import 'package:e_shop/Models/address.dart';
import 'package:e_shop/Orders//placeOrder.dart';
import 'package:e_shop/Widgets/customAppBar.dart';
import 'package:e_shop/Widgets/loadingWidget.dart';
import 'package:e_shop/Widgets/wideButton.dart';
import 'package:e_shop/Counters/changeAddresss.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'addAddress.dart';

class Address extends StatefulWidget
{
    final double totalAmount;
    const Address({Key key , this.totalAmount}) : super(key : key);
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address>
{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(),
        floatingActionButton: FloatingActionButton.extended(

          label: Text("Add New Address"),
          backgroundColor: Colors.pink,
          icon: Icon(Icons.add_location),
          onPressed: ()
          {

            Route route = MaterialPageRoute(builder: (c) => AddAddress());
            Navigator.pushReplacement(context, route);
          },
        ),
      ),

    );
  }
  noAddressCard() {
    return Card(
    );
  }
}

class AddressCard extends StatefulWidget
{
    final AddressModel model;
    final String addressId;
    final double totalAmount;
    final int currentIndex;
    final int value;


    AddressCard({Key key, this.model, this.currentIndex, this.addressId, this.totalAmount, this.value}) : super(key: key);




  @override
  _AddressCardState createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  @override
  Widget build(BuildContext context)
  {

    double screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      child: Card(

        color: Colors.pinkAccent.withOpacity(0.4),
        


      ),

    );
  }
}
class KeyText extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return Text("");
  }
}
