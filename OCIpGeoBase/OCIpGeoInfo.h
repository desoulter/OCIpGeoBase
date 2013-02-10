//
//  OCIpGeoInfo.h
//  OCIpGeoBase
//
//  Created by Ildar Sharafutdinov on 2/9/13.
//
//

#import <Foundation/Foundation.h>

@protocol OCIpGeoInfo <NSObject>

@property (nonatomic, readonly) NSString* ip;
@property (nonatomic, readonly) NSString* city;
@property (nonatomic, readonly) NSString* country;
@property (nonatomic, readonly) NSString* region;
@property (nonatomic, readonly) float lat;
@property (nonatomic, readonly) float lng;

- (id)initWithIp:(NSString *)ip city:(NSString *)city country:(NSString *)country region:(NSString *)region lat:(float)lat lng:(float)lng;

@end
