//
//  PartOfDay.swift
//  PatriotMac
//
//  Created by Ron Lisle on 4/16/24.
//

import Foundation

var sleeping: Bool = false
var retiring: Bool = false
var nighttime: Bool = false

enum PartOfDay: Int {
    case Unitialized = 0,
    AwakeEarly,     // Early morning when waking before dawn
    Morning,        // After sunrise (either awake or asleep)
    Afternoon,      //
    Evening,        // After sunset
    Retiring,       // Getting ready for bed (turn of outside lights) was Bedtime
    Asleep          // After "Goodnight" was Sleeping
}

enum DeviceName: String {
    case AnyoneHome,
    Bedtime,
    Cabinets,
    Ceiling,
    Cleaning,
    DoorSide,
    FrontAwning,
    FrontPorch,
    Kitchen,
    KitchenCeiling,
    LeftTrim,
    LivingRoomMotion,
    Nighttime,
    OfficeMotion,
    OtherSide,
    Outside,
    RightTrim,
    RonHome,
    ShelleyHome,
    Sink,
    SinkLamp,
    Sleeping,
    Workbench
}

func partOfDay() -> PartOfDay {
    if sleeping {
        return PartOfDay.Asleep
    }
    if retiring {
        return PartOfDay.Retiring
    }
    if nighttime {
        if Date().isAM() {
            return PartOfDay.AwakeEarly
        } else {
            return PartOfDay.Evening;
        }
    }
    if Date().isAM() {
        return PartOfDay.Morning;
    }
    return PartOfDay.Afternoon;
}
