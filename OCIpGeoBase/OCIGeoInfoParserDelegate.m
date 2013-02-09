//
//  OCIGeoInfoParserDelegate.m
//  OCIpGeoBase
//
//  Created by Ildar Sharafutdinov on 2/9/13.
//
//

#import "OCIGeoInfoParserDelegate.h"
#import "OCIGeoInfoImplementation.h"

enum {
    OCIUnknown,
    OCICity,
    OCICountry,
    OCIRegion,
    OCILat,
    OCILng
};

@implementation OCIGeoInfoParserDelegate

- (id)initWithIp:(NSString *)_ip
{
    if (self = [super init]) {
        ip = _ip;
        url = [NSURL URLWithString:[NSString stringWithFormat:@"http://ipgeobase.ru:7020/geo?ip=%@", ip]];
        
        map = @{
            @"city": @((int)OCICity),
            @"country": @((int)OCICountry),
            @"region": @((int)OCIRegion),
            @"lat": @((int)OCILat),
            @"lat": @((int)OCILng)
        };
    }
    
    return self;
}

- (id<OCIGeoInfo>)geoInfo
{
    NSXMLParser* parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    parser.delegate = self;
    // TODO: handle errors
    //if ([parser parse] == NO);
    [parser parse];
    
    return [[OCIGeoInfoImplementation alloc] initWithIp:ip city:city country:country region:region lat:lat lng:lng];
}

#pragma mark NSXMLParserDelegate

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName attributes:(NSDictionary *)attributeDict
{
    NSNumber *key = map[elementName];
    currentElement = (key) ? [key intValue] : OCIUnknown;
    buffer = [[NSMutableString alloc] init];
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    switch (currentElement) {
        case OCICity:
            city = buffer;
            break;
        case OCICountry:
            country = buffer;
            break;
        case OCIRegion:
            region = buffer;
            break;
        case OCILat:
            //lat = [buffer]
            lat = 0;
            break;
        case OCILng:
            lng = 0;
            break;
    }
    currentElement = OCIUnknown;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    [buffer appendString:string];
}

@end
