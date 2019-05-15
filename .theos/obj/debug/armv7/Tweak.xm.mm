#line 1 "Tweak.xm"

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

@class SBApplicationInfo; @class SBIdleTimerDescriptorFactory; @class SBTelephonyManager; @class SBApplicationAutoLaunchService; @class SpringBoard; @class SBIconAnimator; @class SBBackgroundMultitaskingManager; @class SBThermalController; 
static bool (*_logos_orig$_ungrouped$SBIdleTimerDescriptorFactory$updateIdleTimerSettingsForBatterySaverMode$)(_LOGOS_SELF_TYPE_NORMAL SBIdleTimerDescriptorFactory* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$SBIdleTimerDescriptorFactory$updateIdleTimerSettingsForBatterySaverMode$(_LOGOS_SELF_TYPE_NORMAL SBIdleTimerDescriptorFactory* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$SpringBoard$isBatterySaverModeActive)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SpringBoard$isBatterySaverModeActive(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SpringBoard$setBatterySaverModeActive$)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SpringBoard$setBatterySaverModeActive$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$_ungrouped$SBThermalController$isInSunlight)(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBThermalController$isInSunlight(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBIconAnimator$_isDelayedForRotation)(_LOGOS_SELF_TYPE_NORMAL SBIconAnimator* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBIconAnimator$_isDelayedForRotation(_LOGOS_SELF_TYPE_NORMAL SBIconAnimator* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBApplicationInfo$supportsBackgroundAppRefresh)(_LOGOS_SELF_TYPE_NORMAL SBApplicationInfo* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBApplicationInfo$supportsBackgroundAppRefresh(_LOGOS_SELF_TYPE_NORMAL SBApplicationInfo* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBApplicationInfo$supportsLegacyVOIPBackgroundMode)(_LOGOS_SELF_TYPE_NORMAL SBApplicationInfo* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBApplicationInfo$supportsLegacyVOIPBackgroundMode(_LOGOS_SELF_TYPE_NORMAL SBApplicationInfo* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBTelephonyManager$updateLocale)(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBTelephonyManager$updateLocale(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBBackgroundMultitaskingManager$_launchAppForUpdating$trigger$pushNotificationUserInfo$withWatchdoggableCompletion$)(_LOGOS_SELF_TYPE_NORMAL SBBackgroundMultitaskingManager* _LOGOS_SELF_CONST, SEL, id, unsigned long long, id, id); static bool _logos_method$_ungrouped$SBBackgroundMultitaskingManager$_launchAppForUpdating$trigger$pushNotificationUserInfo$withWatchdoggableCompletion$(_LOGOS_SELF_TYPE_NORMAL SBBackgroundMultitaskingManager* _LOGOS_SELF_CONST, SEL, id, unsigned long long, id, id); static bool (*_logos_orig$_ungrouped$SBBackgroundMultitaskingManager$_appIsBeingDebugged$)(_LOGOS_SELF_TYPE_NORMAL SBBackgroundMultitaskingManager* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$SBBackgroundMultitaskingManager$_appIsBeingDebugged$(_LOGOS_SELF_TYPE_NORMAL SBBackgroundMultitaskingManager* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$SBApplicationAutoLaunchService$_shouldAutoLaunchApplication$forReason$)(_LOGOS_SELF_TYPE_NORMAL SBApplicationAutoLaunchService* _LOGOS_SELF_CONST, SEL, id, unsigned long long); static bool _logos_method$_ungrouped$SBApplicationAutoLaunchService$_shouldAutoLaunchApplication$forReason$(_LOGOS_SELF_TYPE_NORMAL SBApplicationAutoLaunchService* _LOGOS_SELF_CONST, SEL, id, unsigned long long); 

#line 1 "Tweak.xm"

static bool _logos_method$_ungrouped$SBIdleTimerDescriptorFactory$updateIdleTimerSettingsForBatterySaverMode$(_LOGOS_SELF_TYPE_NORMAL SBIdleTimerDescriptorFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 0;
} 



static bool _logos_method$_ungrouped$SpringBoard$isBatterySaverModeActive(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
} 



static void _logos_method$_ungrouped$SpringBoard$setBatterySaverModeActive$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$SpringBoard$setBatterySaverModeActive$(self, _cmd, arg1);
} 



static bool _logos_method$_ungrouped$SBThermalController$isInSunlight(_LOGOS_SELF_TYPE_NORMAL SBThermalController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
} 



static bool _logos_method$_ungrouped$SBIconAnimator$_isDelayedForRotation(_LOGOS_SELF_TYPE_NORMAL SBIconAnimator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
} 



static bool _logos_method$_ungrouped$SBApplicationInfo$supportsBackgroundAppRefresh(_LOGOS_SELF_TYPE_NORMAL SBApplicationInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
} 



static bool _logos_method$_ungrouped$SBApplicationInfo$supportsLegacyVOIPBackgroundMode(_LOGOS_SELF_TYPE_NORMAL SBApplicationInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
} 



static bool _logos_method$_ungrouped$SBTelephonyManager$updateLocale(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
} 



static bool _logos_method$_ungrouped$SBBackgroundMultitaskingManager$_launchAppForUpdating$trigger$pushNotificationUserInfo$withWatchdoggableCompletion$(_LOGOS_SELF_TYPE_NORMAL SBBackgroundMultitaskingManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, unsigned long long arg2, id arg3, id arg4) {
    return 0;
} 



static bool _logos_method$_ungrouped$SBApplicationAutoLaunchService$_shouldAutoLaunchApplication$forReason$(_LOGOS_SELF_TYPE_NORMAL SBApplicationAutoLaunchService* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, unsigned long long arg2) {
    return 0;
} 



static bool _logos_method$_ungrouped$SBBackgroundMultitaskingManager$_appIsBeingDebugged$(_LOGOS_SELF_TYPE_NORMAL SBBackgroundMultitaskingManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 0;
} 

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIdleTimerDescriptorFactory = objc_getClass("SBIdleTimerDescriptorFactory"); MSHookMessageEx(_logos_class$_ungrouped$SBIdleTimerDescriptorFactory, @selector(updateIdleTimerSettingsForBatterySaverMode:), (IMP)&_logos_method$_ungrouped$SBIdleTimerDescriptorFactory$updateIdleTimerSettingsForBatterySaverMode$, (IMP*)&_logos_orig$_ungrouped$SBIdleTimerDescriptorFactory$updateIdleTimerSettingsForBatterySaverMode$);Class _logos_class$_ungrouped$SpringBoard = objc_getClass("SpringBoard"); MSHookMessageEx(_logos_class$_ungrouped$SpringBoard, @selector(isBatterySaverModeActive), (IMP)&_logos_method$_ungrouped$SpringBoard$isBatterySaverModeActive, (IMP*)&_logos_orig$_ungrouped$SpringBoard$isBatterySaverModeActive);MSHookMessageEx(_logos_class$_ungrouped$SpringBoard, @selector(setBatterySaverModeActive:), (IMP)&_logos_method$_ungrouped$SpringBoard$setBatterySaverModeActive$, (IMP*)&_logos_orig$_ungrouped$SpringBoard$setBatterySaverModeActive$);Class _logos_class$_ungrouped$SBThermalController = objc_getClass("SBThermalController"); MSHookMessageEx(_logos_class$_ungrouped$SBThermalController, @selector(isInSunlight), (IMP)&_logos_method$_ungrouped$SBThermalController$isInSunlight, (IMP*)&_logos_orig$_ungrouped$SBThermalController$isInSunlight);Class _logos_class$_ungrouped$SBIconAnimator = objc_getClass("SBIconAnimator"); MSHookMessageEx(_logos_class$_ungrouped$SBIconAnimator, @selector(_isDelayedForRotation), (IMP)&_logos_method$_ungrouped$SBIconAnimator$_isDelayedForRotation, (IMP*)&_logos_orig$_ungrouped$SBIconAnimator$_isDelayedForRotation);Class _logos_class$_ungrouped$SBApplicationInfo = objc_getClass("SBApplicationInfo"); MSHookMessageEx(_logos_class$_ungrouped$SBApplicationInfo, @selector(supportsBackgroundAppRefresh), (IMP)&_logos_method$_ungrouped$SBApplicationInfo$supportsBackgroundAppRefresh, (IMP*)&_logos_orig$_ungrouped$SBApplicationInfo$supportsBackgroundAppRefresh);MSHookMessageEx(_logos_class$_ungrouped$SBApplicationInfo, @selector(supportsLegacyVOIPBackgroundMode), (IMP)&_logos_method$_ungrouped$SBApplicationInfo$supportsLegacyVOIPBackgroundMode, (IMP*)&_logos_orig$_ungrouped$SBApplicationInfo$supportsLegacyVOIPBackgroundMode);Class _logos_class$_ungrouped$SBTelephonyManager = objc_getClass("SBTelephonyManager"); MSHookMessageEx(_logos_class$_ungrouped$SBTelephonyManager, @selector(updateLocale), (IMP)&_logos_method$_ungrouped$SBTelephonyManager$updateLocale, (IMP*)&_logos_orig$_ungrouped$SBTelephonyManager$updateLocale);Class _logos_class$_ungrouped$SBBackgroundMultitaskingManager = objc_getClass("SBBackgroundMultitaskingManager"); MSHookMessageEx(_logos_class$_ungrouped$SBBackgroundMultitaskingManager, @selector(_launchAppForUpdating:trigger:pushNotificationUserInfo:withWatchdoggableCompletion:), (IMP)&_logos_method$_ungrouped$SBBackgroundMultitaskingManager$_launchAppForUpdating$trigger$pushNotificationUserInfo$withWatchdoggableCompletion$, (IMP*)&_logos_orig$_ungrouped$SBBackgroundMultitaskingManager$_launchAppForUpdating$trigger$pushNotificationUserInfo$withWatchdoggableCompletion$);MSHookMessageEx(_logos_class$_ungrouped$SBBackgroundMultitaskingManager, @selector(_appIsBeingDebugged:), (IMP)&_logos_method$_ungrouped$SBBackgroundMultitaskingManager$_appIsBeingDebugged$, (IMP*)&_logos_orig$_ungrouped$SBBackgroundMultitaskingManager$_appIsBeingDebugged$);Class _logos_class$_ungrouped$SBApplicationAutoLaunchService = objc_getClass("SBApplicationAutoLaunchService"); MSHookMessageEx(_logos_class$_ungrouped$SBApplicationAutoLaunchService, @selector(_shouldAutoLaunchApplication:forReason:), (IMP)&_logos_method$_ungrouped$SBApplicationAutoLaunchService$_shouldAutoLaunchApplication$forReason$, (IMP*)&_logos_orig$_ungrouped$SBApplicationAutoLaunchService$_shouldAutoLaunchApplication$forReason$);} }
#line 67 "Tweak.xm"
