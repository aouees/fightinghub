import 'package:fightinghub/constant/my_colors.dart';
import 'package:fightinghub/constant/screen_size.dart';
import 'package:fightinghub/screens/my_component/button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _appBarBackground(bool signed) {
    if (signed) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 8.0),
                      child: const CircleAvatar(
                        radius: 55,
                        backgroundColor: myWhiteColor,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: mySecondaryColor,
                        ),
                      ),
                    ),
                    const Text(
                      "Hello, {user name} start fight now",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: mySecondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myStadiumButton(
                        icon: Icons.person,
                        label: "Edit Profile",
                        onPressed: () {}),
                    const SizedBox(
                      height: 5,
                    ),
                    myStadiumButton(
                        icon: Icons.bar_chart,
                        label: "My Games",
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "are you ready \nto Fight ?",
                softWrap: false,
                style: TextStyle(
                  fontSize: 25.0,
                  color: mySecondaryColor,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myStadiumButton(
                        icon: Icons.login, label: "SignIn", onPressed: () {}),
                    const Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Divider(
                              color: mySecondaryColor,
                              thickness: 2,
                            ),
                          ),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(
                            fontSize: 15,
                            color: myWhiteColor,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Divider(
                              color: mySecondaryColor,
                              thickness: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    myStadiumButton(
                        icon: Icons.app_registration,
                        label: "SignUp",
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: getHeight(context) * 0.3,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Fighting Hub',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              expandedTitleScale: 2.0,
              centerTitle: true,
              background: Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: _appBarBackground(false),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text(''),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
