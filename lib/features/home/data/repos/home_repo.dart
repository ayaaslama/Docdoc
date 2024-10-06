import 'package:doctor/core/networking/api_service.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/specializations_response_model.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _apiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
