//
//  main.m
//  Obj-C_Demo
//
//  Created by Danil Peregorodiev on 01.02.2022.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // указатели
//        int a = 5;
//        NSLog(@"a = %d", a);
//        NSLog(@"address a = %p", &a);
//
//        int *b = &a;
//        NSLog(@"address b = %p", b);
//        NSLog(@"b = %d", *b);
//
//        a = 10;
//        NSLog(@"address b = %p", b);
//        NSLog(@"b = %d", *b);
        Car *car1 = [[Car alloc] initWithModel:@"BMW" andPower:320];
        NSString *car1Info = [car1 info];
        NSLog(@"Info about car1: %@", car1Info);
        
        if ([Car conformsToProtocol:@protocol(Vehicle)]) {
            [car1 ride:100];
            
            if ([car1 respondsToSelector:@selector(toggleEngine:)]) {
                [car1 toggleEngine:YES];
                [car1 toggleEngine:NO];
            }
        }
        
        Car *car2 = [[Car alloc] initWithModel:@"Mercedes" andPower:270];
        NSString *car2Info = [car2 info];
        NSLog(@"Info about car2: %@", car2Info);
        
        Car *car3 = [[Car alloc] initWithModel:@"Audi" andPower:310];
        NSString *car3Info = [car3 info];
        NSLog(@"Info about car3: %@", car3Info);
        
        [Car printCount];
    }
    return 0;
}
