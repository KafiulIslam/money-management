import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/common/constant_page.dart';
import 'package:ui_practice/figma_design/profile/theme_security_notification_option.dart';

class SettingInProfile extends StatefulWidget {
  @override
  _SettingInProfileState createState() => _SettingInProfileState();
}

class _SettingInProfileState extends State<SettingInProfile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
        title: Text('Settings', style: eighteenBlackTextStyle),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TileInSettingInProfile(text1: 'Currency', text2: 'Usd'),
              TileInSettingInProfile(text1: 'Language', text2: 'English'),
              TileInSettingInProfile(text1: 'Theme', text2: 'Light'),
              TileInSettingInProfile(text1: 'Security', text2: 'Fingerprint'),
              TileInSettingInProfile(
                text1: 'Notification',
              ),
              SizedBox(
                height: 32,
              ),
              TileInSettingInProfile(
                text1: 'About',
              ),
              TileInSettingInProfile(
                text1: 'Help',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TileInSettingInProfile extends StatefulWidget {
  TileInSettingInProfile({
    Key? key,
    required this.text1,
    this.text2 = 'null',
  }) : super(key: key);

  final String text1;
  final String text2;

  @override
  _TileInSettingInProfileState createState() => _TileInSettingInProfileState();
}

class _TileInSettingInProfileState extends State<TileInSettingInProfile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OptionsInSetting(text1: widget.text1)));
      },
      child: Container(
        height: 56,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 22,
              width: 100,
              child: Text(
                widget.text1,
                style: fifteenBlackTextStyle,
              ),
            ),
            Container(
              height: 22,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 22,
                    width: 80,
                    child: Text(
                      widget.text2,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color:
                              widget.text2 == "null" ? Colors.transparent : ass,
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 15,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: brandColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OptionsInSetting extends StatefulWidget {
  final String text1;

  OptionsInSetting({Key? key, required this.text1}) : super(key: key);
  @override
  _OptionsInSettingState createState() => _OptionsInSettingState();
}

class _OptionsInSettingState extends State<OptionsInSetting> {
  // Future<List> countries;

  bool markSwitch = true;

  Future<List> getCountries() async {
    var response = await Dio().get('https://restcountries.eu/rest/v2/all');
    return response.data;
  }

  @override
  void initState() {
    // TODO: implement initState
    getCountries();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: black,
          ),
        ),
        backgroundColor: white,
        elevation: 0,
        title: Text(
          widget.text1,
          style: eighteenBlackTextStyle,
        ),
        centerTitle: true,
      ),
      body: widget.text1 == 'Currency'
          ? Container(
              color: white,
              child: FutureBuilder<List>(
                future: getCountries(),
                builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,

                        // scrollDirection: Axis.horizontal,

                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                markSwitch = !markSwitch;
                                var index = 0;
                                if (!markSwitch) {
                                  index = 1;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: ass.withOpacity(0.1))),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, right: 16.0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: snapshot.data![index]['name'],
                                            style: TextStyle(
                                                color: black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Inter'),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text:
                                                    ' (${snapshot.data![index]['currencies'][0]['code']})',
                                                style: TextStyle(
                                                  color: ass,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        markSwitch
                                            ? Container()
                                            : Container(
                                                height: 24,
                                                width: 24,
                                                decoration: BoxDecoration(
                                                    color: darkBlue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: Center(
                                                    child: Icon(
                                                  Icons.done,
                                                  color: white,
                                                  size: 20,
                                                )),
                                              )
                                      ]),
                                ),
                              ),
                            ),
                          );
                        });
                  }

                  return Center(child: CircularProgressIndicator());
                },
              ),
            )
          : widget.text1 == 'Language'
              ? Container(
                  color: white,
                  child: FutureBuilder<List>(
                    future: getCountries(),
                    builder:
                        (BuildContext context, AsyncSnapshot<List> snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            itemCount: snapshot.data!.length,
                            // scrollDirection: Axis.horizontal,

                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    markSwitch = !markSwitch;
                                    var index = 0;
                                    if (!markSwitch) {
                                      index = 1;
                                    }
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ass.withOpacity(0.1))),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16.0, right: 16.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text: snapshot.data![index]
                                                    ['languages'][0]['name'],
                                                style: TextStyle(
                                                    color: black,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Inter'),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text:
                                                        ' (${snapshot.data![index]['languages'][0]['iso639_1']})',
                                                    style: TextStyle(
                                                      color: ass,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            markSwitch
                                                ? Container()
                                                : Container(
                                                    height: 24,
                                                    width: 24,
                                                    decoration: BoxDecoration(
                                                        color: darkBlue,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                    child: Center(
                                                        child: Icon(
                                                      Icons.done,
                                                      color: white,
                                                      size: 20,
                                                    )),
                                                  )
                                          ]),
                                    ),
                                  ),
                                ),
                              );
                            });
                      }

                      return Center(child: CircularProgressIndicator());
                    },
                  ),
                )
              : widget.text1 == 'Theme'
                  ? ThemeOptions()
                  : widget.text1 == 'Security'
                      ? SecurityOptions()
                      : NotificationOption(),
    );
  }
}
