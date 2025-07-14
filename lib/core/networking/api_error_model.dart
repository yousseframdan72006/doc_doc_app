import 'package:flutter_complete_project/core/helpers/extensions.dart';
import 'package:json_annotation/json_annotation.dart';

part "api_error_model.g.dart";

@JsonSerializable()
class ApiErrorModel {
  final String message;
  final int? code;
  @JsonKey(name: "data")
  final Map<String, dynamic>? errors;

  ApiErrorModel({required this.message, this.code, this.errors});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  String getAllErrorMessage() {
    if (errors.isNullOrEmpty()) return message ?? "UnKonwn Error occurred";
    return errors!.entries
        .map((entrie) {
          final value = entrie.value;
          return "${value.join(",")}";
        })
        .join("\n");
  }
}
