import 'package:flutter/material.dart';
import 'package:uisecondproject/screen/dashboardpage.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({super.key});

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 0.0,
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  // Navigator.of(context).pop();
                },
              ),
              title: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  hintText: "Search",
                  suffixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 16.0),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.comment),
                  //color: Colors.black,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  //color: Colors.black,
                )
              ],
              bottom: const TabBar(
                  // indicator: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'Popular',
                    ),
                    Tab(
                      text: 'Top Rated',
                    ),
                    Tab(text: 'Nearest'),
                    Tab(text: 'Dessert'),
                    Tab(text: 'Milkshake'),
                  ])),
          body: const TabBarView(
            children: [
              DashboardPage(),
              Text('Popular'),
              Text('Top Rated'),
              Text('Nearest'),
              Text('Dessert'),
              Text('Milkshake'),
            ],
          ),
        ));
  }
}
