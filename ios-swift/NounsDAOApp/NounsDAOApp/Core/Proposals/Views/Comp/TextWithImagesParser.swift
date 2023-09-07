//
//  TextWithImagesParser.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/09/05.
//

import SwiftUI

struct TextWithImagesView: View {
    let text: String

    var body: some View {
        TextWithImagesParser.parse(text: text)
            .formattedView()
    }
}

class TextWithImagesParser {
    static func parse(text: String) -> TextWithImages {
        var components: [TextWithImages.Component] = []

        let detector = try? NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
        let range = NSRange(text.startIndex..<text.endIndex, in: text)

        var previousEndIndex = text.startIndex

        detector?.enumerateMatches(in: text, options: [], range: range) { (match, _, _) in
            if let match = match, let url = match.url {
                let urlString = url.absoluteString
                if urlString.hasSuffix(".png") || urlString.hasSuffix(".jpg") || urlString.hasSuffix(".gif") {
                    if let lowerBoundIndex = text.index(text.startIndex, offsetBy: match.range.lowerBound, limitedBy: text.endIndex) {
                        let startIndex = previousEndIndex
                        let endIndex = text.index(lowerBoundIndex, offsetBy: -1)
                        let textBeforeURL = String(text[startIndex..<endIndex])
                        if !textBeforeURL.isEmpty {
                            components.append(.text(textBeforeURL))
                        }
                        components.append(.image(urlString))
                        if let upperBoundIndex = text.index(text.startIndex, offsetBy: match.range.upperBound, limitedBy: text.endIndex) {
                            previousEndIndex = text.index(upperBoundIndex, offsetBy: 1)
                        }
                    }
                }
            }
        }
        let remainingText = String(text[previousEndIndex..<text.endIndex])
        if !remainingText.isEmpty {
            components.append(.text(remainingText))
        }
        return TextWithImages(components: components)
    }
}

struct TextWithImages {
    enum Component {
        case text(String)
        case image(String)
    }
    let components: [Component]
    func formattedView() -> some View {
        var views: [AnyView] = []
        for component in components {
            switch component {
            case .text(let text):
                views.append(AnyView(Text(text)))
            case .image(let urlString):
                if let url = URL(string: urlString) {
                    views.append(AnyView(
                        AsyncImageView(url: url)
                    ))
                }
            }
        }

        return VStack(spacing: 10) {
            ForEach(0..<views.count, id: \.self) { index in
                views[index]
            }
        }
    }
}

struct AsyncImageView: View {
    @ObservedObject var imageLoader: ImageLoader
    @State private var image: UIImage? = nil

    init(url: URL) {
        imageLoader = ImageLoader(url: url.forceHTTPS())
    }

    var body: some View {
        if let image = self.image {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onReceive(imageLoader.$downloadedData) { data in
                    if let data = data {
                        self.image = UIImage(data: data)
                    }
                }
        } else {
            Color.clear
        }
    }
}

class ImageLoader: ObservableObject {
    @Published var downloadedData: Data?
    init(url: URL) {
        URLSession.shared.dataTask(with: url) { data, _, _ in
            DispatchQueue.main.async {
                self.downloadedData = data
            }
        }.resume()
    }
}

extension URL {
    func forceHTTPS() -> URL {
        if self.scheme == "http" {
            var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
            components?.scheme = "https"
            if let httpsURL = components?.url {
                return httpsURL
            }
        }
        return self
    }
}
