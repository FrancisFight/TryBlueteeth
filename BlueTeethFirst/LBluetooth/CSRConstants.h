//
// Copyright 2016 Qualcomm Technologies International, Ltd.
//

#ifndef BTLibrary_CSRConstants_h
#define BTLibrary_CSRConstants_h

#pragma mark - Bluetooth LE Services

#define ksAlertNotificationService      @"0x1811"
#define ksBatteryService                @"0x180F"
#define ksBloodPressure                 @"0x1810"
#define ksBodyComposition               @"0x181B"
#define ksBondManagement                @"0x181E"
#define ksContinuousGlucoseMonitoring   @"0x181F"
#define ksCurrentTimeService            @"0x1805"
#define ksCyclingPower                  @"0x1818"
#define ksCyclingSpeedandCadence 		@"0x1816"
#define ksDeviceInformation             @"0x180A"
#define ksEnvironmentalSensing          @"0x181A"
#define ksGenericAccess                 @"0x1800"
#define ksGenericAttribute              @"0x1801"
#define ksGlucose                       @"0x1808"
#define ksHealthThermometer             @"0x1809"
#define ksHeartRate                     @"0x180D"
#define ksHumanInterfaceDevice          @"0x1812"
#define ksImmediateAlert                @"0x1802"
#define ksInternetProtocolSupport       @"0x1820"
#define ksLinkLoss                      @"0x1803"
#define ksLocationandNavigation 		@"0x1819"
#define ksNextDSTChangeService          @"0x1807"
#define ksPhoneAlertStatusService		@"0x180E"
#define ksReferenceTimeUpdateService 	@"0x1806"
#define ksRunningSpeedandCadence 		@"0x1814"
#define ksScanParameters                @"0x1813"
#define ksTxPower                       @"0x1804"
#define ksUserData                      @"0x181C"
#define ksWeightScale                   @"0x181D"
#define ksVimotoApp                     @"0xFE5A"

#define kBLEServices @[@{@"AlertNotificationService":@"0x1811"},@{@"BatteryService":@"0x180F"},@{@"BloodPressure":@"0x1810"},@{@"BodyComposition": @"0x181B"},@{@"BondManagement":@"0x181E"},@{@"ContinuousGlucoseMonitoring":@"0x181F"},@{@"CurrentTimeService":@"0x1805"},@{@"CyclingPower":@"0x1818"},@{@"CyclingSpeedandCadence":@"0x1816"},@{@"DeviceInformation":@"0x180A"},@{@"EnvironmentalSensing":@"0x181A"},@{@"GenericAccess":@"0x1800"},@{@"GenericAttribute":@"0x1801"},@{@"Glucose":@"0x1808"},@{@"HealthThermometer":@"0x1809"},@{@"HeartRate":@"0x180D"},@{@"HumanInterfaceDevice":@"0x1812"},@{@"ImmediateAlert":@"0x1802"},@{@"InternetProtocolSupport":@"0x1820"},@{@"LinkLoss":@"0x1803"},@{@"LocationandNavigation":@"0x1819"},@{@"NextDSTChangeService":@"0x1807"},@{@"PhoneAlertStatusService":@"0x180E"},@{@"ReferenceTimeUpdateService":@"0x1806"},@{@"RunningSpeedandCadence":@"0x1814"},@{@"ScanParameters":@"0x1813"},@{@"TxPower":@"0x1804"},@{@"UserData":@"0x181C"},@{@"WeightScale":@"0x181D"}]

#pragma mark - Bluetooth LE Characterisitcs

