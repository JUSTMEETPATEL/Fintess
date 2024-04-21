import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SmoothiesPage extends StatefulWidget {
  const SmoothiesPage({super.key});

  @override
  State<SmoothiesPage> createState() => _SmoothiesPageState();
}

class _SmoothiesPageState extends State<SmoothiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Smoothies',
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
      ),
    );
  }
}