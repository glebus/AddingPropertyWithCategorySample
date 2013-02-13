//
//  NSObject+Ext.m
//  AddingPropertyWithCategorySample
//
//  Created by Gleb Ustimenko on 2/13/13.
//  Copyright (c) 2013 Gleb Ustimenko. All rights reserved.
//

#import "NSObject+Ext.h"
// this library has methods for work in runtime.
#import <objc/runtime.h>

static NSString *NSOBJECT_TEST_PROPERTY_KEY = @"com.domus.nsobject.test";

@implementation NSObject (Ext)

@dynamic test;

/**
 * Overriding setter for property test. Use method objc_setAssociatedObject for associated self with object "test" in runtime.
 *
 * @param [in,out]	NSString*   Variable for property test.
 *
 * @return	void
 **/
- (void)setTest:(NSString *)test
{
    objc_setAssociatedObject(self, (__bridge const void *)NSOBJECT_TEST_PROPERTY_KEY, test, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

/**
 * Overriding getter for property test. Use method objc_getAssociatedObject getting associated object "test" in runtime.
 *
 * @return	NSString*   Variable for property test.
 **/
- (NSString *)test
{
    return objc_getAssociatedObject(self, (__bridge const void *)NSOBJECT_TEST_PROPERTY_KEY);
}

@end
