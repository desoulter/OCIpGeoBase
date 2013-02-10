//
//  OCIpGeoBase.m
//  OCIpGeoBase
//
//  Created by Alexander Kirillov on 09.02.13.
//
//

#import "OCIpGeoBase.h"
#import "OCIpGeoInfoParserDelegate.h"

@implementation OCIpGeoBase

+ (id<OCIpGeoInfo>)lookupWithIp:(NSString *)ip
{
    OCIpGeoInfoParserDelegate *parserDelegate = [[OCIpGeoInfoParserDelegate alloc] initWithIp:ip];
    return [parserDelegate geoInfo];    
}

@end
