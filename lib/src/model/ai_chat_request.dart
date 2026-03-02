//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:aerostack_sdk/src/model/ai_chat_request_messages_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ai_chat_request.g.dart';

/// AiChatRequest
///
/// Properties:
/// * [model] 
/// * [messages] 
@BuiltValue()
abstract class AiChatRequest implements Built<AiChatRequest, AiChatRequestBuilder> {
  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'messages')
  BuiltList<AiChatRequestMessagesInner> get messages;

  AiChatRequest._();

  factory AiChatRequest([void updates(AiChatRequestBuilder b)]) = _$AiChatRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AiChatRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AiChatRequest> get serializer => _$AiChatRequestSerializer();
}

class _$AiChatRequestSerializer implements PrimitiveSerializer<AiChatRequest> {
  @override
  final Iterable<Type> types = const [AiChatRequest, _$AiChatRequest];

  @override
  final String wireName = r'AiChatRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AiChatRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    yield r'messages';
    yield serializers.serialize(
      object.messages,
      specifiedType: const FullType(BuiltList, [FullType(AiChatRequestMessagesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AiChatRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AiChatRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.model = valueDes;
          break;
        case r'messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AiChatRequestMessagesInner)]),
          ) as BuiltList<AiChatRequestMessagesInner>;
          result.messages.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AiChatRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AiChatRequestBuilder();
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

