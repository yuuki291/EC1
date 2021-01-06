require 'ffi'

module Sale
  extend FFI::Library
  ffi_lib 'csv/target/release/libcsv.dylib'
  attach_function :foo, [:double, :double], :double
end

#-------------------下のコードは単体テスト用--------------------------
intbox = Sale.foo(1,100)
 
if intbox.floor <= 10
  probability = 1 # 判定変数 ・・・ 真1
else 
  probability = 0 # 判定変数 ・・・ 偽0
end 

p probability

#-------------------------------------------------------------------


#-------------------------割引倍率------------------------------------

module Magnification
  extend FFI::Library
  ffi_lib 'csv/target/release/libcsv.dylib'
  attach_function :fa, [], :double
end

i  = Magnification.fa

a = 1.0 - i

p a.round(1) #支払い分

p i.round(1) #割合い
