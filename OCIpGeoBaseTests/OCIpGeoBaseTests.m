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

- (void)testLookupHttp
{
    id<OCIGeoInfo> geoInfo = [OCIpGeoBase lookupWithIp:ip];

    NSAssert([geoInfo.country isEqualToString:@"RU"], @"Expected \"RU\", but got \"%@\"", geoInfo.country);
}

@end
