
import 'package:spacex_latest_launch/models/get_model/spacex_data_get_model.dart';
import 'package:spacex_latest_launch/repository/service.dart';

class DaoRepository{
  const DaoRepository({
    required this.service,
  });
  final Service service;

 Future<List<SpaceXDataGetModel>?> getData() async => service.fetchPostItems();
}