import 'package:flutter/material.dart';
import 'package:googleclone/discover/discover.dart';
import 'package:googleclone/shared/constants.dart';

class Tabs extends StatefulWidget {
  static String routeName = "/tabs";
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(vsync: this, length: 5);

    _controller.addListener(() {
      setState(() {});
    });

    super.initState();
    _controller.index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 55,
          decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            )),
          ),
          child: TabBar(
            controller: _controller,
            indicatorColor: Colors.transparent,
            unselectedLabelColor: kgrey,
            labelColor: kblue,
            labelStyle: const TextStyle(fontSize: 10),
            tabs: [
              Tab(
                icon: Icon(
                    _controller.index == 0
                        ? Icons.ac_unit
                        : Icons.ac_unit_outlined,
                    color: _controller.index == 0 ? kblue : kgrey),
                text: "Discover",
                iconMargin: EdgeInsets.only(top: 1, bottom: 1),
              ),
              Tab(
                icon: Icon(
                    _controller.index == 1
                        ? Icons.camera_alt_sharp
                        : Icons.camera_alt_outlined,
                    color: _controller.index == 1 ? kblue : kgrey),
                text: "Snapshot",
                iconMargin: EdgeInsets.only(top: 1, bottom: 1),
              ),
              Tab(
                icon: Icon(
                    _controller.index == 2
                        ? Icons.search
                        : Icons.search_outlined,
                    color: _controller.index == 2 ? kblue : kgrey),
                text: "Search",
                iconMargin: EdgeInsets.only(top: 1, bottom: 1),
              ),
              Tab(
                icon: Icon(
                    _controller.index == 3
                        ? Icons.bookmarks_rounded
                        : Icons.bookmarks_outlined,
                    color: _controller.index == 3 ? kblue : kgrey),
                text: "Collections",
                iconMargin: EdgeInsets.only(top: 1, bottom: 1),
              ),
              Tab(
                icon: Icon(
                    _controller.index == 4
                        ? Icons.more_horiz
                        : Icons.more_horiz_outlined,
                    color: _controller.index == 4 ? kblue : kgrey),
                text: "More",
                iconMargin: EdgeInsets.only(top: 1, bottom: 1),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: const [
            Discover(),
            // const Snapshot(),
            // const Search(),
            // const Collections(),
            // const More()
            Text("Hi"),
            Text("Hi"),
            Text("Hi"),
            Text("Hi")
          ],
        ),
      ),
    );
  }
}
