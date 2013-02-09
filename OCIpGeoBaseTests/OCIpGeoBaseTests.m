//
//  OCIpGeoBaseTests.m
//  OCIpGeoBaseTests
//
//  Created by Alexander Kirillov on 09.02.13.
//
//

#import "OCIpGeoBaseTests.h"
#import "OCIpGeoBase.h"

@implementation OCIpGeoBaseTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    ip = @"46.8.114.116";
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    STFail(@"Unit tests are not implemented yet in OCIpGeoBaseTests");
}

- (void)testLookupHttp
{
    [OCIpGeoBase lookupWithIp:ip];
}

@end
