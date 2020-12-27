import 'package:flutter/material.dart';
import 'member_object.dart';
import 'teamcard_widget.dart';

//void main() => runApp(MaterialApp( home: TeamList() ));

class TeamList extends StatefulWidget {
  @override
  _TeamListState createState() => _TeamListState();
}

class _TeamListState extends State<TeamList> {

  List<Member> team = [
    Member(name:'Ali',age:'24'),
    Member(name:'Mike',age:'15'),
    Member(name:'Muhammad',age:'33'),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent[50],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[300],
        title: Text('Super Team'),
        centerTitle: true,
      ),
      body: Column(      
        children: 
          team.map((member) { 
            return TeamCard(
              member:member,
              delete: (){
                setState(() {
                  team.remove(member);
                });
              },
              );
          }).toList()
        ,    
      ),
    );
  }
}