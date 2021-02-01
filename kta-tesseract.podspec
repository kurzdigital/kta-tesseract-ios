Pod::Spec.new do |s|
  s.header_dir = 'TesseractOCR'
  s.name = 'kta-tesseract'
  s.version = '4.1.3'
  s.summary = 'Maintained version Tesseract OCR (with LSTM) for Objective-C or Swift.'
  s.homepage = 'https://github.com/kurzdigital/kta-tesseract-ios.git'
  s.license = { :type => 'MIT', :file => 'LICENSE.md' }

  s.author       = { "KURZ Digital Solutions GmbH & Co. KG" => "ios@kurzdigital.com" }
  s.source       =  { :git => 'https://github.com/kurzdigital/kta-tesseract-ios.git', :tag => "#{s.version}" }

  s.platform                = :ios, "11.0"
  s.source_files            = 'TesseractOCR/*.{h,m,mm}', 'TesseractOCR/include/**/*.h'
  s.private_header_files    = 'TesseractOCR/include/**/*.h'
  s.ios.exclude_files       = 'TesseractOCR/include/leptonica/config_auto.h'
  s.requires_arc            = true
  s.frameworks              = 'UIKit', 'Foundation'
  s.ios.deployment_target   = "11.0"
  s.ios.vendored_library    = 'TesseractOCR/lib/*.a'
  s.xcconfig                = { 'CLANG_WARN_DOCUMENTATION_COMMENTS' => 'NO',
                                'OTHER_LDFLAGS' => '-lc++ -lz',
                                'CLANG_CXX_LIBRARY' => 'compiler-default'
                               }
  s.pod_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
