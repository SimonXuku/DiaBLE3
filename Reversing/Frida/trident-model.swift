import Foundation
import RealmSwift

class AlarmConfigEntity: Object {
    @objc dynamic var _alarmType: Int = 0
    @objc dynamic var _id: Int = 0
    @objc dynamic var _enabled: Bool = false
    @objc dynamic var _threshold: Double = 0
    @objc dynamic var _soundType: Int = 0
    @objc dynamic var _soundSetting: String = ""
    @objc dynamic var _tolerance: Double = 0
    @objc dynamic var _f_high: Double = 0
    @objc dynamic var _overrideDND: Bool = false

    override static func primaryKey() -> String? {
        return "_alarmType"
    }
}

class AppConfigEntity: Object {
    @objc dynamic var _configName: String = ""
    @objc dynamic var _id: Int = 0
    @objc dynamic var _configType: Int = 0
    @objc dynamic var _configValue: String = ""
    @objc dynamic var _source: Int = 0

    override static func primaryKey() -> String? {
        return "_configName"
    }

    // TODO
    
    /// [_configName, id]
    static let keys = [
        ["appAssets", 27],
        ["appVersionAssetDownloadedKey", 28],
        ["newYuDomain", 29],
        ["sandboxUrl", 30],
        ["newYuShareUrl", 31],
        ["newYuUrl", 32],
        ["appDefaultServingSize", 33],
        ["oneStepBaseUrl", 34],
        ["oneStepAudience", 35],
        ["oneStepIssuer", 36],
        ["newYuGateway", 37],
        ["newYuApiKey", 38],
        ["appProductStandardNumber", 39],
        ["startSensorVideoUrl", 40],
        ["oneStepSubject", 41],
        ["appRegistrationNumber", 42],
        ["appMinimumAge", 43],
        ["appVersionStringWhenSetKey", 44],
        ["installationId", 106],
        ["didTreatmentDecisions1Explanation", 142],
        ["didTreatmentDecisions2Explanation", 143],
        ["didSeeCriticalAlertsPermission", 148],
        ["isTextToSpeechOn", 149],
        ["lowGlucoseAlarmTone", 152],
        ["signalLossAlarmTone", 157],
        ["didSeeVitaminCWarningScreen", 160],
        ["latestPrivacyNoticeVersion", 165],
        ["didAcceptTermsOfUse", 169],
        ["acceptedTermsOfUseVersion", 170],
        ["acceptedTermsOfUseLanguage", 171],
        ["didAcceptPrivacyNotice", 172],
        ["didAcceptHIPAAAuth", 173],
        ["acceptedPrivacyNoticeVersion", 174],
        ["acceptedPrivacyNoticeLanguage", 175],
        ["acceptedHIPAAAuthLanguage", 176],
        ["didAcceptPhoneWarnings", 178],
        ["acceptedPhoneWarningsVersion", 179],
        ["acceptedPhoneWarningsLanguage", 180],
        ["userGlucoseUnit", 182],
        ["didSeeUnitsOfMeasure", 183],
        ["userCarbUnit", 184],
        ["userGramsPerServing", 185],
        ["didSeeCarbohydrateUnits", 186],
        ["userMinGlucoseRange", 188],
        ["userMaxGlucoseRange", 189],
        ["didSeeTutorialWelcomeScreen", 204],
        ["didSeeContinousGlucoseReadings", 216],
        ["didSeeResultsScreenExplanation", 228],
        ["didSeeGlucoseBackgroundColorExplanation", 240],
        ["didSeeTrendArrowsExplanation", 241],
        ["didSeeAlarmsTutorial2", 274],
        ["didSeeAlarmsAudioExplanation", 287],
        ["didSeeAlarmsTutorial4", 300],
        ["didSeeAlarmsTutorial5", 301],
        ["firstTimeAlarmsAccess", 304],
        ["didAllowCriticalAlertsPermission", 471],
        ["_NEWYU_STATUS_20_TIMESTAMP_KEY_", 1069],
        ["rwe_status", 1073],
        ["hipaa_status", 1074],
        ["userAccountMode", 1085],
        ["SignalLossDateTime_1", 8441],
        ["SignalLossDateTime_2", 8443],
        ["SignalLossDateTime_3", 8445],
        ["SignalLossDateTime_4", 8447],
        ["SignalLossDateTime_5", 8449],
        ["SignalLossDateTime_6", 8451],
        ["SignalLossScheduleCount", 8452],
        ["highGlucoseAlarmTone", 118506],
        ["SignalLossEndDateTime", 185690],
        ["SignalLossDateTime_", 185691],
        ["SignalLossUserDismissTime", 185692],
        ["_libreviewFirstNameKey_", 185856],
        ["_libreviewLastNameKey_", 185857],
        ["_libreviewDateOfBirthKey_", 185858],
        ["_libreviewEmailKey_", 185859],
        ["_libreviewUserNameKey_", 185860],
        ["_libreviewUserTokenKey_", 185861],
        ["_libreviewAccountIdKey_", 185862],
        ["_libreviewMinorRuleKey_", 185863],
        ["_libreviewDidAcceptCRMAgreement_", 185865],
        ["lastEventReceived", 185933],
        ["deviceAddress", 185934],
        ["_pending_sensor_upload_", 185951],
        ["firstConnect", 185987],
        ["AMSensorWarmupCompleteEvent", 186247],
        ["latestTermsOfUseVersion", 210261],
        ["lastUpdateCheckTimestamp", 210262],
        ["latestPhoneWarningsVersion", 210263],
        ["lastUpdateCheckTimestampPhoneWarnings", 210264],
        ["appEnvironmentKey", 213068],
        ["highGlucoseAlarmValue", 213070],
        ["lowGlucoseAlarmValue", 213072],
        ["isLowGlucoseAlarmOn", 213074],
        ["isHighGlucoseAlarmOn", 213075],
        ["isSignalLossAlarmOn", 213076],
        ["firstTimeTurnOnGlucoseAlarm", 213078],
        ["_libreviewTransitionableSensorSerialNumberKey_", 213079],
        ["kUnavailable_Alarm_Can_Be_Presented", 213104],
        ["LAST_SL_LOG_UPDATE_TIMESTAMP", 213114],
        ["AUSignalLossStatus", 213182],
        ["Libre3WrappedKAuth", 213183],
        ["AUBannerNotificationsEnabled", 213235],
        ["AUBluetoothIsEnabled", 213236],
        ["AUCriticalAlertEnabled", 213237],
        ["AUNotificationsAreEnabled", 213238],
        ["AULockScreenNotificationsEnabled", 213239],
        ["AUNotificationSoundsEnabled", 213240],
        ["AUHighGlucoseIsEnabled", 213241],
        ["AUHighGlucoseOverrideDND", 213242],
        ["AULowGlucoseIsEnabled", 213243],
        ["AULowGlucoseOverrideDND", 213244],
        ["AUSignalLossGlucoseIsEnabled", 213245],
        ["AUSignalLossGlucoseOverrideDND", 213246],
        ["AUFixedLowGlucoseIsEnabled", 213247],
        ["AUFixedLowGlucoseOverrideDND", 213248],
        ["AUOSCompatibilityStatus", 213249],
        ["didSeeTargetGlucoseRange", 213251]
    ]
}

