//
//  OCIpGeoBase.m
//  OCIpGeoBase
//
//  Created by Alexander Kirillov on 09.02.13.
//
//

#import "OCIpGeoBase.h"
#import "OCIGeoInfoImplementation.h"

@implementation OCIpGeoBase

+ (id<OCIGeoInfo>)lookupWithIp:(NSString *)ip
{
    NSString* url = [NSString stringWithFormat:@"http://ipgeobase.ru:7020/geo?ip=%@", ip];
    NSXMLParser* parser = [[NSXMLParser alloc] initWithContentsOfURL:[NSURL URLWithString:url]];
    id<NSXMLParserDelegate> delegate;
    parser.delegate = delegate;
    [parser parse];
    
    return delegate.geoInfo;
}

@end
