# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{qrtools}
  s.version = "1.0.1.2"
  s.license = 'MIT'

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aaron Patterson"]
  s.date = %q{2009-02-12}
  s.default_executable = %q{qrdecode}
  s.description = "Lib and tools to Encode and Decode QR Codes. May be very buggy."
  s.email = ["aaronp@rubyforge.org"]
  s.executables = ["qrdecode"]
  s.extensions = ["ext/qrtools/extconf.rb"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/qrdecode", "ext/qrtools/Makefile.in", "ext/qrtools/bitstream.cpp", "ext/qrtools/bitstream.h", "ext/qrtools/codedata.cpp", "ext/qrtools/codedata.h", "ext/qrtools/container.cpp", "ext/qrtools/container.h", "ext/qrtools/decodeqr.h", "ext/qrtools/ecidecoder.cpp", "ext/qrtools/ecidecoder.h", "ext/qrtools/extconf.rb", "ext/qrtools/formatinfo.cpp", "ext/qrtools/formatinfo.h", "ext/qrtools/galois.cpp", "ext/qrtools/galois.h", "ext/qrtools/imagereader.cpp", "ext/qrtools/imagereader.h", "ext/qrtools/libdecodeqr.cpp", "ext/qrtools/libdecodeqr.dep", "ext/qrtools/libdecodeqr.dsp", "ext/qrtools/libdecodeqr.dsw", "ext/qrtools/libdecodeqr.mak", "ext/qrtools/qrerror.h", "ext/qrtools/qrtools.c", "ext/qrtools/qrtools.h", "ext/qrtools/qrtools_decoder.c", "ext/qrtools/qrtools_decoder.h", "ext/qrtools/qrtools_header.c", "ext/qrtools/qrtools_header.h", "ext/qrtools/qrtools_image.c", "ext/qrtools/qrtools_image.h", "ext/qrtools/qrtypes.h", "ext/qrtools/version.h", "ext/qrtools/qrtools_ui_camera.h", "ext/qrtools/bitstream.h", "ext/qrtools/codedata.h", "ext/qrtools/container.h", "ext/qrtools/decodeqr.h", "ext/qrtools/ecidecoder.h", "ext/qrtools/formatinfo.h", "ext/qrtools/galois.h", "ext/qrtools/imagereader.h", "ext/qrtools/qrerror.h", "ext/qrtools/qrtools.h", "ext/qrtools/qrtools_decoder.h", "ext/qrtools/qrtools_encoder.h", "ext/qrtools/qrtools_header.h", "ext/qrtools/qrtools_image.h", "ext/qrtools/qrtools_qrcode.h", "ext/qrtools/qrtools_ui_camera.h", "ext/qrtools/qrtools_ui_window.h", "ext/qrtools/qrtypes.h", "ext/qrtools/version.h", "lib/qrtools.rb", "test/assets/01-1.jpg", "test/helper.rb", "test/test_decoder.rb", "test/test_header.rb", "test/test_image.rb", "test/test_qrdecode.rb"]
  s.has_rdoc = true
  s.homepage = 'http://qrtools.rubyforge.org/qrtools/'
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib", "ext"]
  s.rubygems_version = %q{1.3.1}
  s.summary = "Lib and tools to Encode and Decode QR Codes"
  s.test_files = ["test/test_decoder.rb", "test/test_header.rb", "test/test_image.rb", "test/test_qrdecode.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 3.7.1"])
      s.add_development_dependency(%q<png>, [">= 1.2.0"])
    else
      s.add_dependency(%q<hoe>, [">= 3.7.1"])
      s.add_dependency(%q<png>, [">= 1.2.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 3.7.1"])
    s.add_dependency(%q<png>, [">= 1.2.0"])
  end
end
