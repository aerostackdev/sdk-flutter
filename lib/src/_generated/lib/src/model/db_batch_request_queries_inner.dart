//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_batch_request_queries_inner.g.dart';

/// DbBatchRequestQueriesInner
///
/// Properties:
/// * [sql] - SQL query to execute
/// * [params] 
@BuiltValue()
abstract class DbBatchRequestQueriesInner implements Built<DbBatchRequestQueriesInner, DbBatchRequestQueriesInnerBuilder> {
  /// SQL query to execute
  @BuiltValueField(wireName: r'sql')
  String get sql;

  @BuiltValueField(wireName: r'params')
  BuiltList<JsonObject?>? get params;

  DbBatchRequestQueriesInner._();

  factory DbBatchRequestQueriesInner([void updates(DbBatchRequestQueriesInnerBuilder b)]) = _$DbBatchRequestQueriesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbBatchRequestQueriesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbBatchRequestQueriesInner> get serializer => _$DbBatchRequestQueriesInnerSerializer();
}

class _$DbBatchRequestQueriesInnerSerializer implements PrimitiveSerializer<DbBatchRequestQueriesInner> {
  @override
  final Iterable<Type> types = const [DbBatchRequestQueriesInner, _$DbBatchRequestQueriesInner];

  @override
  final String wireName = r'DbBatchRequestQueriesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbBatchRequestQueriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sql';
    yield serializers.serialize(
      object.sql,
      specifiedType: const FullType(String),
    );
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DbBatchRequestQueriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbBatchRequestQueriesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sql':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sql = valueDes;
          break;
        case r'params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)]),
          ) as BuiltList<JsonObject?>;
          result.params.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DbBatchRequestQueriesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbBatchRequestQueriesInnerBuilder();
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

