# os
| Symbol | Meaning 
| ------------- | ------------- 
| :x: | Object has not yet been started. 
| :eight_pointed_black_star: | Object is in progress. 
| :white_check_mark: | Object is completed. 


| Object | Percentage (of Bytes) | Functions Done / Total Functions | Percentage (Functions) | Status 
| ------------- | ------------- | ------------- | ------------- | ------------- 
| OS.o | 100.0% | 20 / 20 | 100.0% | :white_check_mark: 
| OSAlarm.o | 100.0% | 12 / 12 | 100.0% | :white_check_mark: 
| OSAlloc.o | 100.0% | 6 / 6 | 100.0% | :white_check_mark: 
| OSArena.o | 100.0% | 13 / 13 | 100.0% | :white_check_mark: 
| OSAudioSystem.o | 100.0% | 3 / 3 | 100.0% | :white_check_mark: 
| OSCache.o | 100.0% | 18 / 18 | 100.0% | :white_check_mark: 
| OSContext.o | 100.0% | 16 / 16 | 100.0% | :white_check_mark: 
| OSError.o | 59.219088937093275% | 4 / 5 | 80.0% | :eight_pointed_black_star: 
| OSExec.o | 24.72144846796657% | 5 / 11 | 45.45454545454545% | :eight_pointed_black_star: 
| OSFatal.o | 100.0% | 4 / 4 | 100.0% | :white_check_mark: 
| OSFont.o | 100.0% | 8 / 8 | 100.0% | :white_check_mark: 
| OSInterrupt.o | 100.0% | 11 / 11 | 100.0% | :white_check_mark: 
| OSLink.o | 100.0% | 1 / 1 | 100.0% | :white_check_mark: 
| OSMessage.o | 100.0% | 4 / 4 | 100.0% | :white_check_mark: 
| OSMemory.o | 100.0% | 18 / 18 | 100.0% | :white_check_mark: 
| OSMutex.o | 100.0% | 5 / 5 | 100.0% | :white_check_mark: 
| OSReboot.o | 100.0% | 2 / 2 | 100.0% | :white_check_mark: 
| OSReset.o | 84.006734006734% | 11 / 14 | 78.57142857142857% | :eight_pointed_black_star: 
| OSRtc.o | 100.0% | 9 / 9 | 100.0% | :white_check_mark: 
| OSSync.o | 100.0% | 2 / 2 | 100.0% | :white_check_mark: 
| OSThread.o | 100.0% | 28 / 28 | 100.0% | :white_check_mark: 
| OSTime.o | 100.0% | 6 / 6 | 100.0% | :white_check_mark: 
| OSUtf.o | 100.0% | 4 / 4 | 100.0% | :white_check_mark: 
| OSIpc.o | 100.0% | 3 / 3 | 100.0% | :white_check_mark: 
| OSStateTM.o | 32.55813953488372% | 5 / 12 | 41.66666666666667% | :eight_pointed_black_star: 
| OSPlayRecord.o | 100.0% | 4 / 4 | 100.0% | :white_check_mark: 
| OSStateFlags.o | 100.0% | 2 / 2 | 100.0% | :white_check_mark: 
| OSNet.o | 100.0% | 1 / 1 | 100.0% | :white_check_mark: 
| OSNandbootInfo.o | 0.0% | 0 / 2 | 0.0% | :x: 
| OSPlayTime.o | 100.0% | 8 / 8 | 100.0% | :white_check_mark: 
| OSLaunch.o | 0.0% | 0 / 8 | 0.0% | :x: 
| __ppc_eabi_init.o | 100.0% | 3 / 3 | 100.0% | :white_check_mark: 


# OS.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| __OSFPRInit | :white_check_mark: |
| __OSGetIOSRev | :white_check_mark: |
| OSGetConsoleType | :white_check_mark: |
| ClearArena | :white_check_mark: |
| ClearMEM2Arena | :white_check_mark: |
| InquiryCallback | :white_check_mark: |
| ReportOSInfo | :white_check_mark: |
| OSInit | :white_check_mark: |
| OSExceptionInit | :white_check_mark: |
| __OSDBIntegrator | :white_check_mark: |
| __OSDBJump | :white_check_mark: |
| __OSSetExceptionHandler | :white_check_mark: |
| __OSGetExceptionHandler | :white_check_mark: |
| OSExceptionVector | :white_check_mark: |
| OSDefaultExceptionHandler | :white_check_mark: |
| __OSPSInit | :white_check_mark: |
| __OSGetDIConfig | :white_check_mark: |
| OSRegisterVersion | :white_check_mark: |
| OSGetAppGamename | :white_check_mark: |
| OSGetAppType | :white_check_mark: |


