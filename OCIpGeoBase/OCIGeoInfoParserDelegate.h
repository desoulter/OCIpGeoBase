//
//  OCIGeoInfoParserDelegate.h
//  OCIpGeoBase
//
//  Created by Ildar Sharafutdinov on 2/9/13.
//
//

#import <Foundation/Foundation.h>
#import "OCIGeoInfo.h"

@interface OCIGeoInfoParserDelegate : NSObject<NSXMLParserDelegate> {
    NSURL *url;
    NSString *ip;
    NSString* city;
    NSString* country;
    NSString* region;
    float lat;
    float lng;

    NSMutableString *buffer;
    int currentElement;
    NSDictionary *map;
}

- (id)initWithIp:(NSString *)ip;
- (id<OCIGeoInfo>)geoInfo;

@end
