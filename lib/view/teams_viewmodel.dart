import 'package:flutter/material.dart';
import 'package:flutter_simple_rest_api/components/app/lifecycle.dart';
import 'package:flutter_simple_rest_api/components/app/viewmodel.dart';

class TeamsViewModel extends ViewModel {
  BuildContext _context;
  void load(BuildContext context, List args) async {
    _context = context;
    setLifecycle(OnLoad());
    setLifecycle(OnLoaded());
  }
}
