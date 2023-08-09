// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';

class PageBienvenue extends StatefulWidget {
  @override
  _PageBienvenueState createState() => _PageBienvenueState();
}

class _PageBienvenueState extends State<PageBienvenue> {
  List images = ["welcome-one.png", "welcome-two.png", "welcome-three.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/' + images[index]),
                        fit: BoxFit.cover)),
                child: Container(
                  margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                    children: [
                      Column(
                        children: [AppLargeText(text: 'Voyages')],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
