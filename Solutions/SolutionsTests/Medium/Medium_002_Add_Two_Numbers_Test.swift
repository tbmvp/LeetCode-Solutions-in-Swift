//
//  Medium_002_Add_Two_Numbers_Test.swift
//  Solutions
//
//  Created by Wu, Di on 3/26/15.
//  Copyright (c) 2015 diwu. All rights reserved.
//

import XCTest

class Medium_002_Add_Two_Numbers_Test: XCTestCase {
    func testCase001() {

        typealias ListNode = Medium_002_Add_Two_Numbers.ListNode

        // Test Case
        // 2 -> 4 -> 5
        // 5 -> 6 -> 4
        // Result:
        // 7 -> 0 -> 0 -> 1
        var dummy1: ListNode = ListNode()
        var dummy2: ListNode = ListNode()

        var tmp: ListNode? = ListNode(nodeValue: 2, nodeNext: nil)
        dummy1.next = tmp
        if let n = tmp {
            n.next = ListNode(nodeValue: 4, nodeNext: nil)
            tmp = n.next
        }
        if let n = tmp {
            n.next = ListNode(nodeValue: 5, nodeNext: nil)
            tmp = n.next
        }
        tmp = ListNode(nodeValue: 5, nodeNext: nil)
        dummy2.next = tmp
        if let n = tmp {
            n.next = ListNode(nodeValue: 6, nodeNext: nil)
            tmp = n.next
        }
        if let n = tmp {
            n.next = ListNode(nodeValue: 4, nodeNext: nil)
            tmp = n.next
        }
        var result: ListNode? = Medium_002_Add_Two_Numbers.addNumbers(dummy1.next, node2: dummy2.next)

        var numericalValue: Int = 0
        var base: Int = 0

        while result != nil {
            if let n = result {
                numericalValue += n.value * Int(pow(Double(10), Double(base)))
                result = result?.next
                base++
            }
        }

        XCTAssert(numericalValue == 1007, "Medium_002_Add_Two_Numbers_Test #1")
    }
}

/*
// Test Case
// 2 -> 4 -> 5
// 5 -> 6 -> 4
// Result:
// 7 -> 0 -> 0 -> 1
*/