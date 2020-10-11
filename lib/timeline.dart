import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DateLabel(
          dt: DateTime.now(),
        ),
        ActivityRecordLabel(
          ar: ActivityRecord(
            desc: 'desc 1',
            project: 'project 1',
            tags: ['tag 1', 'tag2'],
            dtStart: DateTime.parse('2020-06-27 00:23'),
            dtStop: DateTime.parse('2020-06-27 01:23'),
          ),
        ),
        ActivityRecordLabel(
          ar: ActivityRecord(
            desc: 'desc 1',
            project: 'project 1',
            tags: ['tag 1', 'tag2'],
            dtStart: DateTime.parse('2020-06-27 00:23'),
            dtStop: DateTime.parse('2020-06-27 01:23'),
          ),
        ),
        DateLabel(
          dt: DateTime.now(),
        ),
        ActivityRecordLabel(
          ar: ActivityRecord(
            desc: 'desc 1',
            project: 'project 1',
            tags: ['tag 1', 'tag2'],
            dtStart: DateTime.parse('2020-06-27 00:23'),
            dtStop: DateTime.parse('2020-06-27 01:23'),
          ),
        ),
        ActivityRecordLabel(
          ar: ActivityRecord(
            desc: 'desc 1',
            project: 'project 1',
            tags: ['tag 1', 'tag2'],
            dtStart: DateTime.parse('2020-06-27 00:23'),
            dtStop: DateTime.parse('2020-06-27 01:23'),
          ),
        ),
        ActivityRecordLabel(
          ar: ActivityRecord(
            desc: 'desc 1',
            project: 'project 1',
            tags: ['tag 1', 'tag2'],
            dtStart: DateTime.parse('2020-06-27 00:23'),
            dtStop: DateTime.parse('2020-06-27 01:23'),
          ),
        ),
        DateLabel(
          dt: DateTime.now(),
        ),
        ActivityRecordLabel(
          ar: ActivityRecord(
            desc: 'desc 1',
            project: 'project 1',
            tags: ['tag 1', 'tag2'],
            dtStart: DateTime.parse('2020-06-27 00:23'),
            dtStop: DateTime.parse('2020-06-27 01:23'),
          ),
        ),
        ActivityRecordLabel(
          ar: ActivityRecord(
            desc: 'desc 1',
            project: 'project 1',
            tags: ['tag 1', 'tag2'],
            dtStart: DateTime.parse('2020-06-27 00:23'),
            dtStop: DateTime.parse('2020-06-27 01:23'),
          ),
        ),
        ActivityRecordLabel(
          ar: ActivityRecord(
            desc: 'desc 1',
            project: 'project 1',
            tags: ['tag 1', 'tag2'],
            dtStart: DateTime.parse('2020-06-27 00:23'),
            dtStop: DateTime.parse('2020-06-27 01:23'),
          ),
        ),
      ],
    );
  }
}

class DateLabel extends StatelessWidget {
  final DateTime dt;
  const DateLabel({this.dt});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: Expanded(child: Text(DateFormat('yyyy-MM-dd').format(dt))));
  }
}

class ActivityRecord {
  String desc;
  String project;
  List<String> tags;
  DateTime dtStart;
  DateTime dtStop;

  ActivityRecord(
      {this.desc, this.project, this.tags, this.dtStart, this.dtStop});
}

class ActivityRecordLabel extends StatelessWidget {
  final ActivityRecord ar;

  const ActivityRecordLabel({this.ar});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                child: Text(ar.desc),
                width: 200,
                height: 30,
              ),
              SizedBox(
                child: Text(ar.dtStart.difference(ar.dtStop).toString()),
                width: 200,
                height: 30,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                child: Text(ar.project),
                width: 200,
                height: 30,
              ),
              FlatButton(
                color: Colors.grey,
                
                child: Icon(Icons.play_arrow),
                onPressed: () {},
              )
              /*  // tags
              SizedBox(
                child: Text(
                    ar.tags.reduce((value, element) => value + ', ' + element)),
                width: 200,
                height: 30,
              ), */
            ],
          ),
        ],
      ),
    );
  }
}
