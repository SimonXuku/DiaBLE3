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

