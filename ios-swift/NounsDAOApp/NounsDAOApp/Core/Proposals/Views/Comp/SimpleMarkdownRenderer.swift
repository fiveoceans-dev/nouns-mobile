//
//  SimpleMarkdownRenderer.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/09/05.
//

import Foundation
import UIKit
import SwiftUI

struct MarkdownView: UIViewRepresentable {
    let markdownText: String

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.dataDetectorTypes = .link
        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = SimpleMarkdownRenderer.attributedStringFromMarkdown(markdownText)
    }
}

class SimpleMarkdownRenderer {
    static func attributedStringFromMarkdown(_ markdown: String) -> NSAttributedString {
        // Create a mutable attributed string.
        let mutableAttributedString = NSMutableAttributedString(string: markdown)
        
        // Define regex patterns for various markdown elements.
        let headerPattern = "^(#+)\\s+(.*)$"
        let boldPattern = "\\*\\*(.*?)\\*\\*"
        let italicPattern = "\\*(.*?)\\*"
        let linkPattern = "\\[([^\\]]+)\\]\\(([^\\)]+)\\)"
        let orderedListPattern = "^(\\d+\\.\\s+)(.*)$"
        let unorderedListPattern = "^(-\\s+)(.*)$"
        let imagePattern = "!\\[([^\\]]+)\\]\\(([^\\)]+)\\)"
        
        // Define attributes for different markdown elements.
        let headerAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 24)
        ]
        let boldAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)
        ]
        let italicAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.italicSystemFont(ofSize: UIFont.systemFontSize)
        ]
        let linkAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.blue
        ]
        let orderedListAttributes: [NSAttributedString.Key: Any] = [:] // Add attributes as needed
        let unorderedListAttributes: [NSAttributedString.Key: Any] = [:] // Add attributes as needed
        let imageAttributes: [NSAttributedString.Key: Any] = [:] // Add attributes as needed
        
        // Define regular expressions using the patterns.
        if let headerRegex = try? NSRegularExpression(pattern: headerPattern, options: []) {
            headerRegex.enumerateMatches(in: markdown, options: [], range: NSRange(location: 0, length: markdown.utf16.count)) { (match, _, _) in
                applyAttributes(to: match, attributes: headerAttributes, in: mutableAttributedString)
            }
        }
        
        if let boldRegex = try? NSRegularExpression(pattern: boldPattern, options: []) {
            boldRegex.enumerateMatches(in: markdown, options: [], range: NSRange(location: 0, length: markdown.utf16.count)) { (match, _, _) in
                applyAttributes(to: match, attributes: boldAttributes, in: mutableAttributedString)
            }
        }
        
        if let italicRegex = try? NSRegularExpression(pattern: italicPattern, options: []) {
            italicRegex.enumerateMatches(in: markdown, options: [], range: NSRange(location: 0, length: markdown.utf16.count)) { (match, _, _) in
                applyAttributes(to: match, attributes: italicAttributes, in: mutableAttributedString)
            }
        }
        
        if let linkRegex = try? NSRegularExpression(pattern: linkPattern, options: []) {
            linkRegex.enumerateMatches(in: markdown, options: [], range: NSRange(location: 0, length: markdown.utf16.count)) { (match, _, _) in
                applyAttributes(to: match, attributes: linkAttributes, in: mutableAttributedString)
            }
        }
        
        if let orderedListRegex = try? NSRegularExpression(pattern: orderedListPattern, options: []) {
            orderedListRegex.enumerateMatches(in: markdown, options: [], range: NSRange(location: 0, length: markdown.utf16.count)) { (match, _, _) in
                applyAttributes(to: match, attributes: orderedListAttributes, in: mutableAttributedString)
            }
        }
        
        if let unorderedListRegex = try? NSRegularExpression(pattern: unorderedListPattern, options: []) {
            unorderedListRegex.enumerateMatches(in: markdown, options: [], range: NSRange(location: 0, length: markdown.utf16.count)) { (match, _, _) in
                applyAttributes(to: match, attributes: unorderedListAttributes, in: mutableAttributedString)
            }
        }
        
        if let imageRegex = try? NSRegularExpression(pattern: imagePattern, options: []) {
            imageRegex.enumerateMatches(in: markdown, options: [], range: NSRange(location: 0, length: markdown.utf16.count)) { (match, _, _) in
                applyAttributes(to: match, attributes: imageAttributes, in: mutableAttributedString)
            }
        }
        
        return mutableAttributedString
    }
    
    static func applyAttributes(to match: NSTextCheckingResult?, attributes: [NSAttributedString.Key: Any], in attributedString: NSMutableAttributedString) {
        if let match = match {
            attributedString.addAttributes(attributes, range: match.range)
        }
    }
}




