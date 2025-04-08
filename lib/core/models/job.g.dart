// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  companyName: json['companyName'] as String,
  country: json['country'] as String,
  location: json['location'] as String,
  fullJobDescription: json['fullJobDescription'] as String,
);

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'companyName': instance.companyName,
  'country': instance.country,
  'location': instance.location,
  'fullJobDescription': instance.fullJobDescription,
};
