//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ai_chat200_response.g.dart';

/// AiChat200Response
///
/// Properties:
/// * [response] 
@BuiltValue()
abstract class AiChat200Response implements Built<AiChat200Response, AiChat200ResponseBuilder> {
  @BuiltValueField(wireName: r'response')
  String? get response;

  AiChat200Response._();

  factory AiChat200Response([void updates(AiChat200ResponseBuilder b)]) = _$AiChat200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AiChat200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AiChat200Response> get serializer => _$AiChat200ResponseSerializer();
}

class _$AiChat200ResponseSerializer implements PrimitiveSerializer<AiChat200Response> {
  @override
  final Iterable<Type> types = const [AiChat200Response, _$AiChat200Response];

  @override
  final String wireName = r'AiChat200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AiChat200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.response != null) {
      yield r'response';
      yield serializers.serialize(
        object.response,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AiChat200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AiChat200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'response':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.response = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AiChat200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AiChat200ResponseBuilder();
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

