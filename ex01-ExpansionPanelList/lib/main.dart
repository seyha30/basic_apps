import 'package:flutter/material.dart';
import 'expanion_panel_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // showPerformanceOverlay: true,
      title: 'ExpansionPanelList',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ExpansionPanelList'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState(
        [
          ExpansionPanelData(
            "Can I backup my data?",
            "dsfuysdiu fudsy fiusdyf usdyf iudsyf udsyfiuysd ufyuisdyfi sduiyfiusdyf dsyui u",
            false,
          ),
          ExpansionPanelData(
            "Can I backup my data?",
            "dsfuysdiu fudsy fiusdyf usdyf iudsyf udsyfiuysd ufyuisdyfi sduiyfiusdyf dsyui u",
            false,
          ),
          ExpansionPanelData(
            "Can I backup my data?",
            "dsfuysdiu fudsy fiusdyf usdyf iudsyf udsyfiuysd ufyuisdyfi sduiyfiusdyf dsyui u",
            false,
          ),
          ExpansionPanelData(
            "Can I backup my data?",
            "dsfuysdiu fudsy fiusdyf usdyf iudsyf udsyfiuysd ufyuisdyfi sduiyfiusdyf dsyui u",
            false,
          ),
          ExpansionPanelData(
            "Can I backup my data?",
            "dsfuysdiu fudsy fiusdyf usdyf iudsyf udsyfiuysd ufyuisdyfi sduiyfiusdyf dsyui u",
            false,
          ),
        ],
      );
}

class _MyHomePageState extends State<MyHomePage> {
  List<ExpansionPanelData> _expansionPanelData;
  _MyHomePageState(this._expansionPanelData);
  _onExpansion(int panelIndex, bool isExpanded) {
    setState(() {
      _expansionPanelData[panelIndex].expanded =
          !(_expansionPanelData[panelIndex].expanded);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<ExpansionPanel> expansionPanels = [];

    for (int i = 0, ii = _expansionPanelData.length; i < ii; i++) {
      var expansionPanelData = _expansionPanelData[i];
      expansionPanels.add(
        ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  expansionPanelData.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
            body: Padding(
              padding: EdgeInsets.all(
                20,
              ),
              child: Text(
                expansionPanelData.body,
              ),
            ),
            isExpanded: expansionPanelData.expanded),
      );
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: ExpansionPanelList(
            children: expansionPanels,
          ),
        ),
      ),
    );
  }
}
