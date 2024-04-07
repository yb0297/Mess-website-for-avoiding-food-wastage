import 'dart:convert';


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_wastage/UiHelper.dart';
import 'package:food_wastage/data.dart';
import 'package:food_wastage/firebase_options.dart';

import 'package:food_wastage/splash_screen.dart';
import 'package:get/get.dart';
import 'package:quickalert/quickalert.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

Future<List<data>> getUserData() async {
  final Data = await rootBundle.loadString("assets/datafile.json");
  var jsonData = json.decode(Data) as List;

  return jsonData.map((e) => data.fromJson(e)).toList();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: false,
      ),
      home: splash_screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> idList = [];
  int points = 1000;
  Map counter = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 18, 18, 1),
        automaticallyImplyLeading: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color.fromRGBO(2, 18, 18, 1),
        ),
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.currency_rupee),

                      Text(
                        "REWARDS:$points Pt",
                        style: const TextStyle(color: Colors.white),
                      ),
              ],
            ),

                  const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 40,
                              ),


          ],
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(2, 18, 18, 0.98),
        child: FutureBuilder(
            future: getUserData(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text("error in loading data,${snapshot.error}");
              } else if (snapshot.hasData) {
                var items = snapshot.data as List<data>;
                return GridView.builder(
                  itemCount: items.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 5,
                      color: const Color.fromRGBO(51, 57, 57, 0.3),
                      borderOnForeground: false,
                      surfaceTintColor: Colors.green,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SizedBox(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                  width: double.infinity,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12)),
                                    child: Image(
                                      alignment: Alignment.bottomCenter,
                                      image: NetworkImage(items[index].image!),
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "${items[index].title}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                  // const SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Price: ${items[index].price}",
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text("Rating: ${items[index].rating}",
                                          style: const TextStyle(
                                            color: Colors.white,
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                              minimumSize: const Size.square(40),
                                              backgroundColor:
                                                  Colors.yellow.shade700),
                                          onPressed: () {
                                            if (points == 1000) {
                                              UiHelper.showAlertBox(
                                                  context,
                                                  QuickAlertType.warning,
                                                  "Nothing to Remove");
                                            } else if (idList
                                                .contains(items[index].id)) {
                                              points += int.parse(
                                                  items[index].price!);
                                              if (counter.containsKey(
                                                  items[index].id)) {
                                                counter[items[index].id]--;
                                              } else {
                                                UiHelper.showAlertBox(
                                                    context,
                                                    QuickAlertType.warning,
                                                    "Nothing to Remove");
                                              }
                                              UiHelper.showAlertBox(
                                                  context,
                                                  QuickAlertType.success,
                                                  "Order Removed");
                                              idList.remove(items[index].id);


                                            } else {
                                              UiHelper.showAlertBox(
                                                  context,
                                                  QuickAlertType.warning,
                                                  "Not Added");
                                            }

                                            setState(() {
                                              points;
                                              counter;
                                            });
                                          },
                                          child: const Icon(Icons.remove)),
                                      SizedBox(
                                        child: Text(
                                            "${counter[items[index].id] ?? 0}",
                                            style: const TextStyle(
                                              color: Colors.white,
                                            )),
                                      ),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                              minimumSize: const Size.square(40),
                                              backgroundColor:
                                                  Colors.yellow.shade700),
                                          onPressed: () {
                                            if (points >=
                                                int.parse(
                                                    items[index].price!)) {
                                              points -= int.parse(
                                                  items[index].price!);
                                              idList.add(items[index].id!);
                                              if (!counter.containsKey(
                                                  items[index].id)) {
                                                counter[items[index].id] = 1;
                                              } else {
                                                counter[items[index].id]++;
                                              }

                                              UiHelper.showAlertBox(
                                                  context,
                                                  QuickAlertType.success,
                                                  "Order Added");
                                            } else {
                                              UiHelper.showAlertBox(
                                                  context,
                                                  QuickAlertType.warning,
                                                  "Not Enough Points");
                                            }

                                            setState(() {
                                              points;
                                              counter[items[index].id];
                                            });
                                          },
                                          child: const Icon(Icons.add)),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      mainAxisExtent: 270),
                );
              } else {
                return const CircularProgressIndicator();
              }
            }),
      ),
      bottomNavigationBar: BottomAppBar(

        color: Colors.black,
        height: 50,
        notchMargin: 5.0,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.description_outlined,
                  color: Color.fromRGBO(105, 105, 105, 1),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Color.fromRGBO(105, 105, 105, 1),
                )),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow.shade700,
        focusColor: Colors.yellow,
        onPressed: () {},
        child: const Icon(
          Icons.home_outlined,
          color: Colors.black,
        ),
      ),
    );
  }
}
