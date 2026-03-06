//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_expire_request.g.dart';

/// CacheExpireRequest
///
/// Properties:
/// * [key] 
/// * [ttl] - New TTL in seconds from now
@BuiltValue()
abstract class CacheExpireRequest implements Built<CacheExpireRequest, CacheExpireRequestBuilder> {
  @BuiltValueField(wireName: r'key')
  String get key;

  /// New TTL in seconds from now
  @BuiltValueField(wireName: r'ttl')
  int get ttl;

  CacheExpireRequest._();

  factory CacheExpireRequest([void updates(CacheExpireRequestBuilder b)]) = _$CacheExpireRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheExpireRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheExpireRequest> get serializer => _$CacheExpireRequestSerializer();
}

class _$CacheExpireRequestSerializer implements PrimitiveSerializer<CacheExpireRequest> {
  @override
  final Iterable<Type> types = const [CacheExpireRequest, _$CacheExpireRequest];

  @override
  final String wireName = r'CacheExpireRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheExpireRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'ttl';
    yield serializers.serialize(
      object.ttl,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheExpireRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheExpireRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'ttl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ttl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheExpireRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheExpireRequestBuilder();
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

