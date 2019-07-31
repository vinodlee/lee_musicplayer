#import "LeeMusicPlugin.h"
#import <lee_music/lee_music-Swift.h>

@implementation LeeMusicPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLeeMusicPlugin registerWithRegistrar:registrar];
}
@end
