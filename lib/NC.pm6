unit module NC;
use NativeCall;

class point 
  is repr('CStruct') 
  is export
{
  has int32 $.x;
  has int32 $.y;
};

sub print-array(int32, CArray[int32]) 
  returns point 
  is symbol('native_call')
  is export
  is native('./clib/libNC.so') { * };

