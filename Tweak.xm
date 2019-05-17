#import <Cephei/HBPreferences.h>

//Utils
HBPreferences *pfs;

// Settings
BOOL enabled = YES;
BOOL noAutoLock = YES;
BOOL noBackgroundRefresh = YES;
BOOL noAutoAppLaunch = YES;

%hook SpringBoard
- (bool)isBatterySaverModeActive {
    return YES;
} 
- (void)setBatterySaverModeActive:(bool)arg1 {
    arg1 = YES;
    %orig;
}
- (bool)underMemoryPressure {
    return NO;
}
%end

//Disabling LPM Autolock
%hook SBIdleTimerDescriptorFactory
- (bool)updateIdleTimerSettingsForBatterySaverMode:(id)arg1 {
    return NO;
} 
%end

%hook SBThermalController
- (bool)isInSunlight {
    return YES;
} 
%end

%hook SBIconAnimator
- (bool)_isDelayedForRotation {
    return NO;
} 
%end

//Disabling/Enabling Background App Refresh
%hook SBApplicationInfo
- (bool)supportsBackgroundAppRefresh {
    return NO;
} 
- (bool)supportsLegacyVOIPBackgroundMode {
    return NO;
} 
%end

%hook SBTelephonyManager
- (bool)updateLocale {
    return NO;
} 
%end

%hook SBBackgroundMultitaskingManager
- (bool)_launchAppForUpdating:(id)arg1 trigger:(unsigned long long)arg2 pushNotificationUserInfo:(id)arg3 withWatchdoggableCompletion:(id)arg4 {
    return NO;
} 
- (bool)_appIsBeingDebugged:(id)arg1 {
    return NO;
} 
%end

//Disabling Automatic Application Launching
%hook SBApplicationAutoLaunchService
- (bool)_shouldAutoLaunchApplication:(id)arg1 forReason:(unsigned long long)arg2 {
    return NO;
} 
%end

%hook SBApplication
- (void)setUsesBackgroundNetwork:(bool)arg1 {
    arg1 = NO;
    %orig;
} 
- (bool)usesBackgroundNetwork {
    return NO;
} 
%end

%hook BCBatteryDevice
- (bool)isBatterySaverModeActive {
    return YES;
} 
- (void)setBatterySaverModeActive:(bool)arg1 {
    arg1 = YES;
    %orig;
} 
- (void)setLowBattery:(bool)arg1 {
    arg1 = YES;
    %orig;
} 
- (bool)isLowBattery {
    return YES;
} 
%end

%ctor {
    pfs = [[HBPreferences alloc] initWithIdentifier:@"com.esquilli.lisa"];

    // Gasolina Preferences
    [pfs registerBool:&enabled default:YES forKey:@"Enabled"];

    // Custom Settings
    [pfs registerBool:&noAutoLock default:YES forKey:@"NoLPMAutoLock"];
    [pfs registerBool:&noBackgroundRefresh default:YES forKey:@"NoBackgroundRefresh"];
    [pfs registerBool:&noAutoAppLaunch default:YES forKey:@"NoAutomaticAppLaunching"];
}