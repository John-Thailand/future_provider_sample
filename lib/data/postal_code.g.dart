// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postal_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostalCode _$$_PostalCodeFromJson(Map<String, dynamic> json) =>
    _$_PostalCode(
      code: json['code'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => PostalCodeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostalCodeToJson(_$_PostalCode instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_PostalCodeData _$$_PostalCodeDataFromJson(Map<String, dynamic> json) =>
    _$_PostalCodeData(
      prefcode: json['prefcode'] as String,
      ja: PostalCodeAdress.fromJson(json['ja'] as Map<String, dynamic>),
      en: PostalCodeAdress.fromJson(json['en'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PostalCodeDataToJson(_$_PostalCodeData instance) =>
    <String, dynamic>{
      'prefcode': instance.prefcode,
      'ja': instance.ja,
      'en': instance.en,
    };

_$_PostalCodeAdress _$$_PostalCodeAdressFromJson(Map<String, dynamic> json) =>
    _$_PostalCodeAdress(
      prefecture: json['prefecture'] as String,
      address1: json['address1'] as String,
      address2: json['address2'] as String,
      address3: json['address3'] as String,
      address4: json['address4'] as String,
    );

Map<String, dynamic> _$$_PostalCodeAdressToJson(_$_PostalCodeAdress instance) =>
    <String, dynamic>{
      'prefecture': instance.prefecture,
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'address4': instance.address4,
    };
