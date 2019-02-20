#import "AppDelegate.h"
#import "MainViewController.h"
#import "AppDelegate+TwitterConnect.h"
#import <TwitterKit/TWTRKit.h>

@implementation AppDelegate (TwitterConnect)
- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    self.viewController = [[MainViewController alloc] init];
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options {
    return [[Twitter sharedInstance] application:app openURL:url options:options];
}

@end