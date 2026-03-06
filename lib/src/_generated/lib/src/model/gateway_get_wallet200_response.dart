//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:aerostack_sdk/src/model/token_wallet.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gateway_get_wallet200_response.g.dart';

/// GatewayGetWallet200Response
///
/// Properties:
/// * [wallet] 
@BuiltValue()
abstract class GatewayGetWallet200Response implements Built<GatewayGetWallet200Response, GatewayGetWallet200ResponseBuilder> {
  @BuiltValueField(wireName: r'wallet')
  TokenWallet? get wallet;

  GatewayGetWallet200Response._();

  factory GatewayGetWallet200Response([void updates(GatewayGetWallet200ResponseBuilder b)]) = _$GatewayGetWallet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GatewayGetWallet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GatewayGetWallet200Response> get serializer => _$GatewayGetWallet200ResponseSerializer();
}

class _$GatewayGetWallet200ResponseSerializer implements PrimitiveSerializer<GatewayGetWallet200Response> {
  @override
  final Iterable<Type> types = const [GatewayGetWallet200Response, _$GatewayGetWallet200Response];

  @override
  final String wireName = r'GatewayGetWallet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GatewayGetWallet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.wallet != null) {
      yield r'wallet';
      yield serializers.serialize(
        object.wallet,
        specifiedType: const FullType(TokenWallet),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GatewayGetWallet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GatewayGetWallet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'wallet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokenWallet),
          ) as TokenWallet;
          result.wallet.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GatewayGetWallet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GatewayGetWallet200ResponseBuilder();
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

