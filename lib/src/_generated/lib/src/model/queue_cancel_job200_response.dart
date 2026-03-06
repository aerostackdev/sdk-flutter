//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_cancel_job200_response.g.dart';

/// QueueCancelJob200Response
///
/// Properties:
/// * [success] 
/// * [note] - Optional advisory note (e.g. already in terminal state)
@BuiltValue()
abstract class QueueCancelJob200Response implements Built<QueueCancelJob200Response, QueueCancelJob200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// Optional advisory note (e.g. already in terminal state)
  @BuiltValueField(wireName: r'note')
  String? get note;

  QueueCancelJob200Response._();

  factory QueueCancelJob200Response([void updates(QueueCancelJob200ResponseBuilder b)]) = _$QueueCancelJob200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueCancelJob200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueCancelJob200Response> get serializer => _$QueueCancelJob200ResponseSerializer();
}

class _$QueueCancelJob200ResponseSerializer implements PrimitiveSerializer<QueueCancelJob200Response> {
  @override
  final Iterable<Type> types = const [QueueCancelJob200Response, _$QueueCancelJob200Response];

  @override
  final String wireName = r'QueueCancelJob200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueCancelJob200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueueCancelJob200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueueCancelJob200ResponseBuilder result,
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
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueueCancelJob200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueCancelJob200ResponseBuilder();
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