#define kcAerobicHeartRateLowerLimit                        @"0x2A7E"
#define kcAerobicHeartRateUpperLimit                        @"0x2A84"
#define kcAerobicThreshold                                  @"0x2A7F"
#define kcAge                                               @"0x2A80"
#define kcAlertCategoryID                                   @"0x2A43"
#define kcAlertCategoryIDBitMask                            @"0x2A42"
#define kcAlertLevel                                        @"0x2A06"
#define kcAlertNotificationControlPoint                     @"0x2A44"
#define kcAlertStatus                                       @"0x2A3F"
#define kcAnaerobicHeartRateLowerLimit                      @"0x2A81"
#define kcAnaerobicHeartRateUpperLimit                      @"0x2A82"
#define kcAnaerobicThreshold                                @"0x2A83"
#define kcApparentWindDirection                             @"0x2A73"
#define kcApparentWindSpeed                                 @"0x2A72"
#define kcAppearance                                        @"0x2A01"
#define kcBarometricPressureTrend                           @"0x2AA3"
#define kcBatteryLevel                                      @"0x2A19"
#define kcBloodPressureFeature                              @"0x2A49"
#define kcBloodPressureMeasurement                          @"0x2A35"
#define kcBodyCompositionFeature                            @"0x2A9B"
#define kcBodyCompositionMeasurement                        @"0x2A9C"
#define kcBodySensorLocation                                @"0x2A38"
#define kcBondManagementControlPoint                        @"0x2AA4"
#define kcBondManagementFeature                             @"0x2AA5"
#define kcBootKeyboardInputReport                           @"0x2A22"
#define kcBootKeyboardOutputReport                          @"0x2A32"
#define kcBootMouseInputReport                              @"0x2A33"
#define kcCentralAddressResolution                          @"0x2AA6"
#define kcCGMFeature                                        @"0x2AA8"
#define kcCGMMeasurement                                    @"0x2AA7"
#define kcCGMSessionRunTime                                 @"0x2AAB"
#define kcCGMSessionStartTime                               @"0x2AAA"
#define kcCGMSpecificOpsControlPoint                        @"0x2AAC"
#define kcCGMStatus                                         @"0x2AA9"
#define kcCSCFeature                                        @"0x2A5C"
#define kcCSCMeasurement                                    @"0x2A5B"
#define kcCurrentTime                                       @"0x2A2B"
#define kcCyclingPowerControlPoint                          @"0x2A66"
#define kcCyclingPowerFeature                               @"0x2A65"
#define kcCyclingPowerMeasurement                           @"0x2A63"
#define kcCyclingPowerVector                                @"0x2A64"
#define kcDatabaseChangeIncrement                           @"0x2A99"
#define kcDateofBirth                                       @"0x2A85"
#define kcDateofThresholdAssessment                         @"0x2A86"
#define kcDateTime                                          @"0x2A08"
#define kcDayDateTime                                       @"0x2A0A"
#define kcDayofWeek                                         @"0x2A09"
#define kcDescriptorValueChanged                            @"0x2A7D"
#define kcDeviceName                                        @"0x2A00"
#define kcDewPoint                                          @"0x2A7B"
#define kcDSTOffset                                         @"0x2A0D"
#define kcElevation                                         @"0x2A6C"
#define kcEmailAddress                                      @"0x2A87"
#define kcExactTime256                                      @"0x2A0C"
#define kcFatBurnHeartRateLowerLimit                        @"0x2A88"
#define kcFatBurnHeartRateUpperLimit                        @"0x2A89"
#define kcFirmwareRevisionString                            @"0x2A26"
#define kcFirstName                                         @"0x2A8A"
#define kcFiveZoneHeartRateLimits                           @"0x2A8B"
#define kcGender                                            @"0x2A8C"
#define kcGlucoseFeature                                    @"0x2A51"
#define kcGlucoseMeasurement                                @"0x2A18"
#define kcGlucoseMeasurementContext                         @"0x2A34"
#define kcGustFactor                                        @"0x2A74"
#define kcHardwareRevisionString                            @"0x2A27"
#define kcHeartRateControlPoint                             @"0x2A39"
#define kcHeartRateMax                                      @"0x2A8D"
#define kcHeartRateMeasurement                              @"0x2A37"
#define kcHeatIndex                                         @"0x2A7A"
#define kcHeight                                            @"0x2A8E"
#define kcHIDControlPoint                                   @"0x2A4C"
#define kcHIDInformation                                    @"0x2A4A"
#define kcHipCircumference                                  @"0x2A8F"
#define kcHumidity                                          @"0x2A6F"
#define kcIEEE11073_20601RegulatoryCertificationDataList    @"0x2A2A"
#define kcIntermediateCuffPressure                          @"0x2A36"
#define kcIntermediateTemperature                           @"0x2A1E"
#define kcIrradiance                                        @"0x2A77"
#define kcLanguage                                          @"0x2AA2"
#define kcLastName                                          @"0x2A90"
#define kcLNControlPoint                                    @"0x2A6B"
#define kcLNFeature                                         @"0x2A6A"
#define kcLocalTimeInformation                              @"0x2A0F"
#define kcLocationandSpeed                                  @"0x2A67"
#define kcMagneticDeclination                               @"0x2A2C"
#define kcMagneticFluxDensity_2D                            @"0x2AA0"
#define kcMagneticFluxDensity_3D                            @"0x2AA1"
#define kcManufacturerNameString                            @"0x2A29"
#define kcMaximumRecommendedHeartRate                       @"0x2A91"
#define kcMeasurementInterval                               @"0x2A21"
#define kcModelNumberString                                 @"0x2A24"
#define kcNavigation                                        @"0x2A68"
#define kcNewAlert                                          @"0x2A46"
#define kcPeripheralPreferredConnectionParameters           @"0x2A04"
#define kcPeripheralPrivacyFlag                             @"0x2A02"
#define kcPnPID                                             @"0x2A50"
#define kcPollenConcentration                               @"0x2A75"
#define kcPositionQuality                                   @"0x2A69"
#define kcPressure                                          @"0x2A6D"
#define kcProtocolMode                                      @"0x2A4E"
#define kcRainfall                                          @"0x2A78"
#define kcReconnectionAddress                               @"0x2A03"
#define kcRecordAccessControlPoint                          @"0x2A52"
#define kcReferenceTimeInformation                          @"0x2A14"
#define kcReport                                            @"0x2A4D"
#define kcReportMap                                         @"0x2A4B"
#define kcRestingHeartRate                                  @"0x2A92"
#define kcRingerControlPoint                                @"0x2A40"
#define kcRingerSetting                                     @"0x2A41"
#define kcRSCFeature                                        @"0x2A54"
#define kcRSCMeasurement                                    @"0x2A53"
#define kcSCControlPoint                                    @"0x2A55"
#define kcScanIntervalWindow                                @"0x2A4F"
#define kcScanRefresh                                       @"0x2A31"
#define kcSensorLocation                                    @"0x2A5D"
#define kcSerialNumberString                                @"0x2A25"
#define kcServiceChanged                                    @"0x2A05"
#define kcSoftwareRevisionString                            @"0x2A28"
#define kcSportTypeforAerobicandAnaerobicThresholds         @"0x2A93"
#define kcSupportedNewAlertCategory                         @"0x2A47"
#define kcSupportedUnreadAlertCategory                      @"0x2A48"
#define kcSystemID                                          @"0x2A23"
#define kcTemperature                                       @"0x2A6E"
#define kcTemperatureMeasurement                            @"0x2A1C"
#define kcTemperatureType                                   @"0x2A1D"
#define kcThreeZoneHeartRateLimits                          @"0x2A94"
#define kcTimeAccuracy                                      @"0x2A12"
#define kcTimeSource                                        @"0x2A13"
#define kcTimeUpdateControlPoint                            @"0x2A16"
#define kcTimeUpdateState                                   @"0x2A17"
#define kcTimewithDST                                       @"0x2A11"
#define kcTimeZone                                          @"0x2A0E"
#define kcTrueWindDirection                                 @"0x2A71"
#define kcTrueWindSpeed                                     @"0x2A70"
#define kcTwoZoneHeartRateLimit                             @"0x2A95"
#define kcTxPowerLevel                                      @"0x2A07"
#define kcUnreadAlertStatus                                 @"0x2A45"
#define kcUserControlPoint                                  @"0x2A9F"
#define kcUserIndex                                         @"0x2A9A"
#define kcUVIndex                                           @"0x2A76"
#define kcVO2Max                                            @"0x2A96"
#define kcWaistCircumference                                @"0x2A97"
#define kcWeight                                            @"0x2A98"
#define kcWeightMeasurement                                 @"0x2A9D"
#define kcWeightScaleFeature                                @"0x2A9E"
#define kcWindChill                                         @"0x2A79"
#define kcVimotoApp                                         @"0xFE5B"

