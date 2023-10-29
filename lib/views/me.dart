
import 'package:flutter/material.dart';
import 'package:one_drive/data/global.dart';
import 'package:one_drive/data/me_data.dart';
import 'package:one_drive/models/me_models.dart';

class Me extends StatefulWidget {
  const Me({super.key});
/*
  @override
  State<Me> createState() => _MyWidgetState();
} 

class _MyWidgetState extends State<Me> {
  @override
  void initState() {
    super.initState();
    for (var element in meData) {
      meList.add(MeModel.fromJson(element));
    }
  }  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        leading: IconButton(onPressed: () {},
         icon: const Icon(Icons.person)),
        title: const Text('Me', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('covert-shadow@hotmail.com',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                children: [
                  Text(
                    '1.8 GB',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'used of 5 GB (36%)',
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                  height: 4,
                  width: 500,
                  color: Colors.grey,
                  child: Container(
                    height: 4,
                    width: 100,
                    color: Colors.blue,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SizedBox(
                width: 500,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Get more storage')),
              ),
            ),
            const Divider(
              height: 24,
              thickness: 1,
            ),
           const ListTile(
            leading:Icon(Icons.cloud_download),
            title: Text('Files available offline'),
            
           ),
           const ListTile(
            leading:Icon(Icons.recycling_outlined),
            title: Text('Recycle bin'),
           ),
           const ListTile(
            leading:Icon(Icons.notifications),
            title: Text('Notifications'),
           ),
           const ListTile(
            leading:Icon(Icons.settings),
            title: Text('Settings'),
           ),
           const ListTile(
            leading:Icon(Icons.help),
            title: Text('Help'),
           ),
           const ListTile(
            leading:Icon(Icons.sign_language_outlined),
            title: Text('Sign out'),
           ),
          ],
        ),
      ),
    );
  }
}

