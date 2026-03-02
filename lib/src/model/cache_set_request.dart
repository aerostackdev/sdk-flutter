//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_set_request.g.dart';

/// CacheSetRequest
///
/// Properties:
/// * [key] 
/// * [value] 
/// * [ttl] - Time to live in seconds
@BuiltValue()
abstract class CacheSetRequest implements Built<CacheSetRequest, CacheSetRequestBuilder> {
  @BuiltValueField(wireName: r'key')
  String get key;

  @BuiltValueField(wireName: r'value')
  JsonObject? get value;

  /// Time to live in seconds
  @BuiltValueField(wireName: r'ttl')
  int? get ttl;

  CacheSetRequest._();

  factory CacheSetRequest([void updates(CacheSetRequestBuilder b)]) = _$CacheSetRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheSetRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheSetRequest> get serializer => _$CacheSetRequestSerializer();
}

class _$CacheSetRequestSerializer implements PrimitiveSerializer<CacheSetRequest> {
  @override
  final Iterable<Type> types = const [CacheSetRequest, _$CacheSetRequest];

  @override
  final String wireName = r'CacheSetRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheSetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield object.value == null ? null : serializers.serialize(
      object.value,
      specifiedType: const FullType.nullable(JsonObject),
    );
    if (object.ttl != null) {
      yield r'ttl';
      yield serializers.serialize(
        object.ttl,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheSetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheSetRequestBuilder result,
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
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.value = valueDes;
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
  CacheSetRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheSetRequestBuilder();
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

