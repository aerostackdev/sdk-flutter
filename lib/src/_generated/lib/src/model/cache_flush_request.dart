//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_flush_request.g.dart';

/// CacheFlushRequest
///
/// Properties:
/// * [prefix] - Key prefix to flush. Omit to flush all project keys.
@BuiltValue()
abstract class CacheFlushRequest implements Built<CacheFlushRequest, CacheFlushRequestBuilder> {
  /// Key prefix to flush. Omit to flush all project keys.
  @BuiltValueField(wireName: r'prefix')
  String? get prefix;

  CacheFlushRequest._();

  factory CacheFlushRequest([void updates(CacheFlushRequestBuilder b)]) = _$CacheFlushRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheFlushRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheFlushRequest> get serializer => _$CacheFlushRequestSerializer();
}

class _$CacheFlushRequestSerializer implements PrimitiveSerializer<CacheFlushRequest> {
  @override
  final Iterable<Type> types = const [CacheFlushRequest, _$CacheFlushRequest];

  @override
  final String wireName = r'CacheFlushRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheFlushRequest object, {
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
    CacheFlushRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheFlushRequestBuilder result,
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
  CacheFlushRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheFlushRequestBuilder();
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

