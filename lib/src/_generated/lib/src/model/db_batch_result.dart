//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:aerostack_sdk/src/model/db_batch_result_results_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_batch_result.g.dart';

/// DbBatchResult
///
/// Properties:
/// * [results] - One entry per query, in request order
/// * [success] - True only if ALL queries succeeded
@BuiltValue()
abstract class DbBatchResult implements Built<DbBatchResult, DbBatchResultBuilder> {
  /// One entry per query, in request order
  @BuiltValueField(wireName: r'results')
  BuiltList<DbBatchResultResultsInner>? get results;

  /// True only if ALL queries succeeded
  @BuiltValueField(wireName: r'success')
  bool? get success;

  DbBatchResult._();

  factory DbBatchResult([void updates(DbBatchResultBuilder b)]) = _$DbBatchResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbBatchResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbBatchResult> get serializer => _$DbBatchResultSerializer();
}

class _$DbBatchResultSerializer implements PrimitiveSerializer<DbBatchResult> {
  @override
  final Iterable<Type> types = const [DbBatchResult, _$DbBatchResult];

  @override
  final String wireName = r'DbBatchResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbBatchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.results != null) {
      yield r'results';
      yield serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, [FullType(DbBatchResultResultsInner)]),
      );
    }
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DbBatchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbBatchResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DbBatchResultResultsInner)]),
          ) as BuiltList<DbBatchResultResultsInner>;
          result.results.replace(valueDes);
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DbBatchResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbBatchResultBuilder();
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

