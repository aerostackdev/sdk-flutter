//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:aerostack_sdk/src/model/cache_set_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_set_many_request.g.dart';

/// CacheSetManyRequest
///
/// Properties:
/// * [entries] - Entries to cache (max 100)
@BuiltValue()
abstract class CacheSetManyRequest implements Built<CacheSetManyRequest, CacheSetManyRequestBuilder> {
  /// Entries to cache (max 100)
  @BuiltValueField(wireName: r'entries')
  BuiltList<CacheSetEntry> get entries;

  CacheSetManyRequest._();

  factory CacheSetManyRequest([void updates(CacheSetManyRequestBuilder b)]) = _$CacheSetManyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheSetManyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheSetManyRequest> get serializer => _$CacheSetManyRequestSerializer();
}

class _$CacheSetManyRequestSerializer implements PrimitiveSerializer<CacheSetManyRequest> {
  @override
  final Iterable<Type> types = const [CacheSetManyRequest, _$CacheSetManyRequest];

  @override
  final String wireName = r'CacheSetManyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheSetManyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entries';
    yield serializers.serialize(
      object.entries,
      specifiedType: const FullType(BuiltList, [FullType(CacheSetEntry)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheSetManyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheSetManyRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CacheSetEntry)]),
          ) as BuiltList<CacheSetEntry>;
          result.entries.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheSetManyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheSetManyRequestBuilder();
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

