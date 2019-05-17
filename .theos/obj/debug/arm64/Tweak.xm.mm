#line 1 "Tweak.xm"
#import <Cephei/HBPreferences.h>


HBPreferences *pfs;


BOOL enabled = YES;
BOOL noAutoLock = YES;
BOOL noBackgroundRefresh = YES;
BOOL noAutoAppLaunch = YES;
BOOL noBackgroundNetwork = YES;


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SpringBoard; @class SBThermalController; @class SBApplicationAutoLaunchService; @class SBIconAnimator; @class SBIdleTimerDescriptorFactory; @class SBBackgroundMultitaskingManager; @class SBApplication; @class BCBatteryDevice; @class SBApplicationInfo; @class SBTelephonyManager; 


#line 13 "Tweak.xm"
static bool (*_logos_orig$Gasolina$SpringBoard$isBatterySaverModeActive)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL); static bool _logos_method$Gasolina$SpringBoard$isBatterySaverModeActive(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$Gasolina$SpringBoard$setBatterySaverModeActive$)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$Gasolina$SpringBoard$setBatterySaverModeActive$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$Gasolina$SpringBoard$underMemoryPressure)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL); static bool _logos_method$Gasolina$SpringBoard$underMemoryPressure(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$Gasolina$SBIdleTimerDescriptorFactory$updateIdleTimerSettingsForBatterySaverMode$)(_LOGOS_SELF_TYPE_NORMAL SBIdleTimerDescriptorFactory* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$Gasolina$SBIdleTimerDescriptorFactory$updateIdleTimerSettingsForBatterySaverMode$(_LOGOS_SELF_TYPE_NORMAL SBIdleTimerDescriptorFactory* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$Gasolina$SBThermalController$isInSunlight)(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$Gasolina$SBThermalController$isInSunlight(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$Gasolina$SBIconAnimator$_isDelayedForRotation)(_LOGOS_SELF_TYPE_NORMAL SBIconAnimator* _LOGOS_SELF_CONST, SEL); static bool _logos_method$Gasolina$SBIconAnimator$_isDelayedForRotation(_LOGOS_SELF_TYPE_NORMAL SBIconAnimator* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$Gasolina$SBApplicationInfo$supportsBackgroundAppRefresh)(_LOGOS_SELF_TYPE_NORMAL SBApplicationInfo* _LOGOS_SELF_CONST, SEL); static bool _logos_method$Gasolina$SBApplicationInfo$supportsBackgroundAppRefresh(_LOGOS_SELF_TYPE_NORMAL SBApplicationInfo* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$Gasolina$SBApplicationInfo$supportsLegacyVOIPBackgroundMode)(_LOGOS_SELF_TYPE_NORMAL SBApplicationInfo* _LOGOS_SELF_CONST, SEL); static bool _logos_method$Gasolina$SBApplicationInfo$supportsLegacyVOIPBackgroundMode(_LOGOS_SELF_TYPE_NORMAL SBApplicationInfo* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$Gasolina$SBTelephonyManager$updateLocale)(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST, SEL); static bool _logos_method$Gasolina$SBTelephonyManager$updateLocale(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$Gasolina$SBBackgroundMultitaskingManager$_launchAppForUpdating$trigger$pushNotificationUserInfo$withWatchdoggableCompletion$)(_LOGOS_SELF_TYPE_NORMAL SBBackgroundMultitaskingManager* _LOGOS_SELF_CONST, SEL, id, unsigned long long, id, id); static bool _logos_method$Gasolina$SBBackgroundMultitaskingManager$_launchAppForUpdating$trigger$pushNotificationUserInfo$withWatchdoggableCompletion$(_LOGOS_SELF_TYPE_NORMAL SBBackgroundMultitaskingManager* _LOGOS_SELF_CONST, SEL, id, unsigned long long, id, id); static bool (*_logos_orig$Gasolina$SBBackgroundMultitaskingManager$_appIsBeingDebugged$)(_LOGOS_SELF_TYPE_NORMAL SBBackgroundMultitaskingManager* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$Gasolina$SBBackgroundMultitaskingManager$_appIsBeingDebugged$(_LOGOS_SELF_TYPE_NORMAL SBBackgroundMultitaskingManager* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$Gasolina$SBApplicationAutoLaunchService$_shouldAutoLaunchApplication$forReason$)(_LOGOS_SELF_TYPE_NORMAL SBApplicationAutoLaunchService* _LOGOS_SELF_CONST, SEL, id, unsigned long long); static bool _logos_method$Gasolina$SBApplicationAutoLaunchService$_shouldAutoLaunchApplication$forReason$(_LOGOS_SELF_TYPE_NORMAL SBApplicationAutoLaunchService* _LOGOS_SELF_CONST, SEL, id, unsigned long long); static void (*_logos_orig$Gasolina$SBApplication$setUsesBackgroundNetwork$)(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$Gasolina$SBApplication$setUsesBackgroundNetwork$(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$Gasolina$SBApplication$usesBackgroundNetwork)(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST, SEL); static bool _logos_method$Gasolina$SBApplication$usesBackgroundNetwork(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$Gasolina$BCBatteryDevice$isBatterySaverModeActive)(_LOGOS_SELF_TYPE_NORMAL BCBatteryDevice* _LOGOS_SELF_CONST, SEL); static bool _logos_method$Gasolina$BCBatteryDevice$isBatterySaverModeActive(_LOGOS_SELF_TYPE_NORMAL BCBatteryDevice* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$Gasolina$BCBatteryDevice$setBatterySaverModeActive$)(_LOGOS_SELF_TYPE_NORMAL BCBatteryDevice* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$Gasolina$BCBatteryDevice$setBatterySaverModeActive$(_LOGOS_SELF_TYPE_NORMAL BCBatteryDevice* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$Gasolina$BCBatteryDevice$setLowBattery$)(_LOGOS_SELF_TYPE_NORMAL BCBatteryDevice* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$Gasolina$BCBatteryDevice$setLowBattery$(_LOGOS_SELF_TYPE_NORMAL BCBatteryDevice* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$Gasolina$BCBatteryDevice$isLowBattery)(_LOGOS_SELF_TYPE_NORMAL BCBatteryDevice* _LOGOS_SELF_CONST, SEL); static bool _logos_method$Gasolina$BCBatteryDevice$isLowBattery(_LOGOS_SELF_TYPE_NORMAL BCBatteryDevice* _LOGOS_SELF_CONST, SEL); 


static bool _logos_method$Gasolina$SpringBoard$isBatterySaverModeActive(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return YES;
} 
static void _logos_method$Gasolina$SpringBoard$setBatterySaverModeActive$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = YES;
    _logos_orig$Gasolina$SpringBoard$setBatterySaverModeActive$(self, _cmd, arg1);
}
static bool _logos_method$Gasolina$SpringBoard$underMemoryPressure(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NO;
}




static bool _logos_method$Gasolina$SBIdleTimerDescriptorFactory$updateIdleTimerSettingsForBatterySaverMode$(_LOGOS_SELF_TYPE_NORMAL SBIdleTimerDescriptorFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    if(noAutoLock)
	    return NO;
    else
        return _logos_orig$Gasolina$SBIdleTimerDescriptorFactory$updateIdleTimerSettingsForBatterySaverMode$(self, _cmd, arg1);		
} 



static bool _logos_method$Gasolina$SBThermalController$isInSunlight(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return YES;
} 



static bool _logos_method$Gasolina$SBIconAnimator$_isDelayedForRotation(_LOGOS_SELF_TYPE_NORMAL SBIconAnimator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NO;
} 




static bool _logos_method$Gasolina$SBApplicationInfo$supportsBackgroundAppRefresh(_LOGOS_SELF_TYPE_NORMAL SBApplicationInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if(noBackgroundRefresh)
	    return NO;
    else
		return _logos_orig$Gasolina$SBApplicationInfo$supportsBackgroundAppRefresh(self, _cmd);
} 



static bool _logos_method$Gasolina$SBApplicationInfo$supportsLegacyVOIPBackgroundMode(_LOGOS_SELF_TYPE_NORMAL SBApplicationInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NO;
} 



static bool _logos_method$Gasolina$SBTelephonyManager$updateLocale(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NO;
} 



static bool _logos_method$Gasolina$SBBackgroundMultitaskingManager$_launchAppForUpdating$trigger$pushNotificationUserInfo$withWatchdoggableCompletion$(_LOGOS_SELF_TYPE_NORMAL SBBackgroundMultitaskingManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, unsigned long long arg2, id arg3, id arg4) {
    return NO;
} 
static bool _logos_method$Gasolina$SBBackgroundMultitaskingManager$_appIsBeingDebugged$(_LOGOS_SELF_TYPE_NORMAL SBBackgroundMultitaskingManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return NO;
} 




static bool _logos_method$Gasolina$SBApplicationAutoLaunchService$_shouldAutoLaunchApplication$forReason$(_LOGOS_SELF_TYPE_NORMAL SBApplicationAutoLaunchService* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, unsigned long long arg2) {
    if(noAutoAppLaunch)
    	return NO;
    else
		return _logos_orig$Gasolina$SBApplicationAutoLaunchService$_shouldAutoLaunchApplication$forReason$(self, _cmd, arg1, arg2);
} 




static void _logos_method$Gasolina$SBApplication$setUsesBackgroundNetwork$(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    if(noBackgroundNetwork)
	arg1 = NO;
    else _logos_orig$Gasolina$SBApplication$setUsesBackgroundNetwork$(self, _cmd, arg1);
    _logos_orig$Gasolina$SBApplication$setUsesBackgroundNetwork$(self, _cmd, arg1);
} 
static bool _logos_method$Gasolina$SBApplication$usesBackgroundNetwork(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	if(noBackgroundNetwork)
		return NO;
	else
		return _logos_orig$Gasolina$SBApplication$usesBackgroundNetwork(self, _cmd);
} 



static bool _logos_method$Gasolina$BCBatteryDevice$isBatterySaverModeActive(_LOGOS_SELF_TYPE_NORMAL BCBatteryDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return YES;
} 
static void _logos_method$Gasolina$BCBatteryDevice$setBatterySaverModeActive$(_LOGOS_SELF_TYPE_NORMAL BCBatteryDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = YES;
    _logos_orig$Gasolina$BCBatteryDevice$setBatterySaverModeActive$(self, _cmd, arg1);
} 
static void _logos_method$Gasolina$BCBatteryDevice$setLowBattery$(_LOGOS_SELF_TYPE_NORMAL BCBatteryDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = YES;
    _logos_orig$Gasolina$BCBatteryDevice$setLowBattery$(self, _cmd, arg1);
} 
static bool _logos_method$Gasolina$BCBatteryDevice$isLowBattery(_LOGOS_SELF_TYPE_NORMAL BCBatteryDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return YES;
} 


 

static __attribute__((constructor)) void _logosLocalCtor_443d4de9(int __unused argc, char __unused **argv, char __unused **envp) {
    pfs = [[HBPreferences alloc] initWithIdentifier:@"com.rango.gasolinaprefs"];

    
    [pfs registerBool:&enabled default:YES forKey:@"Enabled"];

    
    [pfs registerBool:&noAutoLock default:YES forKey:@"NoLPMAutoLock"];
    [pfs registerBool:&noBackgroundRefresh default:YES forKey:@"NoBackgroundRefresh"];
    [pfs registerBool:&noAutoAppLaunch default:YES forKey:@"NoAutomaticAppLaunching"];
	[pfs registerBool:&noBackgroundNetwork default:YES forKey:@"NoBackgroundNetworkUsage"];

    if (!enabled) return;

    {Class _logos_class$Gasolina$SpringBoard = objc_getClass("SpringBoard"); MSHookMessageEx(_logos_class$Gasolina$SpringBoard, @selector(isBatterySaverModeActive), (IMP)&_logos_method$Gasolina$SpringBoard$isBatterySaverModeActive, (IMP*)&_logos_orig$Gasolina$SpringBoard$isBatterySaverModeActive);MSHookMessageEx(_logos_class$Gasolina$SpringBoard, @selector(setBatterySaverModeActive:), (IMP)&_logos_method$Gasolina$SpringBoard$setBatterySaverModeActive$, (IMP*)&_logos_orig$Gasolina$SpringBoard$setBatterySaverModeActive$);MSHookMessageEx(_logos_class$Gasolina$SpringBoard, @selector(underMemoryPressure), (IMP)&_logos_method$Gasolina$SpringBoard$underMemoryPressure, (IMP*)&_logos_orig$Gasolina$SpringBoard$underMemoryPressure);Class _logos_class$Gasolina$SBIdleTimerDescriptorFactory = objc_getClass("SBIdleTimerDescriptorFactory"); MSHookMessageEx(_logos_class$Gasolina$SBIdleTimerDescriptorFactory, @selector(updateIdleTimerSettingsForBatterySaverMode:), (IMP)&_logos_method$Gasolina$SBIdleTimerDescriptorFactory$updateIdleTimerSettingsForBatterySaverMode$, (IMP*)&_logos_orig$Gasolina$SBIdleTimerDescriptorFactory$updateIdleTimerSettingsForBatterySaverMode$);Class _logos_class$Gasolina$SBThermalController = objc_getClass("SBThermalController"); MSHookMessageEx(_logos_class$Gasolina$SBThermalController, @selector(isInSunlight), (IMP)&_logos_method$Gasolina$SBThermalController$isInSunlight, (IMP*)&_logos_orig$Gasolina$SBThermalController$isInSunlight);Class _logos_class$Gasolina$SBIconAnimator = objc_getClass("SBIconAnimator"); MSHookMessageEx(_logos_class$Gasolina$SBIconAnimator, @selector(_isDelayedForRotation), (IMP)&_logos_method$Gasolina$SBIconAnimator$_isDelayedForRotation, (IMP*)&_logos_orig$Gasolina$SBIconAnimator$_isDelayedForRotation);Class _logos_class$Gasolina$SBApplicationInfo = objc_getClass("SBApplicationInfo"); MSHookMessageEx(_logos_class$Gasolina$SBApplicationInfo, @selector(supportsBackgroundAppRefresh), (IMP)&_logos_method$Gasolina$SBApplicationInfo$supportsBackgroundAppRefresh, (IMP*)&_logos_orig$Gasolina$SBApplicationInfo$supportsBackgroundAppRefresh);MSHookMessageEx(_logos_class$Gasolina$SBApplicationInfo, @selector(supportsLegacyVOIPBackgroundMode), (IMP)&_logos_method$Gasolina$SBApplicationInfo$supportsLegacyVOIPBackgroundMode, (IMP*)&_logos_orig$Gasolina$SBApplicationInfo$supportsLegacyVOIPBackgroundMode);Class _logos_class$Gasolina$SBTelephonyManager = objc_getClass("SBTelephonyManager"); MSHookMessageEx(_logos_class$Gasolina$SBTelephonyManager, @selector(updateLocale), (IMP)&_logos_method$Gasolina$SBTelephonyManager$updateLocale, (IMP*)&_logos_orig$Gasolina$SBTelephonyManager$updateLocale);Class _logos_class$Gasolina$SBBackgroundMultitaskingManager = objc_getClass("SBBackgroundMultitaskingManager"); MSHookMessageEx(_logos_class$Gasolina$SBBackgroundMultitaskingManager, @selector(_launchAppForUpdating:trigger:pushNotificationUserInfo:withWatchdoggableCompletion:), (IMP)&_logos_method$Gasolina$SBBackgroundMultitaskingManager$_launchAppForUpdating$trigger$pushNotificationUserInfo$withWatchdoggableCompletion$, (IMP*)&_logos_orig$Gasolina$SBBackgroundMultitaskingManager$_launchAppForUpdating$trigger$pushNotificationUserInfo$withWatchdoggableCompletion$);MSHookMessageEx(_logos_class$Gasolina$SBBackgroundMultitaskingManager, @selector(_appIsBeingDebugged:), (IMP)&_logos_method$Gasolina$SBBackgroundMultitaskingManager$_appIsBeingDebugged$, (IMP*)&_logos_orig$Gasolina$SBBackgroundMultitaskingManager$_appIsBeingDebugged$);Class _logos_class$Gasolina$SBApplicationAutoLaunchService = objc_getClass("SBApplicationAutoLaunchService"); MSHookMessageEx(_logos_class$Gasolina$SBApplicationAutoLaunchService, @selector(_shouldAutoLaunchApplication:forReason:), (IMP)&_logos_method$Gasolina$SBApplicationAutoLaunchService$_shouldAutoLaunchApplication$forReason$, (IMP*)&_logos_orig$Gasolina$SBApplicationAutoLaunchService$_shouldAutoLaunchApplication$forReason$);Class _logos_class$Gasolina$SBApplication = objc_getClass("SBApplication"); MSHookMessageEx(_logos_class$Gasolina$SBApplication, @selector(setUsesBackgroundNetwork:), (IMP)&_logos_method$Gasolina$SBApplication$setUsesBackgroundNetwork$, (IMP*)&_logos_orig$Gasolina$SBApplication$setUsesBackgroundNetwork$);MSHookMessageEx(_logos_class$Gasolina$SBApplication, @selector(usesBackgroundNetwork), (IMP)&_logos_method$Gasolina$SBApplication$usesBackgroundNetwork, (IMP*)&_logos_orig$Gasolina$SBApplication$usesBackgroundNetwork);Class _logos_class$Gasolina$BCBatteryDevice = objc_getClass("BCBatteryDevice"); MSHookMessageEx(_logos_class$Gasolina$BCBatteryDevice, @selector(isBatterySaverModeActive), (IMP)&_logos_method$Gasolina$BCBatteryDevice$isBatterySaverModeActive, (IMP*)&_logos_orig$Gasolina$BCBatteryDevice$isBatterySaverModeActive);MSHookMessageEx(_logos_class$Gasolina$BCBatteryDevice, @selector(setBatterySaverModeActive:), (IMP)&_logos_method$Gasolina$BCBatteryDevice$setBatterySaverModeActive$, (IMP*)&_logos_orig$Gasolina$BCBatteryDevice$setBatterySaverModeActive$);MSHookMessageEx(_logos_class$Gasolina$BCBatteryDevice, @selector(setLowBattery:), (IMP)&_logos_method$Gasolina$BCBatteryDevice$setLowBattery$, (IMP*)&_logos_orig$Gasolina$BCBatteryDevice$setLowBattery$);MSHookMessageEx(_logos_class$Gasolina$BCBatteryDevice, @selector(isLowBattery), (IMP)&_logos_method$Gasolina$BCBatteryDevice$isLowBattery, (IMP*)&_logos_orig$Gasolina$BCBatteryDevice$isLowBattery);}
	
}