class AppEventEntity: Object {
    @objc dynamic var _id: Int = 0
    @objc dynamic var _eventType: Int = 0
    @objc dynamic var _eventErrorCode: Int = 0
    @objc dynamic var _timestampUTC: Int = 0
    @objc dynamic var _timestampLocal: Int = 0
    @objc dynamic var _timeZone: String = ""
    @objc dynamic var _eventParams: String = ""
    @objc dynamic var _eventData: String = ""
    @objc dynamic var _display: Bool = false

    override static func primaryKey() -> String? {
        return "_id"
    }

    override static func indexedProperties() -> [String] {
        return ["_eventType", "_eventErrorCode", "_timestampUTC", "_timeZone"]
    }
}

class GlucoseReadingEntity: Object {
    @objc dynamic var _compositeKey: Int = 0
    @objc dynamic var _id: Int = 0
    @objc dynamic var _sensor: SensorEntity?
    @objc dynamic var _lifeCount: Int = 0
    @objc dynamic var _timestampUTC: Int = 0
    @objc dynamic var _timestampLocal: Int = 0
    @objc dynamic var _timeZone: String = ""
    @objc dynamic var _currentGlucose: Double = 0
    @objc dynamic var _uncappedGlucose: Double = 0
    @objc dynamic var _historicGlucose: Double = 0
    @objc dynamic var _trend: Int = 0
    @objc dynamic var _rateOfChange: Double = 0
    @objc dynamic var _dqFlag: Int = 0
    @objc dynamic var _historicDqFlag: Int = 0
    @objc dynamic var _actionable: Int = 0
    @objc dynamic var _sensorCondition: Int = 0
    @objc dynamic var _esaDuration: Int = 0
    @objc dynamic var _alarmPresentFlag: Int = 0
    @objc dynamic var _alarmRemoveFlag: Int = 0
    @objc dynamic var _alarmEpisodeFlag: Int = 0
    @objc dynamic var _glycemicAlarmStatus: Int = 0
    @objc dynamic var _projectedGlucose: Double = 0
    @objc dynamic var _resultRange: Int = 0
    let _notes = List<NotesEntity>()
    @objc dynamic var _temperature: Int = 0
    @objc dynamic var _rawData: String = ""
    @objc dynamic var _viewed: Bool = false
    @objc dynamic var _extendedUDOflag: Int = 0
    @objc dynamic var _rssi: Int = 0
    @objc dynamic var _isWarmup: Bool = false
    @objc dynamic var _uncappedHistoric: Double = 0
    @objc dynamic var _userResultRange: Int = 0
    let _stateMap = List<Int>()
    @objc dynamic var _isHistoric: Bool = false

