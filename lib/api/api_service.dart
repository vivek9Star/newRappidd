import 'package:rappid_poc/Utils/Constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'api_service.g.dart';






@RestApi(baseUrl: Constants.BASE_URL)
abstract class ApiService {
  factory ApiService (Dio dio ,{String baseUrl}) = _ApiService;

  final dio = Dio();
  static ApiService create () {
    final dio = Dio();
    dio.interceptors.add(LogInterceptor(requestBody: true,responseBody: true));
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Add the Bearer token to the request header
          options.headers['Authorization'] = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjbGllbnRfaWQiOjEsInByb3BlcnR5X2lkIjoxLCJ1c2VyX2lkIjoiMSIsInRpbWUiOjE2ODA1MjQ4NzB9.v1xiN4d5ZybvRn9L-iM70HLjQHUAQEnhROijj_x8iSU';
          handler.next(options);
        },
      ),
    );
    return ApiService(dio);
  }



  @GET(Constants.SPLASH_SCREEN)
  Future<String> fetchSplashData();

  @GET(Constants.SIGNUPSCREEN)
  Future<String> fetchSignUpData();

  @GET(Constants.SIGNIN_SCREEN)
  Future<String> fetchSignInData();

  @GET(Constants.HOME_SCREEN)
  Future<String> fetchHomeData();

  @GET(Constants.DETAILS_SCREEN)
  Future<String> fetchDetailsData();

  @GET(Constants.CART_SCREEN)
  Future<String> fetchCartData();







//@Query("?ui_type=UBER") String uiType);
}