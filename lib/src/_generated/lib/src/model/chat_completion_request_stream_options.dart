//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_completion_request_stream_options.g.dart';

/// ChatCompletionRequestStreamOptions
///
/// Properties:
/// * [includeUsage] - Include token usage in the final SSE frame when streaming. The last data frame before [DONE] will contain a `usage` object. 
@BuiltValue()
abstract class ChatCompletionRequestStreamOptions implements Built<ChatCompletionRequestStreamOptions, ChatCompletionRequestStreamOptionsBuilder> {
  /// Include token usage in the final SSE frame when streaming. The last data frame before [DONE] will contain a `usage` object. 
  @BuiltValueField(wireName: r'include_usage')
  bool? get includeUsage;

  ChatCompletionRequestStreamOptions._();

  factory ChatCompletionRequestStreamOptions([void updates(ChatCompletionRequestStreamOptionsBuilder b)]) = _$ChatCompletionRequestStreamOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatCompletionRequestStreamOptionsBuilder b) => b
      ..includeUsage = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatCompletionRequestStreamOptions> get serializer => _$ChatCompletionRequestStreamOptionsSerializer();
}

class _$ChatCompletionRequestStreamOptionsSerializer implements PrimitiveSerializer<ChatCompletionRequestStreamOptions> {
  @override
  final Iterable<Type> types = const [ChatCompletionRequestStreamOptions, _$ChatCompletionRequestStreamOptions];

  @override
  final String wireName = r'ChatCompletionRequestStreamOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatCompletionRequestStreamOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.includeUsage != null) {
      yield r'include_usage';
      yield serializers.serialize(
        object.includeUsage,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatCompletionRequestStreamOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatCompletionRequestStreamOptionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'include_usage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.includeUsage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatCompletionRequestStreamOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatCompletionRequestStreamOptionsBuilder();
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

