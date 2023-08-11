// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubits.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class PageBienvenue extends StatefulWidget {
  const PageBienvenue({Key? key}) : super(key: key);
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
                  margin: const EdgeInsets.only(top: 140, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(
                            text: "GL5 Group 4",
                            size: 40,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          AppLargeText(
                            text: "Tris",
                            size: 50,
                          ),
                          AppText(
                            text: "Mountain",
                            color: Colors.black54,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            child: AppText(
                              text:
                                  "Les micros de montagne vous procurent une incroyable sensation de liberté ainsi que des tests d'endurance",
                              color: AppColors.textColor2,
                              size: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              BlocProvider.of<AppCubits>(context).getData();
                            },
                            child: Container(
                              width: 200,
                              child: Row(children: [
                                ResponsiveButton(
                                  width: 120,
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: List.generate(3, (indexDots) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            width: 8,
                            height: index == indexDots ? 25 : 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: index == indexDots
                                    ? AppColors.mainColor
                                    : AppColors.mainColor.withOpacity(0.3)),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
