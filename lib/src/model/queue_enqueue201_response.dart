//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_enqueue201_response.g.dart';

/// QueueEnqueue201Response
///
/// Properties:
/// * [jobId] 
/// * [success] 
@BuiltValue()
abstract class QueueEnqueue201Response implements Built<QueueEnqueue201Response, QueueEnqueue201ResponseBuilder> {
  @BuiltValueField(wireName: r'jobId')
  String? get jobId;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  QueueEnqueue201Response._();

  factory QueueEnqueue201Response([void updates(QueueEnqueue201ResponseBuilder b)]) = _$QueueEnqueue201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueEnqueue201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueEnqueue201Response> get serializer => _$QueueEnqueue201ResponseSerializer();
}

class _$QueueEnqueue201ResponseSerializer implements PrimitiveSerializer<QueueEnqueue201Response> {
  @override
  final Iterable<Type> types = const [QueueEnqueue201Response, _$QueueEnqueue201Response];

  @override
  final String wireName = r'QueueEnqueue201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueEnqueue201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.jobId != null) {
      yield r'jobId';
      yield serializers.serialize(
        object.jobId,
        specifiedType: const FullType(String),
      );
    }
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueueEnqueue201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueueEnqueue201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'jobId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jobId = valueDes;
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueueEnqueue201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueEnqueue201ResponseBuilder();
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

