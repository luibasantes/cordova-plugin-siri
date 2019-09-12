#import <Cordova/CDV.h>

@interface HWPSiri : CDVPlugin

- (void) greet:(CDVInvokedUrlCommand*)command;
    
- (void) permission:(CDVInvokedUrlCommand*)command;

@end
