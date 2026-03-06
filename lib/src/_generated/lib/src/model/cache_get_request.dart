//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_get_request.g.dart';

/// CacheGetRequest
///
/// Properties:
/// * [key] 
@BuiltValue()
abstract class CacheGetRequest implements Built<CacheGetRequest, CacheGetRequestBuilder> {
  @BuiltValueField(wireName: r'key')
  String get key;

  CacheGetRequest._();

  factory CacheGetRequest([void updates(CacheGetRequestBuilder b)]) = _$CacheGetRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheGetRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheGetRequest> get serializer => _$CacheGetRequestSerializer();
}

class _$CacheGetRequestSerializer implements PrimitiveSerializer<CacheGetRequest> {
  @override
  final Iterable<Type> types = const [CacheGetRequest, _$CacheGetRequest];

  @override
  final String wireName = r'CacheGetRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheGetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheGetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheGetRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheGetRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheGetRequestBuilder();
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

