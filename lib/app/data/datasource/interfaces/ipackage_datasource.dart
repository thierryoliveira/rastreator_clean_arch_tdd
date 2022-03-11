import 'package:rastreator/app/data/models/package/package_model.dart';

abstract class IPackageDatasource {
  Future<PackageModel> getTrackInfo(String trackId);
}
