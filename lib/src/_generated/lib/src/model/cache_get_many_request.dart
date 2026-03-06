//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_get_many_request.g.dart';

/// CacheGetManyRequest
///
/// Properties:
/// * [keys] - Keys to fetch (max 100)
@BuiltValue()
abstract class CacheGetManyRequest implements Built<CacheGetManyRequest, CacheGetManyRequestBuilder> {
  /// Keys to fetch (max 100)
  @BuiltValueField(wireName: r'keys')
  BuiltList<String> get keys;

  CacheGetManyRequest._();

  factory CacheGetManyRequest([void updates(CacheGetManyRequestBuilder b)]) = _$CacheGetManyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheGetManyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheGetManyRequest> get serializer => _$CacheGetManyRequestSerializer();
}

class _$CacheGetManyRequestSerializer implements PrimitiveSerializer<CacheGetManyRequest> {
  @override
  final Iterable<Type> types = const [CacheGetManyRequest, _$CacheGetManyRequest];

  @override
  final String wireName = r'CacheGetManyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheGetManyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'keys';
    yield serializers.serialize(
      object.keys,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheGetManyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheGetManyRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.keys.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheGetManyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheGetManyRequestBuilder();
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

