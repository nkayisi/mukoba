import 'package:flutter/material.dart';

/*
My app imports
 */
import 'package:mukoba/ui/screens/jobs_screen.dart';
import 'package:mukoba/ui/screens/find_screen.dart';
// import 'package:mukoba/ui/screens/profil_screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  /* 
  [currentTab] variable which determine the active tab in the app 
  and it takes a integer as a value
  */
  int currentTab = 1;

  /*
  A [currentScreen] variable which takes a current tab as a widget
   */
  Widget currentScreen = const Find();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
      body: PageStorage(bucket: bucket, child: currentScreen),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 14.0, right: 14.0, bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  currentTab = 0;
                  currentScreen = const Job();
                });
              },
              elevation: 0.0,
              backgroundColor: currentTab == 0
                  ? const Color.fromRGBO(37, 181, 198, 1)
                  : const Color.fromRGBO(124, 158, 175, 1),
              child: Icon(
                Icons.card_membership,
                color: currentTab == 0
                    ? const Color.fromRGBO(255, 255, 255, 1)
                    : const Color.fromRGBO(255, 255, 255, .5),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  currentTab = 1;
                  currentScreen = const Find();
                });
              },
              elevation: 0.0,
              backgroundColor: currentTab == 1
                  ? const Color.fromRGBO(37, 181, 198, 1)
                  : const Color.fromRGBO(124, 158, 175, 1),
              child: Icon(
                Icons.find_replace,
                color: currentTab == 1
                    ? const Color.fromRGBO(255, 255, 255, 1)
                    : const Color.fromRGBO(255, 255, 255, .5),
              ),
            ),
            // FloatingActionButton(
            //   onPressed: () {
            //     setState(() {
            //       currentTab = 2;
            //       currentScreen = const Profil();
            //     });
            //   },
            //   elevation: 0.0,
            //   backgroundColor: currentTab == 2
            //       ? const Color.fromRGBO(37, 181, 198, 1)
            //       : const Color.fromRGBO(124, 158, 175, 1),
            //   child: const ImageIcon(
            //     AssetImage('assets/icons/account.png'),
            //     size: 10.0,
            //   ),
            // )
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromRGBO(37, 181, 198, 1),
              ),
              child: const ImageIcon(AssetImage('assets/icons/account.png')),
            )
          ],
        ),
      ),
    );
  }
}
