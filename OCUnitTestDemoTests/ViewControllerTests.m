//
//  ViewControllerTests.m
//  MotherFuckerTests
//
//  Created by Heping on 2018/3/8.
//  Copyright © 2018年 BONC. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
#import <OCMock/OCMock.h>


@interface ViewControllerTests : XCTestCase
{
    OCMockObject* _fahrenheitTextField;
    OCMockObject* _centigradeLabel;
    ViewController* _vc;
}

@end

@implementation ViewControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _fahrenheitTextField=[OCMockObject mockForClass:[UITextField class]];
    _centigradeLabel=[OCMockObject mockForClass:[UILabel class]];
    _vc=[[ViewController alloc]init];
    _vc.fahrenheitTextField=(UITextField*)_fahrenheitTextField;
    _vc.centigradeLabel=(UILabel*)_centigradeLabel;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    _fahrenheitTextField=nil;
    _centigradeLabel=nil;
    _vc=nil;
}

- (void)testTransCentigradeWithFahrenheitTextField {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    [[[_fahrenheitTextField stub] andReturn:@"-40"] text];
    [[_centigradeLabel expect] setText:@"-40"];
    [_vc textFieldShouldReturn:_vc.fahrenheitTextField];
    [_fahrenheitTextField verify];
    [_centigradeLabel verify];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
