import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              TextButton(
                child: const Text(
                  'Edit',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {},
              ),
              const Expanded(
                child: SizedBox(),
              ),
              IconButton(
                icon: Icon(
                  Icons.wechat,
                  size: 35.0,
                  color: Colors.blue.shade700,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: const Text(
                    'Chats',
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextButton(
                    child: Text(
                      'Broadcast Lists',
                      style: TextStyle(
                          color: Colors.blue.shade700, fontSize: 19.0),
                    ),
                    onPressed: () {},
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: TextButton(
                    child: Text(
                      'New Group',
                      style: TextStyle(
                          color: Colors.blue.shade700, fontSize: 19.0),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Container(
              height: 0.2,
              width: double.infinity,
              color: Colors.grey,
            ),
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Card(
                  color: Colors.black,
                  elevation: 0.0,
                  child: SizedBox(
                    width: double.infinity,
                    height: 100.0,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          height: 100.0,
                          width: 100.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/images.jpeg'),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: const Text(
                                '+7433454212456',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 3.0,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.call_missed,
                                  color: Colors.red,
                                  size: 25.0,
                                ),
                                SizedBox(
                                  height: 1.0,
                                  width: 3.0,
                                ),
                                Text(
                                  'Missed voice call',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 0.1,
              width: double.infinity,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.security,
                  size: 13.0,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                const Text(
                  'Your personal masseges are',
                  style: TextStyle(color: Colors.grey, fontSize: 13.0),
                ),
                const SizedBox(
                  width: 2.0,
                ),
                Text(
                  'end-to-end encrypted',
                  style: TextStyle(color: Colors.blue.shade700, fontSize: 13.0),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call_sharp),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
