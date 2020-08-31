import 'package:flutter/material.dart';

class TopOffersCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 0.25 ,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        color: Colors.blue,
      ),
    );
  }
}
