import 'package:flutter_simple_rest_api/components/app/viewmodel.dart';
import 'package:flutter_simple_rest_api/view/teams_viewmodel.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ...services,
  ...datas,
  ...repositories,
  ...usescases,
];

List<SingleChildWidget> services = [];

List<SingleChildWidget> datas = [];

List<SingleChildWidget> repositories = [];

List<SingleChildWidget> usescases = [];

class ViewModelBuilder {
  static final _instances = {TeamsViewModel: () => TeamsViewModel()};

  static ViewModel instanciate(Type type) {
    return _instances[type]();
  }
}
