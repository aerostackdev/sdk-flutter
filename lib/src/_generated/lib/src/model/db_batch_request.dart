//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:aerostack_sdk/src/model/db_batch_request_queries_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_batch_request.g.dart';

/// DbBatchRequest
///
/// Properties:
/// * [queries] - Array of queries to execute (max 25)
@BuiltValue()
abstract class DbBatchRequest implements Built<DbBatchRequest, DbBatchRequestBuilder> {
  /// Array of queries to execute (max 25)
  @BuiltValueField(wireName: r'queries')
  BuiltList<DbBatchRequestQueriesInner> get queries;

  DbBatchRequest._();

  factory DbBatchRequest([void updates(DbBatchRequestBuilder b)]) = _$DbBatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbBatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbBatchRequest> get serializer => _$DbBatchRequestSerializer();
}

class _$DbBatchRequestSerializer implements PrimitiveSerializer<DbBatchRequest> {
  @override
  final Iterable<Type> types = const [DbBatchRequest, _$DbBatchRequest];

  @override
  final String wireName = r'DbBatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbBatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'queries';
    yield serializers.serialize(
      object.queries,
      specifiedType: const FullType(BuiltList, [FullType(DbBatchRequestQueriesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DbBatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbBatchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'queries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DbBatchRequestQueriesInner)]),
          ) as BuiltList<DbBatchRequestQueriesInner>;
          result.queries.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DbBatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbBatchRequestBuilder();
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

