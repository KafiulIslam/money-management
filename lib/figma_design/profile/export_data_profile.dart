import 'package:flutter/material.dart';
import 'package:ui_practice/common/common_class.dart';
import 'package:ui_practice/common/constant_page.dart';

class ExportInProfile extends StatefulWidget {
  @override
  _ExportInProfileState createState() => _ExportInProfileState();
}

class _ExportInProfileState extends State<ExportInProfile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: black,
            size: 20,
          ),
        ),
        title: Text('Export Data', style: eighteenBlackTextStyle),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              Container(
                height: 320,
                width: width,
                child: Column(
                  children: [
                    TileInExportInProfile(
                        text1: 'What do you want to export', text2: "All"),
                    TileInExportInProfile(
                        text1: 'When date range ?', text2: "Last 30 days"),
                    TileInExportInProfile(
                        text1: 'What format do you want to export',
                        text2: "CSV"),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.2,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExportConfirmation()));
                  },
                  child: CustomCommonButton(text: 'Export')),
            ],
          ),
        ),
      ),
    );
  }
}

class TileInExportInProfile extends StatefulWidget {
  TileInExportInProfile({Key? key, required this.text1, required this.text2})
      : super(key: key);

  final String text1;
  final String text2;

  @override
  _TileInExportInProfileState createState() => _TileInExportInProfileState();
}

class _TileInExportInProfileState extends State<TileInExportInProfile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: 87,
      width: width,
      child: Column(
        children: [
          Container(
            height: 25,
            width: width,
            child: Text(
              widget.text1,
              style: fifteenBlackTextStyle,
            ),
          ),
          Container(
            height: 55,
            width: width,
            child: TextFormField(
              // controller: controller,
              decoration: InputDecoration(
                hintText: widget.text2,
                hintStyle: TextStyle(color: black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: ass.withOpacity(.1)),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xFF7F3DFF)),
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                    color: black.withOpacity(.6),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExportConfirmation extends StatefulWidget {
  @override
  _ExportConfirmationState createState() => _ExportConfirmationState();
}

class _ExportConfirmationState extends State<ExportConfirmation> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              Container(
                height: 312,
                width: width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/export.jpg'),
                        fit: BoxFit.contain)),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 76,
                width: width,
                child: Text(
                  'Check your email, we sent you the financial report. In certain cases it might take a little longer, depending on the time period and volume of activity',
                  maxLines: 5,
                  textAlign: TextAlign.center,
                  style: fifteenBlackTextStyle,
                ),
              ),
              SizedBox(
                height: height * 0.2,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context, false);
                  },
                  child: CustomCommonButton(text: 'Back to Home')),
            ],
          ),
        ),
      ),
    );
  }
}
