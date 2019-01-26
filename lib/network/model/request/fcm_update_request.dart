import 'package:json_annotation/json_annotation.dart';
import 'package:kalium_wallet_flutter/network/model/request/actions.dart';
import 'package:kalium_wallet_flutter/network/model/base_request.dart';

part 'fcm_update_request.g.dart';

@JsonSerializable()
class FcmUpdateRequest extends BaseRequest {
  @JsonKey(name:'action')
  String action;

  @JsonKey(name:'account', includeIfNull: false)
  String account;

  @JsonKey(name:'fcm_token_v2', includeIfNull: false)
  String fcmToken;

  FcmUpdateRequest({String account, String fcmToken}) : super() {
    this.action = Actions.FCM_UPDATE;
    this.account = account;
    this.fcmToken = fcmToken;
  }

  factory FcmUpdateRequest.fromJson(Map<String, dynamic> json) => _$FcmUpdateRequestFromJson(json);
  Map<String, dynamic> toJson() => _$FcmUpdateRequestToJson(this);
}