### Generated by rprotoc. DO NOT EDIT!
### <proto file: voldemort-client.proto>
# package voldemort;
#
# option java_package = "voldemort.client.protocol.pb";
# option java_outer_classname = "VProto";
# option optimize_for = SPEED;
#
# message ClockEntry {
#   required int32 node_id = 1;
#   required int64 version = 2;
# }
#
# message VectorClock {
#   repeated ClockEntry entries = 1;
#   optional int64 timestamp = 2;
# }
#
# message Versioned {
#   required bytes value = 1;
#   required VectorClock version = 2;
# }
#
# message Error {
#   required int32 error_code = 1;
#   required string error_message = 2;
# }
#
# message KeyedVersions {
#   required bytes key = 1;
#   repeated Versioned versions = 2;
# }
#
# message GetRequest {
#   optional bytes key = 1;
# }
#
# message GetResponse {
#   repeated Versioned versioned = 1;
#   optional Error error = 2;
# }
#
# message GetVersionResponse {
#   repeated VectorClock versions = 1;
#   optional Error error = 2;
# }
#
# message GetAllRequest {
#   repeated bytes keys = 1;
# }
#
# message GetAllResponse {
#   repeated KeyedVersions values = 1;
#   optional Error error = 2;
# }
#
# message PutRequest {
#   required bytes key = 1;
#   required Versioned versioned = 2;
# }
#
# message PutResponse {
#   optional Error error = 1;
# }
#
# message DeleteRequest {
#   required bytes key = 1;
#   required VectorClock version = 2;
# }
#
# message DeleteResponse {
#   required bool success = 1;
#   optional Error error = 2;
# }
#
# enum RequestType {
#   GET = 0;
#   GET_ALL = 1;
#   PUT = 2;
#   DELETE = 3;
#   GET_VERSION = 4;
# }
#
# message VoldemortRequest {
#   required RequestType type = 1;
#   required bool should_route = 2 [default = false];
#   required string store = 3;
#   optional GetRequest get = 4;
#   optional GetAllRequest getAll = 5;
#   optional PutRequest put = 6;
#   optional DeleteRequest delete = 7;
# }
require 'protobuf/message/message'
require 'protobuf/message/enum'
require 'protobuf/message/service'
require 'protobuf/message/extend'

module Voldemort
  ::Protobuf::OPTIONS[:"java_package"] = "voldemort.client.protocol.pb"
  ::Protobuf::OPTIONS[:"java_outer_classname"] = "VProto"
  ::Protobuf::OPTIONS[:"optimize_for"] = :SPEED
  class ClockEntry < ::Protobuf::Message
    defined_in __FILE__
    required :int32, :node_id, 1
    required :int64, :version, 2
  end
  class VectorClock < ::Protobuf::Message
    defined_in __FILE__
    repeated :ClockEntry, :entries, 1
    optional :int64, :timestamp, 2
  end
  class Versioned < ::Protobuf::Message
    defined_in __FILE__
    required :bytes, :value, 1
    required :VectorClock, :version, 2
  end
  class Error < ::Protobuf::Message
    defined_in __FILE__
    required :int32, :error_code, 1
    required :string, :error_message, 2
  end
  class KeyedVersions < ::Protobuf::Message
    defined_in __FILE__
    required :bytes, :key, 1
    repeated :Versioned, :versions, 2
  end
  class GetRequest < ::Protobuf::Message
    defined_in __FILE__
    optional :bytes, :key, 1
  end
  class GetResponse < ::Protobuf::Message
    defined_in __FILE__
    repeated :Versioned, :versioned, 1
    optional :Error, :error, 2
  end
  class GetVersionResponse < ::Protobuf::Message
    defined_in __FILE__
    repeated :VectorClock, :versions, 1
    optional :Error, :error, 2
  end
  class GetAllRequest < ::Protobuf::Message
    defined_in __FILE__
    repeated :bytes, :keys, 1
  end
  class GetAllResponse < ::Protobuf::Message
    defined_in __FILE__
    repeated :KeyedVersions, :values, 1
    optional :Error, :error, 2
  end
  class PutRequest < ::Protobuf::Message
    defined_in __FILE__
    required :bytes, :key, 1
    required :Versioned, :versioned, 2
  end
  class PutResponse < ::Protobuf::Message
    defined_in __FILE__
    optional :Error, :error, 1
  end
  class DeleteRequest < ::Protobuf::Message
    defined_in __FILE__
    required :bytes, :key, 1
    required :VectorClock, :version, 2
  end
  class DeleteResponse < ::Protobuf::Message
    defined_in __FILE__
    required :bool, :success, 1
    optional :Error, :error, 2
  end
  class RequestType < ::Protobuf::Enum
    defined_in __FILE__
    GET = 0
    GET_ALL = 1
    PUT = 2
    DELETE = 3
    GET_VERSION = 4
  end
  class VoldemortRequest < ::Protobuf::Message
    defined_in __FILE__
    required :RequestType, :type, 1
    required :bool, :should_route, 2, :default => false
    required :string, :store, 3
    optional :GetRequest, :get, 4
    optional :GetAllRequest, :getAll, 5
    optional :PutRequest, :put, 6
    optional :DeleteRequest, :delete, 7
  end
end