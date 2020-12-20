import 'package:flutter/material.dart';
import 'package:interfaces/my_flutter_app_icons.dart';
import 'package:interfaces/Interfaces/register_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:interfaces/generated/l10n.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Recovery(),
      title: 'Flutter Intl Example',

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
class Recovery extends StatefulWidget {
  Recovery({Key key}) : super(key: key);

  _RecoveryState createState() => _RecoveryState();
}

class _RecoveryState extends State<Recovery> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.cyan[300], Colors.cyan[800]],
            )),
            child: Image.asset(
              "assets/logo3.png",
              height: 250,
            ),
          ),
          Transform.translate(
            offset: Offset(0, -60),
            child: Center(
              child: SingleChildScrollView(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 250),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 35),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: S.of(context).recoverCorrE),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        RaisedButton(
                          color: Theme.of(context).primaryColor,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          textColor: Colors.white,
                          onPressed: () {
                            _login(context);
                          },
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(S.of(context).recoverEnvC),
                                if (_loading)
                                  Container(
                                    height: 20,
                                    width: 20,
                                    margin: const EdgeInsets.only(left: 20),
                                    child: CircularProgressIndicator(),
                                  ),
                              ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(S.of(context).recoverNoEstR),
                            FlatButton(
                              textColor: Theme.of(context).primaryColor,
                              child: Text(S.of(context).recoverReg),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => RegisterPage(),
                                ));
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _login(BuildContext context) {
    if (!_loading) {
      setState(() {
        _loading = true;
      });
    }
  }
}
