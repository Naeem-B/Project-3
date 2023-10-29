
import 'package:flutter/material.dart';
import 'package:one_drive/data/global.dart';
import 'package:one_drive/data/home_data.dart';
import 'package:one_drive/models/home_models.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  void initState() {
    super.initState();
    for (var element in homeData) {
      homeList.add(HomeModel.fromJson(element));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
      title: const Text(
        'Home',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.diamond)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
        IconButton(onPressed: () {
          showSearch(context: context, delegate: MySearchDelegate());
        }, icon: const Icon(Icons.search))
      ],
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_alt),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Recent files',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),

          ListView.builder(
        itemCount: homeData.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset(
              homeData[index]['photo'],
              height: 50,
              width: 50,
            ),
            title: Text(homeData[index]['name']),
            subtitle: Text('${homeData[index]['size']} - ${homeData[index]['date']}'),
          );
        },
      ),
          // listview OR Listview.builder OR Column
          /* ListView.builder(
            itemCount: homeData.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: homeData(homeList[index].photo),
                title: homeData(homeList[index].name),
                subtitle: homeData(homeList[index].size, homeList[index].date),
                trailing: const Icon(Icons.abc),
              );
            },
          ), */

          /*FilesWidgets(
            leading: listHome[0].photo, // object.image
            title: listHome[0].name, // object.name
            subtitle: listHome[0].name,
            trailing: Icon(Icons.add),
          ), */
          // FilesWidgets( leading: , title: , subtitle: , trailing: , ),
          // FilesWidgets( leading: , title: , subtitle: , trailing: , ),
          // FilesWidgets( leading: , title: , subtitle: , trailing: , ),
          // FilesWidgets( leading: , title: , subtitle: , trailing: , ),

          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Ofline files',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),

          Center(
            child: Container(
              width: 380,
              height: 56,
              color: Color.fromARGB(255, 213, 236, 250),
              child: const Text("Tap the ⋮ icon next to a file, and"),
            ),
          ),
        ],
      ),
    );
  }
}


class MySearchDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
} 