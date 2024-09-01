import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start API NokiPay Group Code

class APINokiPayGroup {
  static String getBaseUrl() => 'https://partners.nokipay.net/api/v2';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization':
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMTJjYzdkYTU0YzRhZjJjNzk5NzE5NmZiYmQ5YTUxZjRmOTJkNDhiY2VjMzM3NjAzNjQ2M2U4YjUxYTU4ODFlNzIzNzJlN2UyZWQ3OTM2MTQiLCJpYXQiOjE3MTM5NzgwNjMuNTM2MDUyLCJuYmYiOjE3MTM5NzgwNjMuNTM2MDU2LCJleHAiOjE3NDU1MTQwNjMuNTM0MDkzLCJzdWIiOiI5MiIsInNjb3BlcyI6W119.uz4YsIRmwjFBTZATMef9ulQ-8Yhq4_4jReJDk3IkHRL5mNXffhm1viM_HO-w7gzFHktpRLk17sfgqY9o1GHHnzhh0ZrNvUe4dmUWE1tEje7o_gvJhZZyxEitJyLAxdt941fH-nF-ia75wj3b1xDXbjGphjB7CvM17dEvOqaMzHoVtOLXKTHOmSwQUY4nel4Pwz7qbnOnWNoJ2fBs4kUlgvWF52c5Bn_X2-cgfMzs_-jrM5_v6lma4nceUu8LzPUh-i0BZIoDNHnCUNHAZdKUJ6MwOReRR47Ol7njvFNBJ9AuE36D23sH3P9Df_1ctjyW4hV6G86_3KKahbIO-jwpd3O48plytaWRrWRbLz6rRWe4MlmuO2J60CdgoF8x30UpsY2qMpUc7dbbfxLBQn80eXVHoBb2DgGDuMpYUftHLZ__zbpy1jJE9m07UQtz2J8lXoIdR4ZD2zK8KKnpB3PlyovAIVyYVOjF7RoBq7S2lVguM72KbTc-_oduUM0Lg8FH5DLf6G0In66x_Pf1W-4cR_yx4s6_kw3Nj29ilssMYoa0KaNIF1pu5rEP8LD4j_k_8JYhFMBbzwYHjoQgzSklbUG4s8FYupP24Z6UJLkQw_Fa4bKweV4cOoKervZT5CtVecHrTffogFMY2HNqE8H6v_T2mvMfB-ABVW-2d4Nozr0',
  };
  static RequestToPayCall requestToPayCall = RequestToPayCall();
  static NokiPayCall nokiPayCall = NokiPayCall();
  static CheckAccountCall checkAccountCall = CheckAccountCall();
  static GetBalanceCall getBalanceCall = GetBalanceCall();
}

