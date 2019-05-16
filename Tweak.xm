%hook SBIdleTimerDescriptorFactory
- (bool)updateIdleTimerSettingsForBatterySaverMode:(id)arg1 {
    return NO;
} 
%end

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