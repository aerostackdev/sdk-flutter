//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_keys_request.g.dart';

/// CacheKeysRequest
///
/// Properties:
/// * [prefix] - Key prefix to filter by
@BuiltValue()
abstract class CacheKeysRequest implements Built<CacheKeysRequest, CacheKeysRequestBuilder> {
  /// Key prefix to filter by
  @BuiltValueField(wireName: r'prefix')
  String? get prefix;

  CacheKeysRequest._();

  factory CacheKeysRequest([void updates(CacheKeysRequestBuilder b)]) = _$CacheKeysRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheKeysRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheKeysRequest> get serializer => _$CacheKeysRequestSerializer();
}

class _$CacheKeysRequestSerializer implements PrimitiveSerializer<CacheKeysRequest> {
  @override
  final Iterable<Type> types = const [CacheKeysRequest, _$CacheKeysRequest];

  @override
  final String wireName = r'CacheKeysRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheKeysRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.prefix != null) {
      yield r'prefix';
      yield serializers.serialize(
        object.prefix,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheKeysRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheKeysRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'prefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prefix = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheKeysRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheKeysRequestBuilder();
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

