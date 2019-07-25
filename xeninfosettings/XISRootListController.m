#include "XISRootListController.h"
#include "notify.h"

@implementation XISRootListController

- (NSArray *)specifiers {
    if (!_specifiers) {
        _specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
    }

    return _specifiers;
}

- (void)respring:(id)sender {
    notify_post("com.junesiphone.xeninfosettings/respring");
}

- (void)launchAPI:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://junesiphone.com/xeninfo"] options:@{} completionHandler:nil];
}
- (void)launchTwitterJune:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://twitter.com/junesiphone"] options:@{} completionHandler:nil];
}
- (void)launchTwitterMatt:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://twitter.com/_matchstic"] options:@{} completionHandler:nil];
}

@end
