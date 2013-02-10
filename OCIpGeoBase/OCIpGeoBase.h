//
//  OCIpGeoBase.h
//  OCIpGeoBase
//
//  Created by Alexander Kirillov on 09.02.13.
//
//

#import <Foundation/Foundation.h>
#import "OCIpGeoInfo.h"

@interface OCIpGeoBase : NSObject

+ (id<OCIpGeoInfo>)lookupWithIp:(NSString *)ip;

@end
