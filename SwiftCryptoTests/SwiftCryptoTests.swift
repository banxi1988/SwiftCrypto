//
//  SwiftCryptoTests.swift
//  SwiftCryptoTests
//
//  Created by Haizhen Lee on 16/5/4.
//  Copyright © 2016年 banxi1988. All rights reserved.
//

import XCTest
@testable import SwiftCrypto

class SwiftCryptoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMD5() {
      let actual1 = "a".md5()?.uppercaseString
      let expected1 = "0CC175B9C0F1B6A831C399E269772661"
      XCTAssertTrue(actual1 == expected1)
     
      // test empty string
      let actual2 = "".md5()?.lowercaseString
      let expected2 = "d41d8cd98f00b204e9800998ecf8427e"
      XCTAssertTrue(actual2 == expected2)
      
      //The quick brown fox jumps over the lazy dog
      let actual3 = "The quick brown fox jumps over the lazy dog".md5()?.lowercaseString
      let expected3 = "9e107d9d372bb6826bd81d3542a419d6"
      XCTAssertTrue(actual3 == expected3)
    }
  
  func testSHA1(){
      let actual1 = "a".sha1()?.uppercaseString
      let expected1 = "86F7E437FAA5A7FCE15D1DDCB9EAEAEA377667B8"
      XCTAssertTrue(actual1 == expected1)
  }
  
  func testSHA256(){
      let actual1 = "a".sha256()?.uppercaseString
      let expected1 = "CA978112CA1BBDCAFAC231B39A23DC4DA786EFF8147C4E72B9807785AFEE48BB"
      XCTAssertTrue(actual1 == expected1)
  }
  
  func testSHA512(){
      let actual1 = "a".sha512()?.uppercaseString
      let expected1 = "1F40FC92DA241694750979EE6CF582F2D5D7D28E18335DE05ABC54D0560E0F5302860C652BF08D560252AA5E74210546F369FBBBCE8C12CFC7957B2652FE9A75"
      XCTAssertTrue(actual1 == expected1)
  }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
