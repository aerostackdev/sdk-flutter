//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_batch_result_results_inner.g.dart';

/// DbBatchResultResultsInner
///
/// Properties:
/// * [results] 
/// * [success] 
/// * [error] - Error message if this query failed
@BuiltValue()
abstract class DbBatchResultResultsInner implements Built<DbBatchResultResultsInner, DbBatchResultResultsInnerBuilder> {
  @BuiltValueField(wireName: r'results')
  BuiltList<BuiltMap<JsonObject?>?>? get results;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// Error message if this query failed
  @BuiltValueField(wireName: r'error')
  String? get error;

  DbBatchResultResultsInner._();

  factory DbBatchResultResultsInner([void updates(DbBatchResultResultsInnerBuilder b)]) = _$DbBatchResultResultsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbBatchResultResultsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbBatchResultResultsInner> get serializer => _$DbBatchResultResultsInnerSerializer();
}

class _$DbBatchResultResultsInnerSerializer implements PrimitiveSerializer<DbBatchResultResultsInner> {
  @override
  final Iterable<Type> types = const [DbBatchResultResultsInner, _$DbBatchResultResultsInner];

  @override
  final String wireName = r'DbBatchResultResultsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbBatchResultResultsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.results != null) {
      yield r'results';
      yield serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, [FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)])]),
      );
    }
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DbBatchResultResultsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbBatchResultResultsInnerBuilder result,
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
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DbBatchResultResultsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbBatchResultResultsInnerBuilder();
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

