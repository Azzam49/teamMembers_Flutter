import 'package:flutter/material.dart';
import 'member_object.dart';

class TeamCard extends StatelessWidget {

  final Member member;
  final Function delete;
  TeamCard({this.member,this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              member.name,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent[300]
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              "Age : ${member.age}",
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.deepPurpleAccent[700]
              ),
            ),
            SizedBox(height: 9.0,),
            FlatButton.icon(
              onPressed: delete, 
              icon: Icon(Icons.delete), 
              label: Text('delete member')),
          ],
        ),
      ),
    );
  }
}