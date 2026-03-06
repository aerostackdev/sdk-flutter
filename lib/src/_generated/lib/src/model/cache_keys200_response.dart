//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_keys200_response.g.dart';

/// CacheKeys200Response
///
/// Properties:
/// * [keys] 
/// * [truncated] - True if the result was capped at 10,000 keys
@BuiltValue()
abstract class CacheKeys200Response implements Built<CacheKeys200Response, CacheKeys200ResponseBuilder> {
  @BuiltValueField(wireName: r'keys')
  BuiltList<String>? get keys;

  /// True if the result was capped at 10,000 keys
  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  CacheKeys200Response._();

  factory CacheKeys200Response([void updates(CacheKeys200ResponseBuilder b)]) = _$CacheKeys200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheKeys200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheKeys200Response> get serializer => _$CacheKeys200ResponseSerializer();
}

class _$CacheKeys200ResponseSerializer implements PrimitiveSerializer<CacheKeys200Response> {
  @override
  final Iterable<Type> types = const [CacheKeys200Response, _$CacheKeys200Response];

  @override
  final String wireName = r'CacheKeys200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheKeys200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.keys != null) {
      yield r'keys';
      yield serializers.serialize(
        object.keys,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheKeys200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheKeys200ResponseBuilder result,
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
        case r'truncated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.truncated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheKeys200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheKeys200ResponseBuilder();
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

