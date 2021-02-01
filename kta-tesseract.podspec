Pod::Spec.new do |s|
  s.header_dir = 'TesseractOCR'
  s.name = 'kta-tesseract'
  s.version = '4.1.2'
  s.summary = 'Use Tesseract OCR in iOS projects written in either Objective-C or Swift.'
  s.homepage = 'https://git.kurzdigital.com/kta/kta-tesseract.git'
  s.license = { :type => 'MIT', :file => 'LICENSE.md' }

  s.author       = { "KURZ Digital Solutions GmbH & Co. KG" => "ios@kurzdigital.com" }
  s.source       =  { :git => 'https://git.kurzdigital.com/kta/kta-tesseract.git', :tag => "#{s.version}" }

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
