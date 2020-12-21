import 'package:flutter_simple_rest_api/components/app/viewmodel.dart';
import 'package:flutter_simple_rest_api/repository/simple_repository.dart';
import 'package:flutter_simple_rest_api/usecase/get_all_teams.dart';
import 'package:flutter_simple_rest_api/view/teams_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ...services,
  ...datas,
  ...repositories,
  ...usescases,
];

List<SingleChildWidget> services = [];

List<SingleChildWidget> datas = [];

List<SingleChildWidget> repositories = [
  Provider<SimpleRepository>(
      create: (_) => SimpleRepository.create()),
];

List<SingleChildWidget> usescases = [
  ProxyProvider<SimpleRepository, GetAllTeams>(
    update: (context, repository, usecase) => GetAllTeams(repository),
  ),
];

class ViewModelBuilder {
  static final _instances = {TeamsViewModel: () => TeamsViewModel()};

  static ViewModel instanciate(Type type) {
    return _instances[type]();
  }
}