    override static func primaryKey() -> String? {
        return "_compositeKey"
    }

    override static func indexedProperties() -> [String] {
        return ["_id", "_lifeCount", "_timestampUTC", "_timestampLocal"]
    }
}

class NoteElementEntity: Object {
    @objc dynamic var _id: Int = 0
    @objc dynamic var _noteType: Int = 0
    @objc dynamic var _subType: Int = 0
    @objc dynamic var _value: Double = 0
    @objc dynamic var _servingSize: Double = 0

    override static func primaryKey() -> String? {
        return "_id"
    }
}

class NotesEntity: Object {
    @objc dynamic var _id: Int = 0
    @objc dynamic var _timestampUTC: Int = 0
    @objc dynamic var _timestampLocal: Int = 0
    @objc dynamic var _timeZone: String = ""
    @objc dynamic var _comment: String? = nil
    @objc dynamic var _glucoseReading: GlucoseReadingEntity?
    let _noteElements = List<NoteElementEntity>()
    @objc dynamic var _isDeleted: Bool = false

    override static func primaryKey() -> String? {
        return "_id"
    }
}

class ReminderEntity: Object {
    @objc dynamic var _id: Int = 0
    @objc dynamic var _reminderType: Int = 0
    @objc dynamic var _enabled: Bool = false
    @objc dynamic var _reminderCode: Int = 0
    @objc dynamic var _repeatType: Int = 0
    @objc dynamic var _description: String = ""
    @objc dynamic var _interval: Int = 0
    @objc dynamic var _intervalType: Int = 0
    @objc dynamic var _createdTime: Int = 0
    @objc dynamic var _timeZone: String = ""

    override static func primaryKey() -> String? {
        return "_id"
    }
}

class SensorEntity: Object {
    @objc dynamic var _id: Int = 0
    @objc dynamic var _serialNumber: String = ""
    @objc dynamic var _sensorUID: String = ""
    @objc dynamic var _productType: Int = 0
    @objc dynamic var _localization: Int = 0
    @objc dynamic var _generation: Int = 0
    @objc dynamic var _hwVersion: String = ""
    @objc dynamic var _swVersion: String = ""
    @objc dynamic var _fwVersion: String = ""
    @objc dynamic var _activationDateUtc: Int = 0
    @objc dynamic var _blePIN: String = ""
    @objc dynamic var _warmupDuration: Int = 0
    @objc dynamic var _wearDuration: Int = 0
    @objc dynamic var _currentLifeCount: Int = 0
    @objc dynamic var _lastHistoricReading: Int = 0
    @objc dynamic var _status: Int = 0
    @objc dynamic var _receiverID: Int = 0
    @objc dynamic var _factoryData: String = ""
    @objc dynamic var _securityVersion: Int = 0
    @objc dynamic var _lastEvent: Int = 0

    override static func primaryKey() -> String? {
        return "_id"
    }
}

class SensorEventEntity: Object {
    @objc dynamic var _id: Int = 0
    @objc dynamic var _sensor: SensorEntity?
    @objc dynamic var _lifeCount: Int = 0
    @objc dynamic var _timestampUTC: Int = 0
    @objc dynamic var _eventCode: Int = 0
    @objc dynamic var _eventValue: Double = 0

    override static func primaryKey() -> String? {
        return "_id"
    }
}

class SequenceEntity: Object {
    @objc dynamic var _id: Int = 0
    @objc dynamic var _nextSensorId: Int = 0
    @objc dynamic var _nextGlucoseReadingId: Int = 0
    @objc dynamic var _nextSensorEventId: Int = 0
    @objc dynamic var _nextNoteId: Int = 0
    @objc dynamic var _nextNoteElementId: Int = 0
    @objc dynamic var _nextAppConfigId: Int = 0
    @objc dynamic var _nextAppEventId: Int = 0
    @objc dynamic var _nextAlarmConfigId: Int = 0
    @objc dynamic var _nextReminderId: Int = 0
    @objc dynamic var _nextUploadQueueId: Int = 0
}

class UploadQueueRecordEntity: Object {
    @objc dynamic var _id: Int = 0
    @objc dynamic var _recordNumber: Int = 0
    @objc dynamic var _recordType: String = ""

    override static func primaryKey() -> String? {
        return "_id"
    }
}

