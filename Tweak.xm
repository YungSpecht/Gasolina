#import <Cephei/HBPreferences.h>

//Utils
HBPreferences *pfs;

// Settings
BOOL enabled = YES;
BOOL ToggleLPM = YES;
BOOL noAutoLock = YES;
BOOL noBackgroundRefresh = YES;
BOOL noAutoAppLaunch = YES;
BOOL noBackgroundNetwork = YES;

%group Gasolina

%hook SpringBoard
- (bool)isBatterySaverModeActive {
	if(ToggleLPM)
        return YES;
	else
		return %orig;
} 
- (void)setBatterySaverModeActive:(bool)arg1 {
	if(ToggleLPM)
		arg1 = YES;
	else
		%orig(arg1);
	%orig;
}
- (bool)underMemoryPressure {
    return NO;
}
%end

//Enable/Disabling LPM Autolock
%hook SBIdleTimerDescriptorFactory
- (bool)updateIdleTimerSettingsForBatterySaverMode:(id)arg1 {
    if(noAutoLock)
	    return NO;
    else
        return %orig(arg1);		
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

//Enabling/Disabling Background App Refresh
%hook SBApplicationInfo
- (bool)supportsBackgroundAppRefresh {
    if(noBackgroundRefresh)
	    return NO;
    else
		return %orig;
} 
%end

%hook SBApplicationInfo
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

//Enabling/Disabling Automatic Application Launching
%hook SBApplicationAutoLaunchService
- (bool)_shouldAutoLaunchApplication:(id)arg1 forReason:(unsigned long long)arg2 {
    if(noAutoAppLaunch)
    	return NO;
    else
		return %orig(arg1, arg2);
} 
%end

//Enabling/Disabling Background Network Usage
%hook SBApplication
- (void)setUsesBackgroundNetwork:(bool)arg1 {
    if(noBackgroundNetwork)
	arg1 = NO;
    else %orig(arg1);
    %orig;
} 
- (bool)usesBackgroundNetwork {
	if(noBackgroundNetwork)
		return NO;
	else
		return %orig;
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

%end // Gasolina group

%ctor {
    pfs = [[HBPreferences alloc] initWithIdentifier:@"com.rango.gasolinaprefs"];

    // General
    [pfs registerBool:&enabled default:YES forKey:@"Enabled"];
	[pfs registerBool:&ToggleLPM default:YES forKey:@"ToggleLPM"];

    // Custom Settings
    [pfs registerBool:&noAutoLock default:YES forKey:@"NoLPMAutoLock"];
    [pfs registerBool:&noBackgroundRefresh default:YES forKey:@"NoBackgroundRefresh"];
    [pfs registerBool:&noAutoAppLaunch default:YES forKey:@"NoAutomaticAppLaunching"];
	[pfs registerBool:&noBackgroundNetwork default:YES forKey:@"NoBackgroundNetworkUsage"];

    if (!enabled) return;

    %init(Gasolina);
	
}