class RequestToPayCall {
  Future<ApiCallResponse> call({
    String? payerNumber = '',
    String? amount = '',
  }) async {
    final baseUrl = APINokiPayGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "payer_number": "${payerNumber}",
  "amount": "${amount}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Request To Pay',
      apiUrl: '${baseUrl}/requesttopay',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMTJjYzdkYTU0YzRhZjJjNzk5NzE5NmZiYmQ5YTUxZjRmOTJkNDhiY2VjMzM3NjAzNjQ2M2U4YjUxYTU4ODFlNzIzNzJlN2UyZWQ3OTM2MTQiLCJpYXQiOjE3MTM5NzgwNjMuNTM2MDUyLCJuYmYiOjE3MTM5NzgwNjMuNTM2MDU2LCJleHAiOjE3NDU1MTQwNjMuNTM0MDkzLCJzdWIiOiI5MiIsInNjb3BlcyI6W119.uz4YsIRmwjFBTZATMef9ulQ-8Yhq4_4jReJDk3IkHRL5mNXffhm1viM_HO-w7gzFHktpRLk17sfgqY9o1GHHnzhh0ZrNvUe4dmUWE1tEje7o_gvJhZZyxEitJyLAxdt941fH-nF-ia75wj3b1xDXbjGphjB7CvM17dEvOqaMzHoVtOLXKTHOmSwQUY4nel4Pwz7qbnOnWNoJ2fBs4kUlgvWF52c5Bn_X2-cgfMzs_-jrM5_v6lma4nceUu8LzPUh-i0BZIoDNHnCUNHAZdKUJ6MwOReRR47Ol7njvFNBJ9AuE36D23sH3P9Df_1ctjyW4hV6G86_3KKahbIO-jwpd3O48plytaWRrWRbLz6rRWe4MlmuO2J60CdgoF8x30UpsY2qMpUc7dbbfxLBQn80eXVHoBb2DgGDuMpYUftHLZ__zbpy1jJE9m07UQtz2J8lXoIdR4ZD2zK8KKnpB3PlyovAIVyYVOjF7RoBq7S2lVguM72KbTc-_oduUM0Lg8FH5DLf6G0In66x_Pf1W-4cR_yx4s6_kw3Nj29ilssMYoa0KaNIF1pu5rEP8LD4j_k_8JYhFMBbzwYHjoQgzSklbUG4s8FYupP24Z6UJLkQw_Fa4bKweV4cOoKervZT5CtVecHrTffogFMY2HNqE8H6v_T2mvMfB-ABVW-2d4Nozr0',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class NokiPayCall {
  Future<ApiCallResponse> call({
    String? payerNumber = '',
    double? amount,
    String? pin = '',
  }) async {
    final baseUrl = APINokiPayGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "payer_number": "${payerNumber}",
  "amount": ${amount},
  "pin": "${pin}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NokiPay',
      apiUrl: '${baseUrl}/partners/pay-with-nokipay',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMTJjYzdkYTU0YzRhZjJjNzk5NzE5NmZiYmQ5YTUxZjRmOTJkNDhiY2VjMzM3NjAzNjQ2M2U4YjUxYTU4ODFlNzIzNzJlN2UyZWQ3OTM2MTQiLCJpYXQiOjE3MTM5NzgwNjMuNTM2MDUyLCJuYmYiOjE3MTM5NzgwNjMuNTM2MDU2LCJleHAiOjE3NDU1MTQwNjMuNTM0MDkzLCJzdWIiOiI5MiIsInNjb3BlcyI6W119.uz4YsIRmwjFBTZATMef9ulQ-8Yhq4_4jReJDk3IkHRL5mNXffhm1viM_HO-w7gzFHktpRLk17sfgqY9o1GHHnzhh0ZrNvUe4dmUWE1tEje7o_gvJhZZyxEitJyLAxdt941fH-nF-ia75wj3b1xDXbjGphjB7CvM17dEvOqaMzHoVtOLXKTHOmSwQUY4nel4Pwz7qbnOnWNoJ2fBs4kUlgvWF52c5Bn_X2-cgfMzs_-jrM5_v6lma4nceUu8LzPUh-i0BZIoDNHnCUNHAZdKUJ6MwOReRR47Ol7njvFNBJ9AuE36D23sH3P9Df_1ctjyW4hV6G86_3KKahbIO-jwpd3O48plytaWRrWRbLz6rRWe4MlmuO2J60CdgoF8x30UpsY2qMpUc7dbbfxLBQn80eXVHoBb2DgGDuMpYUftHLZ__zbpy1jJE9m07UQtz2J8lXoIdR4ZD2zK8KKnpB3PlyovAIVyYVOjF7RoBq7S2lVguM72KbTc-_oduUM0Lg8FH5DLf6G0In66x_Pf1W-4cR_yx4s6_kw3Nj29ilssMYoa0KaNIF1pu5rEP8LD4j_k_8JYhFMBbzwYHjoQgzSklbUG4s8FYupP24Z6UJLkQw_Fa4bKweV4cOoKervZT5CtVecHrTffogFMY2HNqE8H6v_T2mvMfB-ABVW-2d4Nozr0',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
}

class CheckAccountCall {
  Future<ApiCallResponse> call({
    String? phone = '',
  }) async {
    final baseUrl = APINokiPayGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Check Account',
      apiUrl: '${baseUrl}/partners/check-account/${phone}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMTJjYzdkYTU0YzRhZjJjNzk5NzE5NmZiYmQ5YTUxZjRmOTJkNDhiY2VjMzM3NjAzNjQ2M2U4YjUxYTU4ODFlNzIzNzJlN2UyZWQ3OTM2MTQiLCJpYXQiOjE3MTM5NzgwNjMuNTM2MDUyLCJuYmYiOjE3MTM5NzgwNjMuNTM2MDU2LCJleHAiOjE3NDU1MTQwNjMuNTM0MDkzLCJzdWIiOiI5MiIsInNjb3BlcyI6W119.uz4YsIRmwjFBTZATMef9ulQ-8Yhq4_4jReJDk3IkHRL5mNXffhm1viM_HO-w7gzFHktpRLk17sfgqY9o1GHHnzhh0ZrNvUe4dmUWE1tEje7o_gvJhZZyxEitJyLAxdt941fH-nF-ia75wj3b1xDXbjGphjB7CvM17dEvOqaMzHoVtOLXKTHOmSwQUY4nel4Pwz7qbnOnWNoJ2fBs4kUlgvWF52c5Bn_X2-cgfMzs_-jrM5_v6lma4nceUu8LzPUh-i0BZIoDNHnCUNHAZdKUJ6MwOReRR47Ol7njvFNBJ9AuE36D23sH3P9Df_1ctjyW4hV6G86_3KKahbIO-jwpd3O48plytaWRrWRbLz6rRWe4MlmuO2J60CdgoF8x30UpsY2qMpUc7dbbfxLBQn80eXVHoBb2DgGDuMpYUftHLZ__zbpy1jJE9m07UQtz2J8lXoIdR4ZD2zK8KKnpB3PlyovAIVyYVOjF7RoBq7S2lVguM72KbTc-_oduUM0Lg8FH5DLf6G0In66x_Pf1W-4cR_yx4s6_kw3Nj29ilssMYoa0KaNIF1pu5rEP8LD4j_k_8JYhFMBbzwYHjoQgzSklbUG4s8FYupP24Z6UJLkQw_Fa4bKweV4cOoKervZT5CtVecHrTffogFMY2HNqE8H6v_T2mvMfB-ABVW-2d4Nozr0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  double? solde(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.solde''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.currency''',
      ));
}

class GetBalanceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = APINokiPayGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Balance',
      apiUrl: '${baseUrl}/partners/get-balance',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMTJjYzdkYTU0YzRhZjJjNzk5NzE5NmZiYmQ5YTUxZjRmOTJkNDhiY2VjMzM3NjAzNjQ2M2U4YjUxYTU4ODFlNzIzNzJlN2UyZWQ3OTM2MTQiLCJpYXQiOjE3MTM5NzgwNjMuNTM2MDUyLCJuYmYiOjE3MTM5NzgwNjMuNTM2MDU2LCJleHAiOjE3NDU1MTQwNjMuNTM0MDkzLCJzdWIiOiI5MiIsInNjb3BlcyI6W119.uz4YsIRmwjFBTZATMef9ulQ-8Yhq4_4jReJDk3IkHRL5mNXffhm1viM_HO-w7gzFHktpRLk17sfgqY9o1GHHnzhh0ZrNvUe4dmUWE1tEje7o_gvJhZZyxEitJyLAxdt941fH-nF-ia75wj3b1xDXbjGphjB7CvM17dEvOqaMzHoVtOLXKTHOmSwQUY4nel4Pwz7qbnOnWNoJ2fBs4kUlgvWF52c5Bn_X2-cgfMzs_-jrM5_v6lma4nceUu8LzPUh-i0BZIoDNHnCUNHAZdKUJ6MwOReRR47Ol7njvFNBJ9AuE36D23sH3P9Df_1ctjyW4hV6G86_3KKahbIO-jwpd3O48plytaWRrWRbLz6rRWe4MlmuO2J60CdgoF8x30UpsY2qMpUc7dbbfxLBQn80eXVHoBb2DgGDuMpYUftHLZ__zbpy1jJE9m07UQtz2J8lXoIdR4ZD2zK8KKnpB3PlyovAIVyYVOjF7RoBq7S2lVguM72KbTc-_oduUM0Lg8FH5DLf6G0In66x_Pf1W-4cR_yx4s6_kw3Nj29ilssMYoa0KaNIF1pu5rEP8LD4j_k_8JYhFMBbzwYHjoQgzSklbUG4s8FYupP24Z6UJLkQw_Fa4bKweV4cOoKervZT5CtVecHrTffogFMY2HNqE8H6v_T2mvMfB-ABVW-2d4Nozr0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  int? solde(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.solde''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.currency''',
      ));
}

/// End API NokiPay Group Code

/// Start API Wirepick Group Code

class APIWirepickGroup {
  static String getBaseUrl() => 'https://apisms.wirepick.com/httpsms';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendSMSCall sendSMSCall = SendSMSCall();
}

class SendSMSCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? text = '',
  }) async {
    final baseUrl = APIWirepickGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Send SMS',
      apiUrl: '${baseUrl}/send',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'client': "exactit",
        'password': "@24Ex-Tech",
        'from': "NOKIPAY",
        'phone': phone,
        'text': text,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End API Wirepick Group Code

/// Start API JagShop Group Code

class APIJagShopGroup {
  static String getBaseUrl({
    String? accessToken = '',
  }) =>
      'https://jagshop.nscreative.cg/api/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer [accessToken]',
  };
  static VerifyOTPCall verifyOTPCall = VerifyOTPCall();
  static SendOTPCall sendOTPCall = SendOTPCall();
  static CheckJagShopAccountCall checkJagShopAccountCall =
      CheckJagShopAccountCall();
  static CheckUserCall checkUserCall = CheckUserCall();
  static LoginCall loginCall = LoginCall();
  static RegisterCall registerCall = RegisterCall();
  static GetProductsCall getProductsCall = GetProductsCall();
  static GetProductsCategoriesCall getProductsCategoriesCall =
      GetProductsCategoriesCall();
  static GetProductsByCategoryCall getProductsByCategoryCall =
      GetProductsByCategoryCall();
  static GetOrdersCall getOrdersCall = GetOrdersCall();
  static GetADSCall getADSCall = GetADSCall();
  static GetLocalitesCall getLocalitesCall = GetLocalitesCall();
  static GetCartCall getCartCall = GetCartCall();
  static AddItemsToCartCall addItemsToCartCall = AddItemsToCartCall();
  static RemoveItemsToCartCall removeItemsToCartCall = RemoveItemsToCartCall();
  static AddOrderCall addOrderCall = AddOrderCall();
  static GetModesPaiementsCall getModesPaiementsCall = GetModesPaiementsCall();
  static GetAddressesCall getAddressesCall = GetAddressesCall();
  static GetFavoritesCall getFavoritesCall = GetFavoritesCall();
  static AddAddressCall addAddressCall = AddAddressCall();
  static AddModePaiementCall addModePaiementCall = AddModePaiementCall();
  static AddToFavoritesCall addToFavoritesCall = AddToFavoritesCall();
  static RemoveFromFavoritesCall removeFromFavoritesCall =
      RemoveFromFavoritesCall();
  static DeleteModePaiementsCall deleteModePaiementsCall =
      DeleteModePaiementsCall();
  static DeleteAddressCall deleteAddressCall = DeleteAddressCall();
  static GetFeesCall getFeesCall = GetFeesCall();
}

class VerifyOTPCall {
  Future<ApiCallResponse> call({
    String? telephone = '',
    String? digit = '',
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Verify OTP',
      apiUrl: '${baseUrl}/otp/verify',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'telephone': telephone,
        'digit': digit,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SendOTPCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? dialCode = '',
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Send OTP',
      apiUrl: '${baseUrl}/otp/send',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'phone': phone,
        'dial_code': dialCode,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CheckJagShopAccountCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Check JagShop account',
      apiUrl: '${baseUrl}/check-account/${phone}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'phone': phone,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class CheckUserCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Check user',
      apiUrl: '${baseUrl}/check-user',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic? user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  List? favorites(dynamic response) => getJsonField(
        response,
        r'''$.favorites''',
        true,
      ) as List?;
  List? carts(dynamic response) => getJsonField(
        response,
        r'''$.carts''',
        true,
      ) as List?;
  int? countCart(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? password = '',
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}/auth',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'phone': phone,
        'password': password,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  dynamic? user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
}

class RegisterCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? password = '',
    String? name = '',
    String? email = '',
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: '${baseUrl}/register',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'phone': phone,
        'password': password,
        'name': name,
        'email': email,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  dynamic? user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
}

class GetProductsCall {
  Future<ApiCallResponse> call({
    String? query = '',
    String? categoryId = '',
    String? storeId = '',
    String? minPrice = '',
    String? maxPrice = '',
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Products',
      apiUrl: '${baseUrl}/products',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'query': query,
        'category_id': categoryId,
        'store_id': storeId,
        'min_price': minPrice,
        'max_price': maxPrice,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class GetProductsCategoriesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Products Categories',
      apiUrl: '${baseUrl}/products/categories',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class GetProductsByCategoryCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Products By Category',
      apiUrl: '${baseUrl}/products/category/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class GetOrdersCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Orders',
      apiUrl: '${baseUrl}/orders',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class GetADSCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get ADS',
      apiUrl: '${baseUrl}/ads',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class GetLocalitesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Localites',
      apiUrl: '${baseUrl}/localites',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCartCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Cart',
      apiUrl: '${baseUrl}/cart',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic? cart(dynamic response) => getJsonField(
        response,
        r'''$.cart''',
      );
  double? total(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.total''',
      ));
  List? items(dynamic response) => getJsonField(
        response,
        r'''$.cart.items''',
        true,
      ) as List?;
}

