import 'package:dio/dio.dart';
import 'package:fpp/config/config.dart';

class HttpLogInterceptor extends InterceptorsWrapper{

  @override
  onRequest(RequestOptions options) {
     if(Config.DEBUG) {
       print("请求路径->${options.path}");
       if (options.data != null) {
         print('请求参数: =>' + options.data.toString());
       }
     }
     return options;
  }

  @override
  onError(DioError err) {
      if(Config.DEBUG) {
        print('请求异常: =>' + err.toString());
        print('请求异常信息: =>' + err.response?.toString() ?? "");
      }
      return err;
  }

  @override
  onResponse(Response response) {
    if (Config.DEBUG) {
      if (response != null) {
        print('返回结果: =>' + response.toString());
      }
    }
    return response;
  }
}