//
//  PartOfDay.swift
//  PatriotMac
//
//  Created by Ron Lisle on 4/16/24.
//

import SwiftUI

enum PartOfDay: String {
    case Unitialized = "?"
    case AwakeEarly = "Awake Early"   // Early morning when waking before dawn
    case Morning = "Morning"          // After sunrise (either awake or asleep)
    case Afternoon = "Afternoon"      //
    case Evening = "Evening"          // After sunset
    case Retiring = "Bedtime"         // Getting ready for bed (turn of outside lights) was Bedtime
    case Asleep = "Sleeping"          // After "Goodnight" was Sleeping
}

enum DeviceName: String {
    case AnyoneHome
    case Bedtime
    case Cabinets
    case Ceiling
    case Cleaning
    case DoorSide
    case FrontAwning
    case FrontPorch
    case Kitchen
    case KitchenCeiling
    case LeftTrim
    case LivingRoomMotion
    case Nighttime
    case OfficeMotion
    case OtherSide
    case Outside
    case RightTrim
    case RonHome
    case ShelleyHome
    case Sink
    case SinkLamp
    case Sleeping
    case Workbench
}

func partOfDay(date: Date = Date()) -> PartOfDay {
    if Globals.sleeping {
        return PartOfDay.Asleep
    }
    if Globals.retiring {
        return PartOfDay.Retiring
    }
    if Globals.nighttime {
        if date.isAM() {
            return PartOfDay.AwakeEarly
        } else {
            return PartOfDay.Evening;
        }
    }
    if date.isAM() {
        return PartOfDay.Morning;
    }
    return PartOfDay.Afternoon;
}

func partOfDayIcon(date: Date) -> Image {
    switch(partOfDay(date: date)) {
    case .Unitialized:
        return Image(systemName: "exclamationmark.questionmark")
    case .AwakeEarly:
        return Image(systemName: "sun.horizon.fill")
    case .Morning:
        return Image(systemName: "sun.max.fill")
    case .Afternoon:
        return Image(systemName: "sun.max.fill")
    case .Evening:
        return Image(systemName: "moon.stars.fill")
    case .Retiring:
        return Image(systemName: "bed.double.fill")
    case .Asleep:
        return Image(systemName: "moon.zzz.fill")
    }
}
