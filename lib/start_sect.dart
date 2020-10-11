import 'package:flutter/material.dart';

class StartSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NormalStart(),
        QuickStart(
          desc: 'Test Task 1',
          project: 'Test Project',
          tags: ['TAG 1', 'Tag 2'],
        ),
      ],
    );
  }
}

class QuickStart extends StatelessWidget {
  final String desc;
  final String project;
  final List<String> tags;
  const QuickStart({this.desc, this.project, this.tags});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(desc),
        Text(project),
        Row(
          children: tags.map((tag) => Text(tag)).toList(),
        ),
        FlatButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {},
        )
      ],
    );
  }
}

class NormalStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: TextField(
                decoration: InputDecoration(hintText: 'Description'))),
        IconButton(
          icon: Icon(Icons.folder),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.label),
          onPressed: () {},
        ),
        RaisedButton(onPressed: () {}, child: Text('Start'))
      ],
    );
  }
}
