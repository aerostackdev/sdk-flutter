//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:aerostack_sdk/src/model/chat_completion_response_choices_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:aerostack_sdk/src/model/token_usage.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_completion_response.g.dart';

/// ChatCompletionResponse
///
/// Properties:
/// * [id] - Unique completion ID
/// * [object] 
/// * [created] - Unix timestamp
/// * [model] - Model used for completion
/// * [choices] 
/// * [usage] 
@BuiltValue()
abstract class ChatCompletionResponse implements Built<ChatCompletionResponse, ChatCompletionResponseBuilder> {
  /// Unique completion ID
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'object')
  ChatCompletionResponseObjectEnum? get object;
  // enum objectEnum {  chat.completion,  };

  /// Unix timestamp
  @BuiltValueField(wireName: r'created')
  int? get created;

  /// Model used for completion
  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'choices')
  BuiltList<ChatCompletionResponseChoicesInner>? get choices;

  @BuiltValueField(wireName: r'usage')
  TokenUsage? get usage;

  ChatCompletionResponse._();

  factory ChatCompletionResponse([void updates(ChatCompletionResponseBuilder b)]) = _$ChatCompletionResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatCompletionResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatCompletionResponse> get serializer => _$ChatCompletionResponseSerializer();
}

class _$ChatCompletionResponseSerializer implements PrimitiveSerializer<ChatCompletionResponse> {
  @override
  final Iterable<Type> types = const [ChatCompletionResponse, _$ChatCompletionResponse];

  @override
  final String wireName = r'ChatCompletionResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatCompletionResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.object != null) {
      yield r'object';
      yield serializers.serialize(
        object.object,
        specifiedType: const FullType(ChatCompletionResponseObjectEnum),
      );
    }
    if (object.created != null) {
      yield r'created';
      yield serializers.serialize(
        object.created,
        specifiedType: const FullType(int),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.choices != null) {
      yield r'choices';
      yield serializers.serialize(
        object.choices,
        specifiedType: const FullType(BuiltList, [FullType(ChatCompletionResponseChoicesInner)]),
      );
    }
    if (object.usage != null) {
      yield r'usage';
      yield serializers.serialize(
        object.usage,
        specifiedType: const FullType(TokenUsage),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatCompletionResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatCompletionResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'object':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChatCompletionResponseObjectEnum),
          ) as ChatCompletionResponseObjectEnum;
          result.object = valueDes;
          break;
        case r'created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.created = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.model = valueDes;
          break;
        case r'choices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ChatCompletionResponseChoicesInner)]),
          ) as BuiltList<ChatCompletionResponseChoicesInner>;
          result.choices.replace(valueDes);
          break;
        case r'usage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokenUsage),
          ) as TokenUsage;
          result.usage.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatCompletionResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatCompletionResponseBuilder();
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

class ChatCompletionResponseObjectEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'chat.completion')
  static const ChatCompletionResponseObjectEnum chatPeriodCompletion = _$chatCompletionResponseObjectEnum_chatPeriodCompletion;

  static Serializer<ChatCompletionResponseObjectEnum> get serializer => _$chatCompletionResponseObjectEnumSerializer;

  const ChatCompletionResponseObjectEnum._(String name): super(name);

  static BuiltSet<ChatCompletionResponseObjectEnum> get values => _$chatCompletionResponseObjectEnumValues;
  static ChatCompletionResponseObjectEnum valueOf(String name) => _$chatCompletionResponseObjectEnumValueOf(name);
}

