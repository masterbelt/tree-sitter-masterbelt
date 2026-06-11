import XCTest
import SwiftTreeSitter
import TreeSitterMasterbelt

final class TreeSitterMasterbeltTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_masterbelt())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Masterbelt grammar")
    }
}
