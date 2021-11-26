import 'package:book_my_event/models/colors.dart';
import 'package:book_my_event/screens/common/detail_box.dart';
import 'package:book_my_event/widgets/bottom_bar_user.dart';
import 'package:book_my_event/widgets/circular_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color colorActive = backgroundColor;
  Color colorDeactive = Colors.grey;
  DetailedBox box = DetailedBox();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Discover Event",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              Text(
                "Location >",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                color: Colors.black,
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
            ),
          ],
        ),
        bottomNavigationBar: container(),
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              colorActive = backgroundColor;
                              colorDeactive = Colors.grey;
                              setState(() {});
                            },
                            child: borderContainer(
                                colorActive, "Your Organization"),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                colorActive = Colors.grey;
                                colorDeactive = backgroundColor;
                              });
                            },
                            child:
                                borderContainer(colorDeactive, "Your Location"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 12.0,
                          left: 20,
                          right: 20,
                        ),
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const TextField(
                            cursorColor: Colors.red,
                            maxLines: 1,
                            style: TextStyle(fontSize: 17),
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              contentPadding: EdgeInsets.zero,
                              hintText: 'Search Events',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 9,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        box.boxDetailed(),
                        box.boxDetailed(),
                        box.boxDetailed(),
                        box.boxDetailed(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
