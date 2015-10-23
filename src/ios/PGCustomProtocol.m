

#import "PGCustomProtocol.h"

@interface PGCustomProtocol () {}
@property (nonatomic, retain) NSString* callbackId;
@end

@implementation PGCustomProtocol


- (void)init:(CDVInvokedUrlCommand*)command
{
    self.callbackId = [NSString stringWithString:command.callbackId ];
    
    //CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    //[self.commandDelegate sendPluginResult:pluginResult callbackId:callbackId];
    
}

@end
