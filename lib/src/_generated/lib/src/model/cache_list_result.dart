//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:aerostack_sdk/src/model/cache_key_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_list_result.g.dart';

/// CacheListResult
///
/// Properties:
/// * [keys] 
/// * [listComplete] - True if all keys were returned; false if more pages exist
/// * [cursor] - Use this cursor to fetch the next page
@BuiltValue()
abstract class CacheListResult implements Built<CacheListResult, CacheListResultBuilder> {
  @BuiltValueField(wireName: r'keys')
  BuiltList<CacheKeyEntry>? get keys;

  /// True if all keys were returned; false if more pages exist
  @BuiltValueField(wireName: r'list_complete')
  bool? get listComplete;

  /// Use this cursor to fetch the next page
  @BuiltValueField(wireName: r'cursor')
  String? get cursor;

  CacheListResult._();

  factory CacheListResult([void updates(CacheListResultBuilder b)]) = _$CacheListResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheListResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheListResult> get serializer => _$CacheListResultSerializer();
}

class _$CacheListResultSerializer implements PrimitiveSerializer<CacheListResult> {
  @override
  final Iterable<Type> types = const [CacheListResult, _$CacheListResult];

  @override
  final String wireName = r'CacheListResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheListResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.keys != null) {
      yield r'keys';
      yield serializers.serialize(
        object.keys,
        specifiedType: const FullType(BuiltList, [FullType(CacheKeyEntry)]),
      );
    }
    if (object.listComplete != null) {
      yield r'list_complete';
      yield serializers.serialize(
        object.listComplete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cursor != null) {
      yield r'cursor';
      yield serializers.serialize(
        object.cursor,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheListResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheListResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CacheKeyEntry)]),
          ) as BuiltList<CacheKeyEntry>;
          result.keys.replace(valueDes);
          break;
        case r'list_complete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.listComplete = valueDes;
          break;
        case r'cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheListResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheListResultBuilder();
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

