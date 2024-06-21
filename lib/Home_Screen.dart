import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials/Screen_One.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> fruitLsit = [
    'orange',
    'Apple',
    'Mangoes',
    'Banana'
  ]; // list for favourite or unfavouite
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('GetX Tutorials')),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            // SnackBAR.......................................
            FloatingActionButton(onPressed: () {
              Get.snackbar('GetX', 'HI THERE!');
            }),

            // DIALOG ALERT AND BOTTOM SHEET........................................
            Card(
              child: ListTile(
                title: Text('GetX Dialog Alert'),
                subtitle: Text('Dialog Alert with GetX'),
                onTap: () {
                  Get.defaultDialog(
                    title: 'Delete Chat',
                    contentPadding: EdgeInsets.all(20),
                    middleText: 'Are you Sure you want to delete this chat',
                    textConfirm: ' Yes', // built in
                    textCancel: 'No', // built in
                    // confirm: TextButton(onPressed: (){Navigator.pop(context);
                    // Get.back
                    //}, child: Text('Yes')), // created
                    // cancel:  TextButton(onPressed: (){Navigator.pop(context);}, child: Text('NO')), // created
                  );
                },
              ),
            ),

            Card(
              child: ListTile(
                title: Text('GetX Bottom Sheet '),
                subtitle: Text(' GetX  open bottom sheet'),
                onTap: () {
                  Get.bottomSheet(Container(
                    decoration: BoxDecoration(color: Colors.lightBlue),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                          leading: Icon(Icons.light_mode),
                          title: Text('Light Mood'),
                        ),
                        ListTile(
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Mood'),
                        )
                      ],
                    ),
                  ));
                },
              ),
            ),
            // NAVIAGTION USING GETx and Routes..........................................

            Card(
              child: ListTile(
                title: Text('Navigation using  Getx'),
                subtitle: Text('USING SIMPLE METHOOD'),
                onTap: () {
                  Get.to(
                    ScreenOne(),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Navigation using  Getx'),
                subtitle: Text('USING ROUTES'),
                onTap: () {
                  Get.toNamed('/SCREENTWO', arguments: [
                    'Mehar Saddullah'
                        'Hi THERE!'
                  ]);
                },
              ),
            ),
            //Translation...............................
            Card(
              child: ListTile(
                title: Text('message'
                    .tr), // here we show that message which we create in "language " class
                subtitle: Text('name'
                    .tr), // here we show that name which we create in "language " class
              ),
            ),
            Row(
              children: [
                OutlinedButton(
                    onPressed: () {
                      Get.updateLocale(Locale('en', 'US'));
                    },
                    child: Text('English')),
                SizedBox(
                  width: 20,
                ),
                OutlinedButton(
                    onPressed: () {
                      Get.updateLocale(Locale('ur', 'PK'));
                    },
                    child: Text('Urdu'))
              ],
            ),
            //..............Favourite UnFavourite.....................//
            ListView.builder(
                itemCount: fruitLsit.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(fruitLsit[index].toString()),
                      trailing: Icon(Icons.favorite_outline_outlined),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
