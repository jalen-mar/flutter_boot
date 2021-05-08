import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {

  static void show(BuildContext context, String url) {
    showDialog(context: context, builder: (context) {
      return ImageDialog(url);
    });
  }

  final String url;

  ImageDialog(this.url) : super();

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container (
              width: MediaQuery.of(context).size.width / 4 * 3,
              height: MediaQuery.of(context).size.height / 4 * 3,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: Image.network(url, width: MediaQuery.of(context).size.width / 4 * 3,
                height: MediaQuery.of(context).size.height / 4 * 3,),
            )
          ],
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}