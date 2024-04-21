// ignore_for_file: sort_child_properties_last, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryPage extends StatelessWidget {

  final String data;
  final String path;
  final String heading;
  final String recepie;


  CategoryPage({super.key, required this.data, required this.path, required this.heading, required this.recepie});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: ListView(
        children: [
          _iconContainer(),
          SizedBox(height: 50,),
          Column(
            children: [
              Text(heading),
              SizedBox(height: 30,),
              ListView(
                children: [
                  Text(
                    recepie,
                    style: TextStyle(
                      color: Color(0xff7B6F72),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                    softWrap: true,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Center _iconContainer() {
    return Center(
          child: Container(
            height: 250,
            width: 250,
            child: SvgPicture.asset(path,height: 240,width: 240,),
          ),
        );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      title: Text(
        data,
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: (){
          Navigator.of(context).pop();
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          // ignore: sort_child_properties_last
          child: SvgPicture.asset(
            'assets/icons/Arrow - Left 2.svg',
            height: 20,
            width: 20,
          ),
          decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 38,
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 5,
              width: 5,
            ),
            decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
  }
}