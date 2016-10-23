require 'ffi'

module Doubler
  extend FFI::Library
  path = File.expand_path('../../ext/doubler/libdoubler.so', __FILE__)

  ffi_lib 'c'
  ffi_lib path

  attach_function :DoubleInt, [:int], :int
  attach_function :DoubleFloat, [:double], :double
  attach_function :DoubleString, [:string], :string
end
