Pod::Spec.new do |s|

  s.name         = "MarkdownUIForked"
  s.version      = "0.0.1"
  s.summary      = "Swift compatible framework for rendering Markdown in SwiftUI."

  s.description  = <<-DESC
                   SwiftUI compatible framework for rendering Markdown, designed to simplify the integration of Markdown content.
                   DESC

  s.homepage     = "https://github.com/yagoal/MarkdownUI"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { 'Yago' => 'br.yago@gmail.com' }
  s.source       = { :git => "https://github.com/yagoal/MarkdownUI.git", :tag => "#{s.version}" }
    
  s.ios.deployment_target = "15.0" 
  s.swift_versions = ['5.7']  # Atualizando para a versão correta do Swift

  s.dependency 'cmark-gfm'

  s.source_files = "Sources/*.h", "Sources/MarkdownUI/**/*.swift"
  s.public_header_files = "Sources/*.h"
  s.resources = 'Sources/MarkdownUI/*.docc'

  s.framework = 'Foundation'
end