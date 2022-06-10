//
//  Car.h
//  Obj-C_Demo
//
//  Created by Danil Peregorodiev on 01.02.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Vehicle <NSObject>

- (void)ride:(double)distance;

@optional
- (void)toggleEngine:(BOOL)turnOn;

@end

@interface Car : NSObject <Vehicle>
{
    double _power;
    NSString *_model;
}

- (id)initWithModel:(NSString *)model andPower:(double)power;
- (NSString *)info;
+ (void)printCount;


@end

NS_ASSUME_NONNULL_END
