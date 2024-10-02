import SwiftUI

struct InlineText: View {
    @Environment(\.baseURL) private var baseURL
    @Environment(\.imageBaseURL) private var imageBaseURL
    @Environment(\.softBreakMode) private var softBreakMode
    @Environment(\.theme) private var theme
    
    @State private var inlineImages: [String: Image] = [:]
    
    private let inlines: [InlineNode]
    
    init(_ inlines: [InlineNode]) {
        self.inlines = inlines
    }
    
    var body: some View {
        TextStyleAttributesReader { attributes in
            self.inlines.renderText(
                baseURL: self.baseURL,
                textStyles: .init(
                    code: self.theme.code,
                    emphasis: self.theme.emphasis,
                    strong: self.theme.strong,
                    strikethrough: self.theme.strikethrough,
                    link: self.theme.link
                ),
                images: self.inlineImages,
                softBreakMode: self.softBreakMode,
                attributes: attributes
            )
        }
    }
}
