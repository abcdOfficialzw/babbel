import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutor/utils/constants/colors.dart';

import '../../../utils/constants/dimens.dart';
import '../widgets/appbar/streak_widget.dart';
import '../widgets/bottom_nav_bar/bottom_nav_bar_items.dart';
import '../widgets/today_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hi, John Doe",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        centerTitle: false,
        actions: [
          const StreakWidget(
            streaks: 1,
          ),
          SizedBox(
            width: Dimens.spacing.small,
          ),
          const Icon(
            Icons.person_outlined,
            color: CustomColors.black,
            size: 32,
          ),
          SizedBox(
            width: Dimens.padding.normal,
          ), // To provide edge padding
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: tabController,
              dividerHeight: 0,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              unselectedLabelColor: CustomColors.darkGrey,
              labelColor: CustomColors.black,
              indicatorColor: CustomColors.black,
              tabs: const [
                Tab(
                  // icon: Icon(Icons.cloud_outlined),
                  child: Text("Today"),
                ),
                Tab(
                  //icon: Icon(Icons.cloud_outlined),
                  child: Text("Learning plan"),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFEA7A4E),
        selectedLabelStyle: const TextStyle(
          color: Color(0xFFEA7A4E),
        ),
        selectedIconTheme: const IconThemeData(
          color: Color(0xFFEA7A4E),
          //fill: Color(0xFFF9DDD0)
        ),
        items: BottomNavBarItems.bottomNavBarItems,
      ),
      body: Padding(
        padding: EdgeInsets.all(Dimens.padding.normal),
        child: TabBarView(
          controller: tabController,
          children: const [
            TodayTab(),
            Center(
              child: Text("Coming soon!!"),
            ),
          ],
        ),
      ),
    );
  }
}
