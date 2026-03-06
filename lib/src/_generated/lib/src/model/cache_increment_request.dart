//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_increment_request.g.dart';

/// CacheIncrementRequest
///
/// Properties:
/// * [key] 
/// * [amount] - Amount to increment by (default 1, can be negative)
/// * [initialValue] - Starting value if key does not exist (default 0)
/// * [ttl] - TTL in seconds for newly created keys
@BuiltValue()
abstract class CacheIncrementRequest implements Built<CacheIncrementRequest, CacheIncrementRequestBuilder> {
  @BuiltValueField(wireName: r'key')
  String get key;

  /// Amount to increment by (default 1, can be negative)
  @BuiltValueField(wireName: r'amount')
  int? get amount;

  /// Starting value if key does not exist (default 0)
  @BuiltValueField(wireName: r'initialValue')
  int? get initialValue;

  /// TTL in seconds for newly created keys
  @BuiltValueField(wireName: r'ttl')
  int? get ttl;

  CacheIncrementRequest._();

  factory CacheIncrementRequest([void updates(CacheIncrementRequestBuilder b)]) = _$CacheIncrementRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheIncrementRequestBuilder b) => b
      ..amount = 1
      ..initialValue = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheIncrementRequest> get serializer => _$CacheIncrementRequestSerializer();
}

class _$CacheIncrementRequestSerializer implements PrimitiveSerializer<CacheIncrementRequest> {
  @override
  final Iterable<Type> types = const [CacheIncrementRequest, _$CacheIncrementRequest];

  @override
  final String wireName = r'CacheIncrementRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheIncrementRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(int),
      );
    }
    if (object.initialValue != null) {
      yield r'initialValue';
      yield serializers.serialize(
        object.initialValue,
        specifiedType: const FullType(int),
      );
    }
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
    CacheIncrementRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheIncrementRequestBuilder result,
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
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.amount = valueDes;
          break;
        case r'initialValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.initialValue = valueDes;
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
  CacheIncrementRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheIncrementRequestBuilder();
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

