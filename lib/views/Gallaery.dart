import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gallaery extends StatefulWidget {
  const Gallaery({super.key});

  @override
  State<Gallaery> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Gallaery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        title: const Text(
          'Photos',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.diamond)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              child: const ListTile(
                leading: Icon(Icons.filter_drama),
                title: Text('Camera backup is on'),
                trailing: Text(
                  'Turn off',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text('May'),
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.filter_list)),
                    const Padding(
                      padding: EdgeInsets.only(right: 24),
                      child: Text('Filter'),
                    ),
                  ],
                ),
              ],
            ),
          )
          
        ],
      ),
    );
  }
}
