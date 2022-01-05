// ignore: file_names
// ignore_for_file: unused_import, file_names, duplicate_ignore, unused_element, prefer_const_constructors, unnecessary_new
import 'dart:convert' show utf8;
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ratemyfood/Pages/Model.dart';
import 'package:ratemyfood/Pages/Network.dart';
import 'package:cool_alert/cool_alert.dart';

class Subject extends StatefulWidget {
  const Subject({Key key}) : super(key: key);

  @override
  _SubjectState createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  List<phongbanDB> phongbandb = List();
  var phongban = [
    'Phòng ban : kinh doanh',
    'Phòng ban : Chiến lược bán hàng',
    'Phòng ban : Tác nghiệp nghề',
    'Phòng ban : Lễ tân',
  ];
  var maphongban = [
    'Mã phòng ban : KD001122',
    'Mã phòng ban : CLBH0011',
    'Mã phòng ban : TNN00114',
    'Mã phòng ban : LT001126',
  ];
  @override
  void initState() {
    super.initState();
    NetworkRequest.fetchProducts().then(
      (dataFromServer) {
        setState(() {
          phongbandb = dataFromServer;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[600],
          title: Center(
            child: Text(
              'Quản lý phòng ban và nhân viên',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Container(
          color: Colors.brown[400],
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: phongban.length,
                    itemBuilder: (context, index) {
                      return new Card(
                        color: Colors.lightGreen[50],
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/MainPage');
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: SizedBox(
                              width: 50,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${phongban[index]}',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    '${maphongban[index]}',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Row(children: [
                                    IconButton(
                                      icon: const Icon(Icons.create_outlined),
                                      onPressed: () {
                                        setState(() {});
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.delete),
                                      onPressed: () {
                                        setState(() {});
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: () {
                                        setState(() {});
                                      },
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
