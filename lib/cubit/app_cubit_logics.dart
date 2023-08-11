import 'package:flutter/material.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';
import 'package:travel_app/cubit/app_cubits.dart';
import 'package:travel_app/pages/navpages/home_page.dart';
import 'package:travel_app/pages/page_bienvenue.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key?key}):super(key:key );

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder:(context, states){
          if (state is BienvenueState){
            return PageBienvenue();
          }
        
          if { (state is LoadedState){
            return Center(child: CircularProgressIndicator(),);
          }
          if { (state is LoadedState){
            return HomePage();
          }
          else{
            return Container();
          }

        }
      ),
    );
  }
}