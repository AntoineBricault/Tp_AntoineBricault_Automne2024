import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'transfert.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.

@JsonSerializable()
class SignupRequest {
  SignupRequest();

  String username = '';
  String password = '';

  factory SignupRequest.fromJson(Map<String, dynamic> json) =>
      _$SignupRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignupRequestToJson(this);
}

@JsonSerializable()
class SignupResponse {
  SignupResponse();

  String username = '';

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignupResponseToJson(this);
}

@JsonSerializable()
class SigninRequest {
  SigninRequest();

  String username = '';
  String password = '';

  factory SigninRequest.fromJson(Map<String, dynamic> json) =>
      _$SigninRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SigninRequestToJson(this);
}

@JsonSerializable()
class SigninResponse {
  SigninResponse();

  String username = '';

  factory SigninResponse.fromJson(Map<String, dynamic> json) =>
      _$SigninResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SigninResponseToJson(this);
}

@JsonSerializable()
class AddTaskRequest {
  AddTaskRequest();

  String name = '';

  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  DateTime deadline = DateTime.now();

  factory AddTaskRequest.fromJson(Map<String, dynamic> json) =>
      _$AddTaskRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddTaskRequestToJson(this);
}

//commande a utiliser dans le terminal pour regénérer le code
//flutter pub run build_runner build
final _dateFormatter = DateFormat("yyyy-MM-dd'T'HH:mm:ss");

DateTime _fromJson(String date) => _dateFormatter.parse(date);

String _toJson(DateTime date) => _dateFormatter.format(date);