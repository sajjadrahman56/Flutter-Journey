import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Text TextFormatDate(time) {
  return Text(DateFormat('HH:mm:ss').format(time));
}

DialgoShow(context, time, noOfGlasses) {
  return showDialog(
    barrierColor: Colors.black.withOpacity(0.5),
    barrierDismissible: false,
    context: context,
    builder: (ctx) => AlertDialog(
      title: Center(
        child: TextFormatDate(time),
        //   child: Text(DateFormat('HH:mm:ss')
        //       .format(waterTrackList[index].time)),
      ),
      content: Text("You have drunk $noOfGlasses glasses "
          "of water"),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(ctx).pop();
          },
          child: Container(
            padding: const EdgeInsets.all(14),
            child: const Text("okay"),
          ),
        ),
      ],
    ),
  );
}
