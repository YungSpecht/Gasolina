#include "GLARootListController.h"

@implementation GLARootListController

-(instancetype)init {
    self = [super init];

    if (self) {
        HBAppearanceSettings *appearanceSettings = [[HBAppearanceSettings alloc] init];
        appearanceSettings.tintColor = [UIColor colorWithRed:0.30 green:0.85 blue:0.39 alpha:1.0];
        appearanceSettings.tableViewCellSeparatorColor = [UIColor colorWithWhite:0 alpha:0];
        self.hb_appearanceSettings = appearanceSettings;
    }

    return self;
}

-(NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

-(void)respring {
    UIAlertController *respring = [UIAlertController alertControllerWithTitle:@"Gasolina"
                                                     message:@"Are you sure you want respring?"
                                                     preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * action) {
            [self respringUtil];
    }];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    [respring addAction:confirmAction];
    [respring addAction:cancelAction];
    [self presentViewController:respring animated:YES completion:nil];

}

-(void)respringUtil {
    pid_t pid;
    const char* args[] = {"killall", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

-(IBAction)twitterRango {
    NSURL *URL = [NSURL URLWithString: @"https://twitter.com/Yung_Specht"];
    [[UIApplication sharedApplication] openURL:URL options:@{} completionHandler:nil];
}

@end
