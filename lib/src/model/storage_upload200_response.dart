//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storage_upload200_response.g.dart';

/// StorageUpload200Response
///
/// Properties:
/// * [url] 
@BuiltValue()
abstract class StorageUpload200Response implements Built<StorageUpload200Response, StorageUpload200ResponseBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  StorageUpload200Response._();

  factory StorageUpload200Response([void updates(StorageUpload200ResponseBuilder b)]) = _$StorageUpload200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StorageUpload200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StorageUpload200Response> get serializer => _$StorageUpload200ResponseSerializer();
}

class _$StorageUpload200ResponseSerializer implements PrimitiveSerializer<StorageUpload200Response> {
  @override
  final Iterable<Type> types = const [StorageUpload200Response, _$StorageUpload200Response];

  @override
  final String wireName = r'StorageUpload200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StorageUpload200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StorageUpload200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StorageUpload200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StorageUpload200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageUpload200ResponseBuilder();
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

