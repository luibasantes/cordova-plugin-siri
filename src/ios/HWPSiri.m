#import "HWPSiri.h"


@implementation HWPSiri

- (void)greet:(CDVInvokedUrlCommand*)command
{

    NSString* name = [[command arguments] objectAtIndex:0];
    NSString* msg = [NSString stringWithFormat: @"Hello, %@", name];

    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:msg];

    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

- (void)permission:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    retValue = NO;
    [INPreferences requestSiriAuthorization:^(INSiriAuthorizationStatus status){
        switch (status) {
            case INSiriAuthorizationStatusAuthorized:
                retValue = YES;
                break;
            default:
                retValue = NO;
                break;
        }
    }];
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:retValue];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
    
@end
