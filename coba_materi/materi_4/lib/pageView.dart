import 'package:flutter/material.dart';
import 'package:materi_4/kemaren.dart';
import 'package:materi_4/layout.dart';
import 'package:materi_4/tabar.dart';

class Page_View extends StatelessWidget {
  const Page_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Home(),
          M_1201222041(),
          kemaren(),
        ],
      ),
    );
  }
}