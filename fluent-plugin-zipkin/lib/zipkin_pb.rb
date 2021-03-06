# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: zipkin.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("zipkin.proto", :syntax => :proto3) do
    add_message "zipkin.proto3.Span" do
      optional :trace_id, :bytes, 1
      optional :parent_id, :bytes, 2
      optional :id, :bytes, 3
      optional :kind, :enum, 4, "zipkin.proto3.Span.Kind"
      optional :name, :string, 5
      optional :timestamp, :fixed64, 6
      optional :duration, :uint64, 7
      optional :local_endpoint, :message, 8, "zipkin.proto3.Endpoint"
      optional :remote_endpoint, :message, 9, "zipkin.proto3.Endpoint"
      repeated :annotations, :message, 10, "zipkin.proto3.Annotation"
      map :tags, :string, :string, 11
      optional :debug, :bool, 12
      optional :shared, :bool, 13
    end
    add_enum "zipkin.proto3.Span.Kind" do
      value :SPAN_KIND_UNSPECIFIED, 0
      value :CLIENT, 1
      value :SERVER, 2
      value :PRODUCER, 3
      value :CONSUMER, 4
    end
    add_message "zipkin.proto3.Endpoint" do
      optional :service_name, :string, 1
      optional :ipv4, :bytes, 2
      optional :ipv6, :bytes, 3
      optional :port, :int32, 4
    end
    add_message "zipkin.proto3.Annotation" do
      optional :timestamp, :fixed64, 1
      optional :value, :string, 2
    end
    add_message "zipkin.proto3.ListOfSpans" do
      repeated :spans, :message, 1, "zipkin.proto3.Span"
    end
    add_message "zipkin.proto3.ReportResponse" do
    end
  end
end

module Zipkin
  module Proto3
    Span = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("zipkin.proto3.Span").msgclass
    Span::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("zipkin.proto3.Span.Kind").enummodule
    Endpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("zipkin.proto3.Endpoint").msgclass
    Annotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("zipkin.proto3.Annotation").msgclass
    ListOfSpans = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("zipkin.proto3.ListOfSpans").msgclass
    ReportResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("zipkin.proto3.ReportResponse").msgclass
  end
end
