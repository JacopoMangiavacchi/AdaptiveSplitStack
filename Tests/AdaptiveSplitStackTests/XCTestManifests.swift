import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(AdaptiveSplitStackTests.allTests),
    ]
}
#endif
