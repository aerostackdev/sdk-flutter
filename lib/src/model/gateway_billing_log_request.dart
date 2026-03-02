//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gateway_billing_log_request.g.dart';

/// GatewayBillingLogRequest
///
/// Properties:
/// * [consumerId] - The Consumer ID making the request
/// * [apiId] - The Developer Gateway API ID being consumed
/// * [metric] - Optional metric name (default: 'units')
/// * [units] - Amount of usage to log
@BuiltValue()
abstract class GatewayBillingLogRequest implements Built<GatewayBillingLogRequest, GatewayBillingLogRequestBuilder> {
  /// The Consumer ID making the request
  @BuiltValueField(wireName: r'consumerId')
  String get consumerId;

  /// The Developer Gateway API ID being consumed
  @BuiltValueField(wireName: r'apiId')
  String get apiId;

  /// Optional metric name (default: 'units')
  @BuiltValueField(wireName: r'metric')
  String? get metric;

  /// Amount of usage to log
  @BuiltValueField(wireName: r'units')
  int get units;

  GatewayBillingLogRequest._();

  factory GatewayBillingLogRequest([void updates(GatewayBillingLogRequestBuilder b)]) = _$GatewayBillingLogRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GatewayBillingLogRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GatewayBillingLogRequest> get serializer => _$GatewayBillingLogRequestSerializer();
}

class _$GatewayBillingLogRequestSerializer implements PrimitiveSerializer<GatewayBillingLogRequest> {
  @override
  final Iterable<Type> types = const [GatewayBillingLogRequest, _$GatewayBillingLogRequest];

  @override
  final String wireName = r'GatewayBillingLogRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GatewayBillingLogRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'consumerId';
    yield serializers.serialize(
      object.consumerId,
      specifiedType: const FullType(String),
    );
    yield r'apiId';
    yield serializers.serialize(
      object.apiId,
      specifiedType: const FullType(String),
    );
    if (object.metric != null) {
      yield r'metric';
      yield serializers.serialize(
        object.metric,
        specifiedType: const FullType(String),
      );
    }
    yield r'units';
    yield serializers.serialize(
      object.units,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GatewayBillingLogRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GatewayBillingLogRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'consumerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.consumerId = valueDes;
          break;
        case r'apiId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiId = valueDes;
          break;
        case r'metric':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.metric = valueDes;
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.units = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GatewayBillingLogRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GatewayBillingLogRequestBuilder();
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

