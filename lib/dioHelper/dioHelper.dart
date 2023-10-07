import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio=Dio(
      BaseOptions(
          baseUrl:'https://student.valuxapps.com/api/' ,
          receiveDataWhenStatusError:true ,
          )
      );
  static Future<Response>getData({
    required String url,
    Map<String,dynamic>?query,
    String lang='en',
  required String token,
  })async{
    dio.options=BaseOptions(
      headers: {
        'Content-Type':'application/json',
        'lang':lang,
        'Authorization':token??'',
      },
    );
    return await dio!.get(
    url,
    queryParameters: query
    );
  }
  static Future<Response>PostData({
    required String url,
   Map<String,dynamic>?query,
    required Map<String,dynamic>data,
    String lang='en',
    String? token,



  })async{
    dio.options.headers={
      'Content-type':'application/json',
      'lang':lang,
      'Authorization':token,
    };
return dio.post(url,
    queryParameters: query,
  data: data,
);
  }
}
