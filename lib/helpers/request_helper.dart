import 'dart:async';

import 'package:barber_common/helpers/net_work.dart';
import 'package:barber_common/models/cos.dart';
import 'package:barber_common/module/auto/entitys/login_entity.dart';
import 'package:barber_common/module/auto/entitys/register_entity.dart';

class RequestHelperCommon {
  static Future<LoginEntity> login(String tel, String password) {
    return RequestClient.request<LoginEntity>(
        (json) => LoginEntity.fromJson(json),
        '/auth/login',
        {'identifier': tel, 'credential': password, 'identity_type': "tel"});
  }

  static Future<RegisterEntity> sendRegisterCode(String tel, String password) {
    return RequestClient.request<RegisterEntity>(
        (json) => RegisterEntity.fromJson(json),
        '/auth/register1',
        {'tel': tel, 'password': password});
  }

  static Future<Map<String, dynamic>> registerUser(
      String tel, String password, String code) {
    return RequestClient.request<Map<String, dynamic>>(
        (json) => json,
        '/auth/register2',
        {'tel': tel, 'password': password, 'authCode': code});
  }

  static Future<CosEntity> periodEffectiveSign(int type) {
    return RequestClient.request<CosEntity>((json) => CosEntity.fromJson(json),
        '/cos/common/periodEffectiveSign', {'type': type});
  }
}
