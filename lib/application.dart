import 'package:flutter/material.dart';
import 'package:flutter_simple_rest_api/components/di/dependency_injection.dart';
import 'package:flutter_simple_rest_api/view/teams_view.dart';
import 'package:provider/provider.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: _application(context),
    );
  }

  Widget _application(BuildContext context) {
    return MaterialApp(
      title: 'Simple Rest API',
      initialRoute: '/',
      routes: {
        '/': (context) => TeamsView(),
      },
    );
  }
}
