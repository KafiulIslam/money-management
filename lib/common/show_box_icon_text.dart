import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';

class ShowBoxWithIconAndText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContentWithIconText(context),
    );
  }

  dialogContentWithIconText(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: 342,
        ),
        Positioned(
          top: 300,
          right: 2,
          left: 2,
          child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
            margin: EdgeInsets.only(top: 16.0),
            decoration: BoxDecoration(
                // gradient: LinearGradient(
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter,
                //     colors: [
                //       Colors.white,
                //       brandColor,
                //     ],
                //     stops: [
                //       .09,
                //       1.0
                //     ]),
                color: white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(17),
                    topRight: Radius.circular(17)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0),
                  ),
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 2,
                  width: 36,
                  color: brandColor,
                ),
                SizedBox(
                  height: 48,
                ),
                Container(
                  color: white,
                  height: 91,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: brandColor.withOpacity(0.25)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 24,
                              width: 28,
                              child: Icon(
                                Icons.camera_alt,
                                color: brandColor,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Camera',
                              style: TextStyle(
                                  color: brandColor,
                                  fontSize: 15,
                                  fontFamily: 'Inter'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: brandColor.withOpacity(0.25)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 24,
                              width: 28,
                              child: Icon(
                                Icons.image,
                                color: brandColor,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Image',
                              style: TextStyle(
                                  color: brandColor,
                                  fontSize: 15,
                                  fontFamily: 'Inter'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: brandColor.withOpacity(0.25)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 24,
                              width: 28,
                              child: Icon(
                                Icons.file_copy,
                                color: brandColor,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Document',
                              style: TextStyle(
                                  color: brandColor,
                                  fontSize: 15,
                                  fontFamily: 'Inter'),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                          color: brandColor, fontSize: 15, fontFamily: 'Inter'),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
