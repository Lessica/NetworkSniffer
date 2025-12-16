#import <Preferences/PSListController.h>
#import <Preferences/PSSpecifier.h>

@interface ENSRootListController : PSListController
@end

@implementation ENSRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}
	return _specifiers;
}

@end
