//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:aerostack_sdk/src/model/chat_message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_completion_response_choices_inner.g.dart';

/// ChatCompletionResponseChoicesInner
///
/// Properties:
/// * [index] 
/// * [message] 
/// * [finishReason] 
@BuiltValue()
abstract class ChatCompletionResponseChoicesInner implements Built<ChatCompletionResponseChoicesInner, ChatCompletionResponseChoicesInnerBuilder> {
  @BuiltValueField(wireName: r'index')
  int? get index;

  @BuiltValueField(wireName: r'message')
  ChatMessage? get message;

  @BuiltValueField(wireName: r'finish_reason')
  ChatCompletionResponseChoicesInnerFinishReasonEnum? get finishReason;
  // enum finishReasonEnum {  stop,  length,  content_filter,  };

  ChatCompletionResponseChoicesInner._();

  factory ChatCompletionResponseChoicesInner([void updates(ChatCompletionResponseChoicesInnerBuilder b)]) = _$ChatCompletionResponseChoicesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatCompletionResponseChoicesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatCompletionResponseChoicesInner> get serializer => _$ChatCompletionResponseChoicesInnerSerializer();
}

class _$ChatCompletionResponseChoicesInnerSerializer implements PrimitiveSerializer<ChatCompletionResponseChoicesInner> {
  @override
  final Iterable<Type> types = const [ChatCompletionResponseChoicesInner, _$ChatCompletionResponseChoicesInner];

  @override
  final String wireName = r'ChatCompletionResponseChoicesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatCompletionResponseChoicesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.index != null) {
      yield r'index';
      yield serializers.serialize(
        object.index,
        specifiedType: const FullType(int),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(ChatMessage),
      );
    }
    if (object.finishReason != null) {
      yield r'finish_reason';
      yield serializers.serialize(
        object.finishReason,
        specifiedType: const FullType(ChatCompletionResponseChoicesInnerFinishReasonEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatCompletionResponseChoicesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatCompletionResponseChoicesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.index = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChatMessage),
          ) as ChatMessage;
          result.message.replace(valueDes);
          break;
        case r'finish_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChatCompletionResponseChoicesInnerFinishReasonEnum),
          ) as ChatCompletionResponseChoicesInnerFinishReasonEnum;
          result.finishReason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatCompletionResponseChoicesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatCompletionResponseChoicesInnerBuilder();
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

class ChatCompletionResponseChoicesInnerFinishReasonEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'stop')
  static const ChatCompletionResponseChoicesInnerFinishReasonEnum stop = _$chatCompletionResponseChoicesInnerFinishReasonEnum_stop;
  @BuiltValueEnumConst(wireName: r'length')
  static const ChatCompletionResponseChoicesInnerFinishReasonEnum length = _$chatCompletionResponseChoicesInnerFinishReasonEnum_length;
  @BuiltValueEnumConst(wireName: r'content_filter')
  static const ChatCompletionResponseChoicesInnerFinishReasonEnum contentFilter = _$chatCompletionResponseChoicesInnerFinishReasonEnum_contentFilter;

  static Serializer<ChatCompletionResponseChoicesInnerFinishReasonEnum> get serializer => _$chatCompletionResponseChoicesInnerFinishReasonEnumSerializer;

  const ChatCompletionResponseChoicesInnerFinishReasonEnum._(String name): super(name);

  static BuiltSet<ChatCompletionResponseChoicesInnerFinishReasonEnum> get values => _$chatCompletionResponseChoicesInnerFinishReasonEnumValues;
  static ChatCompletionResponseChoicesInnerFinishReasonEnum valueOf(String name) => _$chatCompletionResponseChoicesInnerFinishReasonEnumValueOf(name);
}