class AddItemsToCartCall {
  Future<ApiCallResponse> call({
    int? productId,
    int? quantity = 1,
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add items to cart',
      apiUrl: '${baseUrl}/cart/add-items',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'product_id': productId,
        'quantity': quantity,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class RemoveItemsToCartCall {
  Future<ApiCallResponse> call({
    int? cartItemId,
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Remove items to cart',
      apiUrl: '${baseUrl}/cart/remove-item/${cartItemId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AddOrderCall {
  Future<ApiCallResponse> call({
    String? couponCode = '',
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add order',
      apiUrl: '${baseUrl}/orders/add',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'coupon_code': couponCode,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic? order(dynamic response) => getJsonField(
        response,
        r'''$.order''',
      );
}

class GetModesPaiementsCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get modes paiements',
      apiUrl: '${baseUrl}/mode-paiements',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetAddressesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get addresses',
      apiUrl: '${baseUrl}/address',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetFavoritesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get favorites',
      apiUrl: '${baseUrl}/products/favorites',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.favorites''',
        true,
      ) as List?;
}

class AddAddressCall {
  Future<ApiCallResponse> call({
    String? adresse = '',
    String? latitude = '',
    String? longitude = '',
    int? localiteId = 1,
    String? type = '',
    String? personneContact = '',
    String? contactPersonneContact = '',
    String? referenceAdd = '',
    String? nomAdresse = '',
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add address',
      apiUrl: '${baseUrl}/address',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'adresse': adresse,
        'latitude': latitude,
        'longitude': longitude,
        'localite_id': localiteId,
        'type': type,
        'personne_contact': personneContact,
        'contact_personne_contact': contactPersonneContact,
        'reference': referenceAdd,
        'nom_adresse': nomAdresse,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class AddModePaiementCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? type = '',
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add mode paiement',
      apiUrl: '${baseUrl}/mode-paiements',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'phone': phone,
        'type': type,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class AddToFavoritesCall {
  Future<ApiCallResponse> call({
    int? productId,
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add to favorites',
      apiUrl: '${baseUrl}/products/add-to-favorites',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'product_id': productId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class RemoveFromFavoritesCall {
  Future<ApiCallResponse> call({
    int? productId,
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Remove from favorites',
      apiUrl: '${baseUrl}/products/remove-from-favorites',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'product_id': productId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class DeleteModePaiementsCall {
  Future<ApiCallResponse> call({
    int? id,
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete mode paiements',
      apiUrl: '${baseUrl}/mode-paiements/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class DeleteAddressCall {
  Future<ApiCallResponse> call({
    int? id,
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete address',
      apiUrl: '${baseUrl}/address/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetFeesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = APIJagShopGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get fees',
      apiUrl: '${baseUrl}/fees',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  double? total(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.total''',
      ));
  double? subTotal(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.subtotal''',
      ));
  double? delivery(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.delivery''',
      ));
  double? vat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.vat''',
      ));
  double? reduce(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.reduce''',
      ));
}

/// End API JagShop Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
