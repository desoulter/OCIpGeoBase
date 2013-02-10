//
//  OCIpGeoInfoParserDelegate.h
//  OCIpGeoBase
//
//  Created by Ildar Sharafutdinov on 2/9/13.
//
//

#import "OCIpGeoInfo.h"

@interface OCIpGeoInfoParserDelegate : NSObject<NSXMLParserDelegate> {
    NSURL *url;
    NSString *ip;

    NSMutableString *buffer;
    NSMutableDictionary *values;
}

- (id)initWithIp:(NSString *)ip;
- (id<OCIpGeoInfo>)geoInfo;

@end
