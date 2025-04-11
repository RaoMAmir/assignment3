import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> notes = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Saved Locations")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/addnote'),
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(notes[index]['locationName']),
          subtitle: Text(notes[index]['description']),
          trailing: IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Navigate to Edit Page with note data
            },
          ),
        ),
      ),
    );
  }
}
