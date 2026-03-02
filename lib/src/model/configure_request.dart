//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'configure_request.g.dart';

/// ConfigureRequest
///
/// Properties:
/// * [embeddingModel] 
@BuiltValue()
abstract class ConfigureRequest implements Built<ConfigureRequest, ConfigureRequestBuilder> {
  @BuiltValueField(wireName: r'embeddingModel')
  ConfigureRequestEmbeddingModelEnum get embeddingModel;
  // enum embeddingModelEnum {  english,  multilingual,  };

  ConfigureRequest._();

  factory ConfigureRequest([void updates(ConfigureRequestBuilder b)]) = _$ConfigureRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConfigureRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConfigureRequest> get serializer => _$ConfigureRequestSerializer();
}

class _$ConfigureRequestSerializer implements PrimitiveSerializer<ConfigureRequest> {
  @override
  final Iterable<Type> types = const [ConfigureRequest, _$ConfigureRequest];

  @override
  final String wireName = r'ConfigureRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConfigureRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'embeddingModel';
    yield serializers.serialize(
      object.embeddingModel,
      specifiedType: const FullType(ConfigureRequestEmbeddingModelEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConfigureRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConfigureRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'embeddingModel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConfigureRequestEmbeddingModelEnum),
          ) as ConfigureRequestEmbeddingModelEnum;
          result.embeddingModel = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConfigureRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigureRequestBuilder();
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

class ConfigureRequestEmbeddingModelEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'english')
  static const ConfigureRequestEmbeddingModelEnum english = _$configureRequestEmbeddingModelEnum_english;
  @BuiltValueEnumConst(wireName: r'multilingual')
  static const ConfigureRequestEmbeddingModelEnum multilingual = _$configureRequestEmbeddingModelEnum_multilingual;

  static Serializer<ConfigureRequestEmbeddingModelEnum> get serializer => _$configureRequestEmbeddingModelEnumSerializer;

  const ConfigureRequestEmbeddingModelEnum._(String name): super(name);

  static BuiltSet<ConfigureRequestEmbeddingModelEnum> get values => _$configureRequestEmbeddingModelEnumValues;
  static ConfigureRequestEmbeddingModelEnum valueOf(String name) => _$configureRequestEmbeddingModelEnumValueOf(name);
}

