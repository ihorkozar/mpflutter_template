import 'package:flutter/widgets.dart';
import 'package:mpcore/mpcore.dart';
import 'package:mpflutter_template/second_page.dart';
import 'package:universal_miniprogram_api/universal_miniprogram_api.dart';

void main() {
  runApp(MyApp());
  MPCore().connectToHostChannel();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MPApp(
      title: 'MPFlutter Demo',
      color: Colors.blue,
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => MySecondPage(),
      },
      navigatorObservers: [MPCore.getNavigationObserver()],
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MPScaffold(
      name: 'Template',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _renderPushNextWidget(context),
          SizedBox(height: 8),
          _renderCallMPJSWidget(context),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              UniversalMiniProgramApi.uni
                  .openBluetoothAdapter(OpenBluetoothAdapterOption()
                    ..setValues(
                      success: (result) {
                        print(result);
                      },
                      fail: (result) {
                        print(result);
                      },
                    ));
            },
            child: Container(
              width: 200,
              height: 100,
              color: Colors.yellow,
              child: Center(
                child: Text(
                  'BLE',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderPushNextWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/second');
      },
      child: Container(
        width: 200,
        height: 100,
        color: Colors.blue,
        child: Center(
          child: Text(
            'Hello, MPFlutter!',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderCallMPJSWidget(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final result = await MPJS.evalTemplate('foo', ['MPFlutter']);
        print(result);
      },
      child: Container(
        width: 200,
        height: 100,
        color: Colors.pink,
        child: Center(
          child: Text(
            'Hello, MPJS!',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