# OSAlarm.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| __OSInitAlarm | :white_check_mark: |
| OSCreateAlarm | :white_check_mark: |
| InsertAlarm | :white_check_mark: |
| OSSetAlarm | :white_check_mark: |
| OSSetPeriodicAlarm | :white_check_mark: |
| OSCancelAlarm | :white_check_mark: |
| DecrementerExceptionCallback | :white_check_mark: |
| DecrementerExceptionHandler | :white_check_mark: |
| OSSetAlarmTag | :white_check_mark: |
| OnReset | :white_check_mark: |
| OSSetAlarmUserData | :white_check_mark: |
| OSGetAlarmUserData | :white_check_mark: |


# OSAlloc.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| DLInsert | :white_check_mark: |
| OSAllocFromHeap | :white_check_mark: |
| OSFreeToHeap | :white_check_mark: |
| OSSetCurrentHeap | :white_check_mark: |
| OSInitAlloc | :white_check_mark: |
| OSCreateHeap | :white_check_mark: |


# OSArena.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| OSGetMEM1ArenaHi | :white_check_mark: |
| OSGetMEM2ArenaHi | :white_check_mark: |
| OSGetArenaHi | :white_check_mark: |
| OSGetMEM1ArenaLo | :white_check_mark: |
| OSGetMEM2ArenaLo | :white_check_mark: |
| OSGetArenaLo | :white_check_mark: |
| OSSetMEM1ArenaHi | :white_check_mark: |
| OSSetMEM2ArenaHi | :white_check_mark: |
| OSSetArenaHi | :white_check_mark: |
| OSSetMEM1ArenaLo | :white_check_mark: |
| OSSetMEM2ArenaLo | :white_check_mark: |
| OSSetArenaLo | :white_check_mark: |
| OSAllocFromMEM1ArenaLo | :white_check_mark: |


# OSAudioSystem.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| __AIClockInit | :white_check_mark: |
| __OSInitAudioSystem | :white_check_mark: |
| __OSStopAudioSystem | :white_check_mark: |


# OSCache.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| DCEnable | :white_check_mark: |
| DCInvalidateRange | :white_check_mark: |
| DCFlushRange | :white_check_mark: |
| DCStoreRange | :white_check_mark: |
| DCFlushRangeNoSync | :white_check_mark: |
| DCStoreRangeNoSync | :white_check_mark: |
| DCZeroRange | :white_check_mark: |
| ICInvalidateRange | :white_check_mark: |
| ICFlashInvalidate | :white_check_mark: |
| ICEnable | :white_check_mark: |
| __LCEnable | :white_check_mark: |
| LCEnable | :white_check_mark: |
| LCDisable | :white_check_mark: |
| LCStoreBlocks | :white_check_mark: |
| LCStoreData | :white_check_mark: |
| LCQueueWait | :white_check_mark: |
| DMAErrorHandler | :white_check_mark: |
| __OSCacheInit | :white_check_mark: |


# OSContext.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| __OSLoadFPUContext | :white_check_mark: |
| __OSSaveFPUContext | :white_check_mark: |
| OSSaveFPUContext | :white_check_mark: |
| OSSetCurrentContext | :white_check_mark: |
| OSGetCurrentContext | :white_check_mark: |
| OSSaveContext | :white_check_mark: |
| OSLoadContext | :white_check_mark: |
| OSGetStackPointer | :white_check_mark: |
| OSSwitchFiber | :white_check_mark: |
| OSSwitchFiberEx | :white_check_mark: |
| OSClearContext | :white_check_mark: |
| OSInitContext | :white_check_mark: |
| OSDumpContext | :white_check_mark: |
| OSSwitchFPUContext | :white_check_mark: |
| __OSContextInit | :white_check_mark: |
| OSFillFPUContext | :white_check_mark: |


# OSError.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| OSReport | :white_check_mark: |
| OSVReport | :white_check_mark: |
| OSPanic | :white_check_mark: |
| OSSetErrorHandler | :white_check_mark: |
| __OSUnhandledException | :x: |


# OSExec.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| PackArgs | :white_check_mark: |
| Utf16ToArg | :white_check_mark: |
| PackInstallerArgs | :white_check_mark: |
| Run | :x: |
| Callback | :x: |
| __OSGetExecParams | :white_check_mark: |
| callback | :x: |
| __OSLaunchNextFirmware | :x: |
| __OSLaunchMenu | :white_check_mark: |
| __OSBootDolSimple | :x: |
| __OSBootDol | :x: |


