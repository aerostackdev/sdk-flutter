//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_get_job_request.g.dart';

/// QueueGetJobRequest
///
/// Properties:
/// * [jobId] 
@BuiltValue()
abstract class QueueGetJobRequest implements Built<QueueGetJobRequest, QueueGetJobRequestBuilder> {
  @BuiltValueField(wireName: r'jobId')
  String get jobId;

  QueueGetJobRequest._();

  factory QueueGetJobRequest([void updates(QueueGetJobRequestBuilder b)]) = _$QueueGetJobRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueGetJobRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueGetJobRequest> get serializer => _$QueueGetJobRequestSerializer();
}

class _$QueueGetJobRequestSerializer implements PrimitiveSerializer<QueueGetJobRequest> {
  @override
  final Iterable<Type> types = const [QueueGetJobRequest, _$QueueGetJobRequest];

  @override
  final String wireName = r'QueueGetJobRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueGetJobRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'jobId';
    yield serializers.serialize(
      object.jobId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    QueueGetJobRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueueGetJobRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueueGetJobRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueGetJobRequestBuilder();
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

