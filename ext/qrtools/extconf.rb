ENV["ARCHFLAGS"] = "-arch #{`uname -p` =~ /powerpc/ ? 'ppc' : 'i386'}"

require 'mkmf'

LIBDIR = RbConfig::CONFIG['libdir']
INCLUDEDIR = RbConfig::CONFIG['includedir']

HEADER_DIRS = [INCLUDEDIR]
#    '/opt/local/include/opencv',
#]

HEADER_DIRS += `pkg-config --cflags-only-I opencv`.split.collect { |i| if i.start_with?("-I") then i[2..-1] else i end }
HEADER_DIRS += `pkg-config --cflags-only-I libqrencode`.split.collect { |i| if i.start_with?("-I") then i[2..-1] else i end }

LIB_DIRS = [LIBDIR]
#  LIBDIR,
#  '/opt/local/lib',
#]

LIB_DIRS += `pkg-config --libs-only-L opencv`.split.collect { |i| if i.start_with?("-L") then i[2..-1] else i end }
LIB_DIRS += `pkg-config --libs-only-L libqrencode`.split.collect { |i| if i.start_with?("-L") then i[2..-1] else i end }

dir_config('opencv'  , HEADER_DIRS, LIB_DIRS)
dir_config('qrencode', HEADER_DIRS, LIB_DIRS)
%w{ qrencode opencv_core opencv_highgui }.each do |lib|
  abort "need #{lib}" unless have_library(lib)
end
find_header('qrencode.h')
have_library('stdc++')
create_makefile('qrtools')
