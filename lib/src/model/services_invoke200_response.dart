//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'services_invoke200_response.g.dart';

/// ServicesInvoke200Response
///
/// Properties:
/// * [success] 
/// * [result] 
@BuiltValue()
abstract class ServicesInvoke200Response implements Built<ServicesInvoke200Response, ServicesInvoke200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'result')
  JsonObject? get result;

  ServicesInvoke200Response._();

  factory ServicesInvoke200Response([void updates(ServicesInvoke200ResponseBuilder b)]) = _$ServicesInvoke200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServicesInvoke200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServicesInvoke200Response> get serializer => _$ServicesInvoke200ResponseSerializer();
}

class _$ServicesInvoke200ResponseSerializer implements PrimitiveSerializer<ServicesInvoke200Response> {
  @override
  final Iterable<Type> types = const [ServicesInvoke200Response, _$ServicesInvoke200Response];

  @override
  final String wireName = r'ServicesInvoke200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServicesInvoke200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServicesInvoke200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServicesInvoke200ResponseBuilder result,
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
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.result = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServicesInvoke200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServicesInvoke200ResponseBuilder();
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

