//
//  AddingPropertyWithCategorySampleTests.m
//  AddingPropertyWithCategorySampleTests
//
//  Created by Gleb Ustimenko on 2/13/13.
//  Copyright (c) 2013 Gleb Ustimenko. All rights reserved.
//

#import "AddingPropertyWithCategorySampleTests.h"
#import "NSObject+Ext.h"

@implementation AddingPropertyWithCategorySampleTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testNSObjectPropertyTest
{
    NSObject *object = [NSObject new];
    object.test = @"test";
    
    STAssertEqualObjects(object.test, @"test", @"object.test must be == \"test\"");
}

@end
