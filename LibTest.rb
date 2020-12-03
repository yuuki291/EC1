require 'ffi'

module LibTest
  extend FFI::Library
  ffi_lib 'target/release/libcsv.dylib'
  attach_function :foo, [], :int
end

puts LibTest::foo