Pod::Spec.new do |s|
  s.name = 'AgoraAgentClientToolkitTmpZW'
  s.module_name = 'AgoraAgentClientToolkit'
  s.version = '0.0.1-test1'
  s.summary = 'Client-side toolkit for Agora Conversational AI on iOS.'
  s.description = <<-DESC
    A lightweight iOS toolkit that adds Conversational AI messaging,
    transcript, state, interrupt, and metrics handling on top of
    host-managed Agora RTC and RTM engine instances.
  DESC

  s.homepage = 'https://github.com/alienzh/Conversational-AI-Demo'
  s.license = { :type => 'MIT' }
  s.author = { 'Agora' => 'developer@agora.io' }
  s.source = {
    :git => 'https://github.com/alienzh/Conversational-AI-Demo.git',
    :tag => s.version.to_s
  }

  s.platform = :ios, '15.0'
  s.swift_version = '5.0'
  s.static_framework = true
  s.requires_arc = true
  s.xcconfig = { 'ENABLE_BITCODE' => 'NO' }

  s.source_files = [
    'AgoraAgentClientToolkit/Classes/**/*.swift'
  ]

  s.dependency 'AgoraRtcEngine_iOS', '>= 4.5.1', '< 5.0'
  s.dependency 'AgoraRtm', '>= 2.2.3', '< 3.0'
end