#define kBLECharacteristics @[@{@"AerobicHeartRateLowerLimit":@"0x2A7E"},@{@"AerobicHeartRateUpperLimit":@"0x2A84"},@{@"AerobicThreshold":@"0x2A7F"},@{@"Age":@"0x2A80"},@{@"AlertCategoryID":@"0x2A43"},@{@"AlertCategoryIDBitMask":@"0x2A42"},@{@"AlertLevel":@"0x2A06"},@{@"AlertNotificationControlPoint:":@"0x2A44"},@{@"AlertStatus":@"0x2A3F"},@{@"AnaerobicHeartRateLowerLimit":@"0x2A81"},@{@"AnaerobicHeartRateUpperLimit":@"0x2A82"},@{@"AnaerobicThreshold":@"0x2A83"},@{@"ApparentWindDirection":@"0x2A73"},@{@"ApparentWindSpeed":@"0x2A72"},@{@"Appearance":@"0x2A01"},@{@"BarometricPressureTrend":@"0x2AA3"},@{@"BatteryLevel":@"0x2A19"},@{@"BloodPressureFeature":@"0x2A49"},@{@"BloodPressureMeasurement":@"0x2A35"},@{@"BodyCompositionFeature":@"0x2A9B"},@{@"BodyCompositionMeasurement":@"0x2A9C"},@{@"BodySensorLocation":@"0x2A38"},@{@"BondManagementControlPoint":@"0x2AA4"},@{@"BondManagementFeature":@"0x2AA5"},@{@"BootKeyboardInputReport":@"0x2A22"},@{@"BootKeyboardOutputReport":@"0x2A32"},@{@"BootMouseInputReport":@"0x2A33"},@{@"CentralAddressResolution":@"0x2AA6"},@{@"CGMFeature":@"0x2AA8"},@{@"CGMMeasurement":@"0x2AA7"},@{@"CGMSessionRunTime":@"0x2AAB"},@{@"CGMSessionStartTime":@"0x2AAA"},@{@"CGMSpecificOpsControlPoint":@"0x2AAC"},@{@"CGMStatus":@"0x2AA9"},@{@"CSCFeature":@"0x2A5C"},@{@"CSCMeasurement":@"0x2A5B"},@{@"CurrentTime":@"0x2A2B"},@{@"CyclingPowerControlPoint":@"0x2A66"},@{@"CyclingPowerFeature":@"0x2A65"},@{@"CyclingPowerMeasurement":@"0x2A63"},@{@"CyclingPowerVector":@"0x2A64"},@{@"DatabaseChangeIncrement":@"0x2A99"},@{@"DateofBirth":@"0x2A85"},@{@"DateofThresholdAssessment":@"0x2A86"},@{@"DateTime":@"0x2A08"},@{@"DayDateTime":@"0x2A0A"},@{@"DayofWeek":@"0x2A09"},@{@"DescriptorValueChanged":@"0x2A7D"},@{@"DeviceName":@"0x2A00"},@{@"DewPoint":@"0x2A7B"},@{@"DSTOffset":@"0x2A0D"},@{@"Elevation":@"0x2A6C"},@{@"EmailAddress":@"0x2A87"},@{@"ExactTime256":@"0x2A0C"},@{@"FatBurnHeartRateLowerLimit":@"0x2A88"},@{@"FatBurnHeartRateUpperLimit":@"0x2A89"},@{@"FirmwareRevisionString":@"0x2A26"},@{@"FirstName":@"0x2A8A"},@{@"FiveZoneHeartRateLimits":@"0x2A8B"},@{@"Gender":@"0x2A8C"},@{@"GlucoseFeature":@"0x2A51"},@{@"GlucoseMeasurement":@"0x2A18"},@{@"GlucoseMeasurementContext":@"0x2A34"},@{@"GustFactor":@"0x2A74"},@{@"HardwareRevisionString":@"0x2A27"},@{@"HeartRateControlPoint":@"0x2A39"},@{@"HeartRateMax":@"0x2A8D"},@{@"HeartRateMeasurement":@"0x2A37"},@{@"HeatIndex":@"0x2A7A"},@{@"Height":@"0x2A8E"},@{@"HIDControlPoint":@"0x2A4C"},@{@"HIDInformation":@"0x2A4A"},@{@"HipCircumference":@"0x2A8F"},@{@"Humidity":@"0x2A6F"},@{@"IEEE11073_20601RegulatoryCertificationDataList":@"0x2A2A"},@{@"IntermediateCuffPressure":@"0x2A36"},@{@"IntermediateTemperature":@"0x2A1E"},@{@"Irradiance":@"0x2A77"},@{@"Language":@"0x2AA2"},@{@"LastName":@"0x2A90"},@{@"LNControlPoint":@"0x2A6B"},@{@"LNFeature":@"0x2A6A"},@{@"LocalTimeInformation":@"0x2A0F"},@{@"LocationandSpeed":@"0x2A67"},@{@"MagneticDeclination":@"0x2A2C"},@{@"MagneticFluxDensity_2D":@"0x2AA0"},@{@"MagneticFluxDensity_3D":@"0x2AA1"},@{@"ManufacturerNameString":@"0x2A29"},@{@"MaximumRecommendedHeartRate":@"0x2A91"},@{@"MeasurementInterval":@"0x2A21"},@{@"ModelNumberString":@"0x2A24"},@{@"Navigation":@"0x2A68"},@{@"NewAlert":@"0x2A46"},@{@"PeripheralPreferredConnectionParameters":@"0x2A04"},@{@"PeripheralPrivacyFlag":@"0x2A02"},@{@"PnPID":@"0x2A50"},@{@"PollenConcentration":@"0x2A75"},@{@"PositionQuality":@"0x2A69"},@{@"Pressure":@"0x2A6D"},@{@"ProtocolMode":@"0x2A4E"},@{@"Rainfall":@"0x2A78"},@{@"ReconnectionAddress":@"0x2A03"},@{@"RecordAccessControlPoint":@"0x2A52"},@{@"ReferenceTimeInformation":@"0x2A14"},@{@"Report":@"0x2A4D"},@{@"ReportMap":@"0x2A4B"},@{@"RestingHeartRate":@"0x2A92"},@{@"RingerControlPoint":@"0x2A40"},@{@"RingerSetting":@"0x2A41"},@{@"RSCFeature":@"0x2A54"},@{@"RSCMeasurement":@"0x2A53"},@{@"SCControlPoint":@"0x2A55"},@{@"ScanIntervalWindow":@"0x2A4F"},@{@"ScanRefresh":@"0x2A31"},@{@"SensorLocation":@"0x2A5D"},@{@"SerialNumberString":@"0x2A25"},@{@"ServiceChanged":@"0x2A05"},@{@"SoftwareRevisionString":@"0x2A28"},@{@"SportTypeforAerobicandAnaerobicThresholds":@"0x2A93"},@{@"SupportedNewAlertCategory":@"0x2A47"},@{@"SupportedUnreadAlertCategory":@"0x2A48"},@{@"SystemID":@"0x2A23"},@{@"Temperature":@"0x2A6E"},@{@"TemperatureMeasurement":@"0x2A1C"},@{@"TemperatureType":@"0x2A1D"},@{@"ThreeZoneHeartRateLimits":@"0x2A94"},@{@"TimeAccuracy":@"0x2A12"},@{@"TimeSource":@"0x2A13"},@{@"TimeUpdateControlPoint":@"0x2A16"},@{@"TimeUpdateState":@"0x2A17"},@{@"TimewithDST":@"0x2A11"},@{@"TimeZone":@"0x2A0E"},@{@"TrueWindDirection":@"0x2A71"},@{@"TrueWindSpeed":@"0x2A70"},@{@"TwoZoneHeartRateLimit":@"0x2A95"},@{@"TxPowerLevel":@"0x2A07"},@{@"UnreadAlertStatus":@"0x2A45"},@{@"UserControlPoint":@"0x2A9F"},@{@"UserIndex":@"0x2A9A"},@{@"UVIndex":@"0x2A76"},@{@"VO2Max":@"0x2A96"},@{@"WaistCircumference":@"0x2A97"},@{@"Weight":@"0x2A98"},@{@"WeightMeasurement":@"0x2A9D"},@{@"WeightScaleFeature":@"0x2A9E"},@{@"WindChill":@"0x2A79"}]

#endif