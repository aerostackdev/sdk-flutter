//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:aerostack_sdk/src/model/chat_message.dart';
import 'package:aerostack_sdk/src/model/chat_completion_request_stream_options.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_completion_request.g.dart';

/// ChatCompletionRequest
///
/// Properties:
/// * [model] - Model identifier (provider-specific)
/// * [messages] 
/// * [stream] - When true, returns a server-sent events (SSE) stream of token deltas. Each event is `data: <json>\\n\\n`. The stream ends with `data: [DONE]\\n\\n`. 
/// * [streamOptions] 
/// * [temperature] - Sampling temperature (0=deterministic, 2=creative)
/// * [maxTokens] - Maximum tokens to generate
/// * [topP] - Nucleus sampling probability
@BuiltValue()
abstract class ChatCompletionRequest implements Built<ChatCompletionRequest, ChatCompletionRequestBuilder> {
  /// Model identifier (provider-specific)
  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'messages')
  BuiltList<ChatMessage> get messages;

  /// When true, returns a server-sent events (SSE) stream of token deltas. Each event is `data: <json>\\n\\n`. The stream ends with `data: [DONE]\\n\\n`. 
  @BuiltValueField(wireName: r'stream')
  bool? get stream;

  @BuiltValueField(wireName: r'stream_options')
  ChatCompletionRequestStreamOptions? get streamOptions;

  /// Sampling temperature (0=deterministic, 2=creative)
  @BuiltValueField(wireName: r'temperature')
  num? get temperature;

  /// Maximum tokens to generate
  @BuiltValueField(wireName: r'max_tokens')
  int? get maxTokens;

  /// Nucleus sampling probability
  @BuiltValueField(wireName: r'top_p')
  num? get topP;

  ChatCompletionRequest._();

  factory ChatCompletionRequest([void updates(ChatCompletionRequestBuilder b)]) = _$ChatCompletionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatCompletionRequestBuilder b) => b
      ..stream = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatCompletionRequest> get serializer => _$ChatCompletionRequestSerializer();
}

class _$ChatCompletionRequestSerializer implements PrimitiveSerializer<ChatCompletionRequest> {
  @override
  final Iterable<Type> types = const [ChatCompletionRequest, _$ChatCompletionRequest];

  @override
  final String wireName = r'ChatCompletionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatCompletionRequest object, {
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
      specifiedType: const FullType(BuiltList, [FullType(ChatMessage)]),
    );
    if (object.stream != null) {
      yield r'stream';
      yield serializers.serialize(
        object.stream,
        specifiedType: const FullType(bool),
      );
    }
    if (object.streamOptions != null) {
      yield r'stream_options';
      yield serializers.serialize(
        object.streamOptions,
        specifiedType: const FullType(ChatCompletionRequestStreamOptions),
      );
    }
    if (object.temperature != null) {
      yield r'temperature';
      yield serializers.serialize(
        object.temperature,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxTokens != null) {
      yield r'max_tokens';
      yield serializers.serialize(
        object.maxTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.topP != null) {
      yield r'top_p';
      yield serializers.serialize(
        object.topP,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatCompletionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatCompletionRequestBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(ChatMessage)]),
          ) as BuiltList<ChatMessage>;
          result.messages.replace(valueDes);
          break;
        case r'stream':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.stream = valueDes;
          break;
        case r'stream_options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChatCompletionRequestStreamOptions),
          ) as ChatCompletionRequestStreamOptions;
          result.streamOptions.replace(valueDes);
          break;
        case r'temperature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.temperature = valueDes;
          break;
        case r'max_tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxTokens = valueDes;
          break;
        case r'top_p':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.topP = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatCompletionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatCompletionRequestBuilder();
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

