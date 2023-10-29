
import 'package:flutter/material.dart';
import 'package:one_drive/data/files_data.dart';
import 'package:one_drive/data/global.dart';
import 'package:one_drive/models/files_models.dart';

class Files extends StatefulWidget {
  const Files({super.key});

  @override
  State<Files> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Files> {
  @override
  void initState() {
    super.initState();
    for (var element in filesData) {
      filesList.add(FilesModel.fromJson(element));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        title: const Text(
          'Files',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.diamond)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MySearchDelegate());
              },
              icon: Icon(Icons.search)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_alt),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_downward)),
              Text('A-Z'),
            ],
            
          ),
           ListView.builder(
        itemCount: filesData.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset(
              filesData[index]['photo'],
              height: 50,
              width: 50,
            ),
            title: Text(filesData[index]['name']),
            subtitle: Text('${filesData[index]['size']} - ${filesData[index]['date']}'),
          );
        },
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
