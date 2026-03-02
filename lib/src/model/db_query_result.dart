//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_query_result.g.dart';

/// DbQueryResult
///
/// Properties:
/// * [results] 
/// * [count] 
@BuiltValue()
abstract class DbQueryResult implements Built<DbQueryResult, DbQueryResultBuilder> {
  @BuiltValueField(wireName: r'results')
  BuiltList<BuiltMap<JsonObject?>?>? get results;

  @BuiltValueField(wireName: r'count')
  int? get count;

  DbQueryResult._();

  factory DbQueryResult([void updates(DbQueryResultBuilder b)]) = _$DbQueryResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbQueryResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbQueryResult> get serializer => _$DbQueryResultSerializer();
}

class _$DbQueryResultSerializer implements PrimitiveSerializer<DbQueryResult> {
  @override
  final Iterable<Type> types = const [DbQueryResult, _$DbQueryResult];

  @override
  final String wireName = r'DbQueryResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbQueryResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.results != null) {
      yield r'results';
      yield serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, [FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)])]),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DbQueryResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbQueryResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<JsonObject?>?>;
          result.results.replace(valueDes);
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DbQueryResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbQueryResultBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

