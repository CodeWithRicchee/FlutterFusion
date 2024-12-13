import 'package:animated_icon/animated_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Fusion"),
        actions: [
          Builder(
            builder: (context) => AnimateIcon(
              key: UniqueKey(),
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              iconType: IconType.continueAnimation,
              height: 70,
              width: 70,
              color: Colors.white,
              animateIcon: AnimateIcons.circlesMenu2,
            ),
          )
        ],
      ),
      endDrawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            bottomLeft: Radius.circular(20),
          ),
        ),
        width: Get.width / 1.5,
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white10,
              ),
              child: Text('Ricchee'),
            ),
            ListTile(
              title: Text('About'),
              onTap: null,
            ),
            ListTile(
              title: Text('Settings'),
              onTap: null,
            ),
          ],
        ),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white10),
              child: Image.network(
                'https://next-images.123rf.com/index/_next/image/?url=https://assets-cdn.123rf.com/index/static/assets/top-section-bg.jpeg&w=3840&q=75',
              ));
        },
      ),
    );
  }
}
