import 'package:flutter/material.dart';

class BuildingPrimerScreen extends StatefulWidget {
  @override
  _BuildingPrimerScreenState createState() => _BuildingPrimerScreenState();
}

class _BuildingPrimerScreenState extends State<StatefulWidget> {
  int _currentStep = 0;
  bool _shouldShowBanner = true;

  List<Step> _steps = [
    Step(
      title: Text('Day One'),
      state: StepState.editing,
      content: Text('Push Ups'),
    ),
    Step(
      title: Icon(Icons.ac_unit),
      state: StepState.disabled,
      content: Text('Push Ups'),
    ),
    Step(
      title: Icon(Icons.ac_unit),
      content: Text('Push Ups, Rows'),
    ),
    Step(
      title: Icon(Icons.ac_unit),
      content: Text('Push Ups, Rows'),
    ),
    Step(
      title: Icon(Icons.ac_unit),
      content: Text('Push Ups, Rows, Glute Bridge'),
    ),
    Step(
      title: Icon(Icons.ac_unit),
      content: Text('Push Ups, Rows, Glute Bridge'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Building Primer'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            if (_shouldShowBanner)
              MaterialBanner(
                content: const Text(
                  '14 days period to prepare you for the BWF Primer!',
                ),
                leading: CircleAvatar(
                  child: Icon(Icons.lightbulb),
                ),
                actions: [
                  OutlineButton(
                    child: const Text('Got it!'),
                    onPressed: () {
                      setState(() => _shouldShowBanner = false);
                    },
                  )
                ],
              ),
            Stepper(
              currentStep: _currentStep,
              onStepContinue: _currentStep < 5
                  ? () => setState(() => _currentStep += 1)
                  : null,
              onStepCancel: _currentStep != 0
                  ? () => setState(() => _currentStep = 0)
                  : null,
              steps: _steps,
            ),
          ],
        ),
      ),
    );
  }
}
