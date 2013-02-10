//
//  OCIpGeoInfoImplementation.m
//  OCIpGeoBase
//
//  Created by Ildar Sharafutdinov on 2/9/13.
//
//

#import "OCIpGeoInfoImplementation.h"

@implementation OCIpGeoInfoImplementation

@synthesize ip, city, country, region, lat, lng;

- (id)initWithIp:(NSString *)_ip city:(NSString *)_city country:(NSString *)_country region:(NSString *)_region lat:(float)_lat lng:(float)_lng
{
    if (self = [super init]) {
        ip = _ip;
        city = _city;
        country = _country;
        region = _region;
        lat = _lat;
        lng = _lng;
    }
    
    return self;
}

@end
