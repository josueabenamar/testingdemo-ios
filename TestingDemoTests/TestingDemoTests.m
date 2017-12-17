//
//  TestingDemoTests.m
//  TestingDemoTests
//
//  Created by Developer on 07/12/17.
//  Copyright © 2017 Developer. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ToolsLib.h"

@interface TestingDemoTests : XCTestCase

@end

@implementation TestingDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertEqual([ToolsLib isValidPhoneNumber:@"5512345678"], YES);
    XCTAssertEqual([ToolsLib isValidPhoneNumber:@"5571625092"], YES);
    XCTAssertEqual([ToolsLib isValidPhoneNumber:@"12345678"], NO);
    XCTAssertEqual([ToolsLib isValidPhoneNumber:@"6732732577632763"], NO);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
