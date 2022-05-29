import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'postal_code.freezed.dart';
part 'postal_code.g.dart';

@freezed
class PostalCode with _$PostalCode {
  const factory PostalCode({
    required String code,
    required List<PostalCodeData> data,
  }) = _PostalCode;

  factory PostalCode.fromJson(Map<String, dynamic> json) =>
      _$PostalCodeFromJson(json);

  static const empty = PostalCode(code: '', data: []);
}

@freezed
class PostalCodeData with _$PostalCodeData {
  const factory PostalCodeData({
    required String prefcode,
    required PostalCodeAdress ja,
    required PostalCodeAdress en,
  }) = _PostalCodeData;

  factory PostalCodeData.fromJson(Map<String, dynamic> json) =>
      _$PostalCodeDataFromJson(json);
}

@freezed
class PostalCodeAdress with _$PostalCodeAdress {
  const factory PostalCodeAdress({
    required String prefecture,
    required String address1,
    required String address2,
    required String address3,
    required String address4,
  }) = _PostalCodeAdress;

  factory PostalCodeAdress.fromJson(Map<String, dynamic> json) =>
      _$PostalCodeAdressFromJson(json);
}
