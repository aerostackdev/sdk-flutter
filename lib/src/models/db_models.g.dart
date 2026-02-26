// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DbQueryResult _$DbQueryResultFromJson(Map<String, dynamic> json) =>
    DbQueryResult(
      results: (json['results'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$DbQueryResultToJson(DbQueryResult instance) =>
    <String, dynamic>{
      'results': instance.results,
      'count': instance.count,
    };
