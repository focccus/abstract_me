import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:processing.dart/processing.dart';
import '../../data/input_values.dart';
import '../../intl.dart';
import '../../widgets/button.dart';
import 'canvas.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share/share.dart';

class OutputPage extends StatelessWidget {
  final InputValues vals;

  OutputPage(this.vals);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.black,
            ),
            onPressed: () {
              Share.share(AbstractLocalizations.of(context).shareText);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 650),
            child: StatefulBuilder(
              builder: (context, setState) => Column(
                children: <Widget>[
                  Card(margin: EdgeInsets.all(4), child: OutputCanvas(vals)),
                  SizedBox(
                    height: 24,
                  ),
                  BlackButton(
                    AbstractLocalizations.of(context).save,
                    onPressed: () {
                      final String path =
                          "/sdcard/Pictures/abstract_me_${DateTime.now().toIso8601String()}.png";
                      PermissionHandler().requestPermissions(
                        [PermissionGroup.storage],
                      ).then((_) {
                        setState(() {
                          saveCanvas(
                            path,
                            1000,
                            1000,
                          );
                        });
                      });

                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(
                            AbstractLocalizations.of(context).savedImage(path)),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
