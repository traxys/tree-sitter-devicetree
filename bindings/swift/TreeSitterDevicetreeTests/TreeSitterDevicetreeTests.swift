import XCTest
import SwiftTreeSitter
import TreeSitterDevicetree

final class TreeSitterDevicetreeTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_devicetree())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Devicetree grammar")
    }
}
