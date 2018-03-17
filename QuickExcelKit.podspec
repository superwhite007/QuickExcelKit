Pod::Spec.new do |s|
    s.name             = "QuickExcelKit"
    s.version          = "1.0.0"
    s.summary          = "A great & strong microsoft excel parser for iOS, support csv/xls/xlsx format. 一款微软 Excel 文件解析器，支持 csv/xls/xlsx 格式。"
    s.description      = <<-DESC
    A great & strong microsoft excel parser for iOS, support csv/xls/xlsx format. 一款 iOS 平台上的微软 Excel 文件解析器，支持 csv/xls/xlsx 格式, 该项目支持 Cocoapods 的 subspec。
    DESC
    s.homepage         = "https://github.com/pcjbird/QuickExcelKit"
    s.license          = 'MIT'
    s.author           = {"pcjbird" => "pcjbird@hotmail.com"}
    s.source           = {:git => "https://github.com/pcjbird/QuickExcelKit.git", :tag => s.version.to_s, :submodules => true}
    s.social_media_url = 'http://www.lessney.com'
    s.requires_arc     = true
    s.documentation_url = 'https://github.com/pcjbird/QuickExcelKit/blob/master/README.md'
    s.screenshot       = 'https://github.com/pcjbird/QuickExcelKit/blob/master/logo.png'

    s.platform         = :ios, '8.0'
    s.frameworks       = 'Foundation', 'UIKit'
#s.preserve_paths   = ''
    s.source_files     = 'QuickExcelKit/QuickExcelKit.h'
    s.prefix_header_file = 'QuickExcelKit/Supporting Files/QuickExcelKit-Prefix.pch'
    s.header_mappings_dir = './'
    s.dependency 'SSZipArchive'
    s.default_subspec = 'QuickExcelReaderUtil'
    s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC', 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/QuickExcelKit/DHlibxls/libxls ${PODS_ROOT}/QuickExcelKit/DHlibxls/libxls/include ${PODS_ROOT}/QuickExcelKit/DHlibxls/libxls/include/libxls ${PODS_ROOT}/QuickExcelKit/ZXLSXReader ${PODS_ROOT}/QuickExcelKit/ZXLSXReader/ZXLSXReader/ZXLSXParser/xmlParser ${PODS_ROOT}/QuickExcelKit/ZXLSXReader/ZXLSXReader/ZXLSXParser/xmlParser/models' }

    s.subspec 'QuickExcelReaderUtil' do |ss|
        ss.source_files = 'QuickExcelKit/QuickExcelKit.h', 'QuickExcelKit/QuickExcelKitDefine.h', 'QuickExcelKit/QuickExcelReaderUtil.h', 'QuickExcelKit/QuickExcelReaderUtil.m', 'QuickExcelKit/CSVParser', 'QuickExcelKit/Supporting Files', '${PODS_ROOT}/QuickExcelKit/DHlibxls/*.{h}', '${PODS_ROOT}/QuickExcelKit/DHlibxls/DHxlsReader/*.{h,m}', '${PODS_ROOT}/QuickExcelKit/DHlibxls/libxls/include/libxls/*.{h}', '${PODS_ROOT}/QuickExcelKit/DHlibxls/libxls/src/*.{c}', '${PODS_ROOT}/QuickExcelKit/ZXLSXReader/ZXLSXReader/ZXLSXParser/xmlParser/*.{h,m}', '${PODS_ROOT}/QuickExcelKit/ZXLSXReader/ZXLSXReader/ZXLSXParser/xmlParser/models/*.{h,m}'
        ss.public_header_files = 'QuickExcelKit/QuickExcelKit.h','${PODS_ROOT}/QuickExcelKit/ZXLSXReader/ZXLSXReader/ZXLSXParser/xmlParser/models/ZContent.h', 'QuickExcelKit/QuickExcelReaderUtil.h'
    end

end