# OSFatal.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| ScreenReport | :white_check_mark: |
| ConfigureVideo | :white_check_mark: |
| OSFatal | :white_check_mark: |
| Halt | :white_check_mark: |


# OSFont.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| GetFontCode | :white_check_mark: |
| Decode | :white_check_mark: |
| OSSetFontEncode | :white_check_mark: |
| ReadFont | :white_check_mark: |
| OSLoadFont | :white_check_mark: |
| ParseStringS | :white_check_mark: |
| ParseStringW | :white_check_mark: |
| OSGetFontTexel | :white_check_mark: |


# OSInterrupt.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| OSDisableInterrupts | :white_check_mark: |
| OSEnableInterrupts | :white_check_mark: |
| OSRestoreInterrupts | :white_check_mark: |
| __OSSetInterruptHandler | :white_check_mark: |
| __OSGetInterruptHandler | :white_check_mark: |
| __OSInterruptInit | :white_check_mark: |
| SetInterruptMask | :white_check_mark: |
| __OSMaskInterrupts | :white_check_mark: |
| __OSUnmaskInterrupts | :white_check_mark: |
| __OSDispatchInterrupt | :white_check_mark: |
| ExternalInterruptHandler | :white_check_mark: |


# OSLink.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| __OSModuleInit | :white_check_mark: |


# OSMessage.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| OSInitMessageQueue | :white_check_mark: |
| OSSendMessage | :white_check_mark: |
| OSReceiveMessage | :white_check_mark: |
| OSJamMessage | :white_check_mark: |


# OSMemory.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| OSGetPhysicalMem1Size | :white_check_mark: |
| OSGetPhysicalMem2Size | :white_check_mark: |
| OSGetConsoleSimulatedMem1Size | :white_check_mark: |
| OSGetConsoleSimulatedMem2Size | :white_check_mark: |
| OnShutdown | :white_check_mark: |
| MEMIntrruptHandler | :white_check_mark: |
| OSProtectRange | :white_check_mark: |
| ConfigMEM1_24MB | :white_check_mark: |
| ConfigMEM1_48MB | :white_check_mark: |
| ConfigMEM2_52MB | :white_check_mark: |
| ConfigMEM2_56MB | :white_check_mark: |
| ConfigMEM2_64MB | :white_check_mark: |
| ConfigMEM2_112MB | :white_check_mark: |
| ConfigMEM2_128MB | :white_check_mark: |
| ConfigMEM_ES1_0 | :white_check_mark: |
| RealMode | :white_check_mark: |
| BATConfig | :white_check_mark: |
| __OSInitMemoryProtection | :white_check_mark: |


# OSMutex.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| OSInitMutex | :white_check_mark: |
| OSLockMutex | :white_check_mark: |
| OSUnlockMutex | :white_check_mark: |
| __OSUnlockAllMutex | :white_check_mark: |
| OSTryLockMutex | :white_check_mark: |


# OSReboot.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| __OSReboot | :white_check_mark: |
| OSGetSaveRegion | :white_check_mark: |


# OSReset.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| OSRegisterShutdownFunction | :white_check_mark: |
| __OSCallShutdownFunctions | :white_check_mark: |
| __OSShutdownDevices | :white_check_mark: |
| __OSGetDiscState | :white_check_mark: |
| OSRebootSystem | :white_check_mark: |
| OSShutdownSystem | :white_check_mark: |
| OSRestart | :white_check_mark: |
| __OSReturnToMenu | :white_check_mark: |
| OSReturnToMenu | :white_check_mark: |
| OSReturnToSetting | :x: |
| __OSReturnToMenuForError | :x: |
| __OSHotResetForError | :white_check_mark: |
| OSGetResetCode | :white_check_mark: |
| OSResetSystem | :x: |


# OSRtc.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| WriteSramCallback | :white_check_mark: |
| __OSInitSram | :white_check_mark: |
| UnlockSram | :white_check_mark: |
| __OSSyncSram | :white_check_mark: |
| __OSReadROM | :white_check_mark: |
| OSGetWirelessID | :white_check_mark: |
| OSSetWirelessID | :white_check_mark: |
| __OSGetRTCFlags | :white_check_mark: |
| __OSClearRTCFlags | :white_check_mark: |


# OSSync.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| SystemCallVector | :white_check_mark: |
| __OSInitSystemCall | :white_check_mark: |


