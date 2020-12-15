require 'ffi'

module Sale
  extend FFI::Library
  ffi_lib 'target/release/libcsv.dylib'
  attach_function :foo, [:double, :double], :double
end


intbox = Sale.foo(1,100)
 
if intbox.floor <= 10
  probability = 1 # 判定変数 ・・・ 真1
else 
  probability = 0 # 判定変数 ・・・ 偽0
end 

p probability