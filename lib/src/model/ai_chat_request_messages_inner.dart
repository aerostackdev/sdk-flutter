//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ai_chat_request_messages_inner.g.dart';

/// AiChatRequestMessagesInner
///
/// Properties:
/// * [role] 
/// * [content] 
@BuiltValue()
abstract class AiChatRequestMessagesInner implements Built<AiChatRequestMessagesInner, AiChatRequestMessagesInnerBuilder> {
  @BuiltValueField(wireName: r'role')
  AiChatRequestMessagesInnerRoleEnum? get role;
  // enum roleEnum {  system,  user,  assistant,  };

  @BuiltValueField(wireName: r'content')
  String? get content;

  AiChatRequestMessagesInner._();

  factory AiChatRequestMessagesInner([void updates(AiChatRequestMessagesInnerBuilder b)]) = _$AiChatRequestMessagesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AiChatRequestMessagesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AiChatRequestMessagesInner> get serializer => _$AiChatRequestMessagesInnerSerializer();
}

class _$AiChatRequestMessagesInnerSerializer implements PrimitiveSerializer<AiChatRequestMessagesInner> {
  @override
  final Iterable<Type> types = const [AiChatRequestMessagesInner, _$AiChatRequestMessagesInner];

  @override
  final String wireName = r'AiChatRequestMessagesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AiChatRequestMessagesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(AiChatRequestMessagesInnerRoleEnum),
      );
    }
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AiChatRequestMessagesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AiChatRequestMessagesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AiChatRequestMessagesInnerRoleEnum),
          ) as AiChatRequestMessagesInnerRoleEnum;
          result.role = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AiChatRequestMessagesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AiChatRequestMessagesInnerBuilder();
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

class AiChatRequestMessagesInnerRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'system')
  static const AiChatRequestMessagesInnerRoleEnum system = _$aiChatRequestMessagesInnerRoleEnum_system;
  @BuiltValueEnumConst(wireName: r'user')
  static const AiChatRequestMessagesInnerRoleEnum user = _$aiChatRequestMessagesInnerRoleEnum_user;
  @BuiltValueEnumConst(wireName: r'assistant')
  static const AiChatRequestMessagesInnerRoleEnum assistant = _$aiChatRequestMessagesInnerRoleEnum_assistant;

  static Serializer<AiChatRequestMessagesInnerRoleEnum> get serializer => _$aiChatRequestMessagesInnerRoleEnumSerializer;

  const AiChatRequestMessagesInnerRoleEnum._(String name): super(name);

  static BuiltSet<AiChatRequestMessagesInnerRoleEnum> get values => _$aiChatRequestMessagesInnerRoleEnumValues;
  static AiChatRequestMessagesInnerRoleEnum valueOf(String name) => _$aiChatRequestMessagesInnerRoleEnumValueOf(name);
}

