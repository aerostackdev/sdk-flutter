//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gateway_billing_log200_response.g.dart';

/// GatewayBillingLog200Response
///
/// Properties:
/// * [success] 
/// * [loggedUnits] 
@BuiltValue()
abstract class GatewayBillingLog200Response implements Built<GatewayBillingLog200Response, GatewayBillingLog200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'loggedUnits')
  int? get loggedUnits;

  GatewayBillingLog200Response._();

  factory GatewayBillingLog200Response([void updates(GatewayBillingLog200ResponseBuilder b)]) = _$GatewayBillingLog200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GatewayBillingLog200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GatewayBillingLog200Response> get serializer => _$GatewayBillingLog200ResponseSerializer();
}

class _$GatewayBillingLog200ResponseSerializer implements PrimitiveSerializer<GatewayBillingLog200Response> {
  @override
  final Iterable<Type> types = const [GatewayBillingLog200Response, _$GatewayBillingLog200Response];

  @override
  final String wireName = r'GatewayBillingLog200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GatewayBillingLog200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.loggedUnits != null) {
      yield r'loggedUnits';
      yield serializers.serialize(
        object.loggedUnits,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GatewayBillingLog200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GatewayBillingLog200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'loggedUnits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.loggedUnits = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GatewayBillingLog200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GatewayBillingLog200ResponseBuilder();
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

