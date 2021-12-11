import 'package:rastreator/app/core/errors/exceptions.dart';
import 'package:rastreator/app/core/http/interfaces/ihttp.dart';
import 'package:rastreator/app/data/datasource/interfaces/ipackage_datasource.dart';
import 'package:rastreator/app/data/endpoints/package_endpoints.dart';
import 'package:rastreator/app/data/models/package/package_model.dart';

class PackageDatasource implements IPackageDatasource {
  final IHttpClient client;

  PackageDatasource(this.client);

  @override
  Future<PackageModel> getTrackInfo(String trackId) async {
    final response = await client.get(PackageEndpoints.getTrackInfo(trackId));
    if (response.statusCode == 200) {
      var package = PackageModel.fromJson(response.data);
      return package;
    } else {
      throw ServerException();
    }
  }
}
