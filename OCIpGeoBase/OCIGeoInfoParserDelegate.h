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

    NSMutableString *buffer;
    NSMutableDictionary *values;
}

- (id)initWithIp:(NSString *)ip;
- (id<OCIGeoInfo>)geoInfo;

@end
