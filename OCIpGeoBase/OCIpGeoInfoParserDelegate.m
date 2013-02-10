//
//  OCIpGeoInfoParserDelegate.m
//  OCIpGeoBase
//
//  Created by Ildar Sharafutdinov on 2/9/13.
//
//

#import "OCIpGeoInfoParserDelegate.h"
#import "OCIpGeoInfoImplementation.h"

@implementation OCIpGeoInfoParserDelegate

- (id)initWithIp:(NSString *)_ip
{
    if (self = [super init]) {
        ip = _ip;
        url = [NSURL URLWithString:[NSString stringWithFormat:@"http://ipgeobase.ru:7020/geo?ip=%@", ip]];

        // set defaults
        values = [@{
            @"city": @"",
            @"country": @"",
            @"region": @"",
            @"lat": @"0",
            @"lng": @"0"
        } mutableCopy];
    }
    
    return self;
}

- (id<OCIpGeoInfo>)geoInfo
{
    NSXMLParser* parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    parser.delegate = self;
    // TODO: handle errors
    //if ([parser parse] == NO);
    [parser parse];
    
    return [[OCIpGeoInfoImplementation alloc] initWithIp:ip city:values[@"city"] country:values[@"country"] region:values[@"region"] lat:[values[@"lat"] floatValue] lng:[values[@"lng"] floatValue]];
}

#pragma mark NSXMLParserDelegate

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName attributes:(NSDictionary *)attributeDict
{
    buffer = [[NSMutableString alloc] init];
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if (values[elementName])
        values[elementName] = buffer;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    [buffer appendString:string];
}

@end
