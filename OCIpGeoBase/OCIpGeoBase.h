//
//  OCIpGeoBase.h
//  OCIpGeoBase
//
//  Created by Alexander Kirillov on 09.02.13.
//
//

#import <Foundation/Foundation.h>
#import "OCIGeoInfo.h"

@interface OCIpGeoBase : NSObject

+ (id<OCIGeoInfo>)lookupWithIp:(NSString *)ip;

@end
