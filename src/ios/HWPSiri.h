#import <Cordova/CDV.h>
#import <Intents/Intents.h>
//#import <Intents/INPreferences.h>
@interface HWPSiri : CDVPlugin{
    // Declare retValue
    BOOL retValue;
}

- (void) greet:(CDVInvokedUrlCommand*)command;
    
- (void) permission:(CDVInvokedUrlCommand*)command;

@end
