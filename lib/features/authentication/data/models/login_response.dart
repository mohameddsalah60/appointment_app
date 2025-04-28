import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  bool? stutus;
  int? code;
  @JsonKey(name: 'data')
  UserData? userData;
  LoginResponse({this.message, this.stutus, this.code, this.userData});
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  String? userName;
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  UserData({this.token, this.userName});
}
