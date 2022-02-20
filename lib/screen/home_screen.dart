import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  String _currentcontent = 'استغفر الله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          PopupMenuButton<String>(
            iconSize: 30,
            elevation: 4,
            onSelected: (value) {
              if (_currentcontent != value) {
                setState(() {
                  counter = 0;
                  _currentcontent = value;
                });
              }
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  child: Text('استغفر الله'),
                  value: 'استغفر الله',
                  height: 16,
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  child: Text('سبحان الله'),
                  value: 'سبحان الله',
                  height: 16,
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  child: Text('الحمد لله'),
                  value: 'الحمد لله',
                  height: 16,
                ),
              ];
            },
          ),
        ],
        title: const Text(
          'Azkar',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade200, Colors.teal.shade700],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         const   CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  top: 20,
                  bottom: 5
                  ),
              child: Card(
                margin: const EdgeInsetsDirectional.only(
                  bottom: 20,
                ),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _currentcontent,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      color: Colors.blue.shade300,
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      child: Text(
                        '$counter',
                        style: const TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade500,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: const Text(
                      'تسبيح',
                      style: TextStyle(
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            bottomEnd: Radius.circular(15),
                          ),
                        ),
                        primary: Colors.teal.shade700),
                    onPressed: () {
                      setState(() {
                        counter = 0;
                      });
                    },
                    child: const Text(
                      'اعادة',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
    );
  }
}
