//
//  OCIpGeoBase.m
//  OCIpGeoBase
//
//  Created by Alexander Kirillov on 09.02.13.
//
//

#import "OCIpGeoBase.h"
#import "OCIGeoInfoParserDelegate.h"

@implementation OCIpGeoBase

+ (id<OCIGeoInfo>)lookupWithIp:(NSString *)ip
{
    OCIGeoInfoParserDelegate *parserDelegate = [[OCIGeoInfoParserDelegate alloc] initWithIp:ip];
    return [parserDelegate geoInfo];    
}

@end
