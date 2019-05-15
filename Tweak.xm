%hook SBIdleTimerDescriptorFactory
- (bool)updateIdleTimerSettingsForBatterySaverMode:(id)arg1 {
    return 0;
} 
%end

%hook SpringBoard
- (bool)isBatterySaverModeActive {
    return 1;
} 
%end

%hook SpringBoard
- (void)setBatterySaverModeActive:(bool)arg1 {
    arg1 = 1;
    %orig;
} 
%end

%hook SBThermalController
- (bool)isInSunlight {
    return 1;
} 
%end

%hook SBIconAnimator
- (bool)_isDelayedForRotation {
    return 0;
} 
%end

%hook SBApplicationInfo
- (bool)supportsBackgroundAppRefresh {
    return 0;
} 
%end

%hook SBApplicationInfo
- (bool)supportsLegacyVOIPBackgroundMode {
    return 0;
} 
%end

%hook SBTelephonyManager
- (bool)updateLocale {
    return 0;
} 
%end

%hook SBBackgroundMultitaskingManager
- (bool)_launchAppForUpdating:(id)arg1 trigger:(unsigned long long)arg2 pushNotificationUserInfo:(id)arg3 withWatchdoggableCompletion:(id)arg4 {
    return 0;
} 
%end

%hook SBApplicationAutoLaunchService
- (bool)_shouldAutoLaunchApplication:(id)arg1 forReason:(unsigned long long)arg2 {
    return 0;
} 
%end

%hook SBBackgroundMultitaskingManager
- (bool)_appIsBeingDebugged:(id)arg1 {
    return 0;
} 
%end