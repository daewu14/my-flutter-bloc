import '../base/services/api.dart';

/// createdby Daewu Bintara
/// Wednesday, 3/3/21

class Repositories extends Api {

  /// Get [Member] Data
  Future<Result> getMember() async => await getResult(endPoint: "test-daewu");

}