# OSThread.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| DefaultSwitchThreadCallback | :white_check_mark: |
| __OSThreadInit | :white_check_mark: |
| OSInitThreadQueue | :white_check_mark: |
| OSGetCurrentThread | :white_check_mark: |
| OSIsThreadSuspended | :white_check_mark: |
| OSIsThreadTerminated | :white_check_mark: |
| OSDisableScheduler | :white_check_mark: |
| OSEnableScheduler | :white_check_mark: |
| UnsetRun | :white_check_mark: |
| __OSGetEffectivePriority | :white_check_mark: |
| SetEffectivePriority | :white_check_mark: |
| __OSPromoteThread | :white_check_mark: |
| SelectThread | :white_check_mark: |
| __OSReschedule | :white_check_mark: |
| OSYieldThread | :white_check_mark: |
| OSCreateThread | :white_check_mark: |
| OSExitThread | :white_check_mark: |
| OSCancelThread | :white_check_mark: |
| OSJoinThread | :white_check_mark: |
| OSDetachThread | :white_check_mark: |
| OSResumeThread | :white_check_mark: |
| OSSuspendThread | :white_check_mark: |
| OSSleepThread | :white_check_mark: |
| OSWakeupThread | :white_check_mark: |
| OSSetThreadPriority | :white_check_mark: |
| OSGetThreadPriority | :white_check_mark: |
| SleepAlarmHandler | :white_check_mark: |
| OSSleepTicks | :white_check_mark: |


# OSTime.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| OSGetTime | :white_check_mark: |
| OSGetTick | :white_check_mark: |
| __OSGetSystemTime | :white_check_mark: |
| __OSTimeToSystemTime | :white_check_mark: |
| GetDates | :white_check_mark: |
| OSTicksToCalendarTime | :white_check_mark: |


# OSUtf.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| OSUTF8to32 | :white_check_mark: |
| OSUTF16to32 | :white_check_mark: |
| OSUTF32toANSI | :white_check_mark: |
| OSUTF32toSJIS | :white_check_mark: |


# OSIpc.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| __OSGetIPCBufferHi | :white_check_mark: |
| __OSGetIPCBufferLo | :white_check_mark: |
| __OSInitIPCBuffer | :white_check_mark: |


# OSStateTM.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| OSSetPowerCallback | :x: |
| OSGetResetButtonState | :x: |
| __OSInitSTM | :x: |
| __OSShutdownToSBY | :x: |
| __OSHotReset | :white_check_mark: |
| __OSSetVIForceDimming | :white_check_mark: |
| __OSSetIdleLEDMode | :white_check_mark: |
| __OSUnRegisterStateEvent | :white_check_mark: |
| __OSVIDimReplyHandler | :white_check_mark: |
| __OSDefaultResetCallback | :x: |
| __OSDefaultPowerCallback | :x: |
| __OSStateEventHandler | :x: |


# OSPlayRecord.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| PlayRecordAlarmCallback | :white_check_mark: |
| PlayRecordCallback | :white_check_mark: |
| __OSStartPlayRecord | :white_check_mark: |
| __OSStopPlayRecord | :white_check_mark: |


# OSStateFlags.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| __OSWriteStateFlags | :white_check_mark: |
| __OSReadStateFlags | :white_check_mark: |


# OSNet.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| __OSInitNet | :white_check_mark: |


# OSNandbootInfo.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| __OSCreateNandbootInfo | :x: |
| __OSWriteNandbootInfo | :x: |


# OSPlayTime.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| OSPlayTimeIsLimited | :white_check_mark: |
| __OSPlayTimeRebootCallback | :white_check_mark: |
| __OSPlayTimeFadeLastAIDCallback | :white_check_mark: |
| __OSWriteExpiredFlag | :white_check_mark: |
| __OSPlayTimeRebootThread | :white_check_mark: |
| __OSPlayTimeAlarmExpired | :white_check_mark: |
| __OSGetPlayTime | :white_check_mark: |
| __OSInitPlayTime | :white_check_mark: |


# OSLaunch.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| PackArgs | :x: |
| __OSCheckCompanyCode | :x: |
| __OSCheckTmdSysVersion | :x: |
| __OSGetValidTicketIndex | :x: |
| __OSRelaunchTitle | :x: |
| __OSLaunchTitle | :x: |
| LaunchCommon | :x: |
| __OSReturnToMenul | :x: |


# __ppc_eabi_init.o
| Symbol | Decompiled? |
| ------------- | ------------- |
| __init_user | :white_check_mark: |
| __init_cpp | :white_check_mark: |
| exit | :white_check_mark: |


