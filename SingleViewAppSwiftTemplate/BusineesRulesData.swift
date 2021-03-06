//
//  BusineesRulesData.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Stipe Vucemilovic on 6/12/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation
import UIKit
                                                                ///ERROR TYPES

enum PassError: Error {
    case filledInformationRequired
    case filledBirthInformationRequired
}
                                                                ///COLOR SELECTION BY ENUM AND ASSOCIATED VALUE
enum ColorSelection {
    
    case white(white: CGFloat, alpha: CGFloat)
    case gray(white: CGFloat, alpha: CGFloat)
    
    func getColor() -> UIColor {
        switch self {
        case .white(let white, let alpha): return UIColor(white: white, alpha: alpha)
        case .gray(let white, let alpha): return UIColor(white: white, alpha: alpha)
         }
    }
}
                                                                ///PROTOCOL INITIALIZERS

protocol SetAreaAccessible {
    init(amusementArea: Bool, kitchenArea: Bool, rideControlArea: Bool, maintenanceArea: Bool, officeArea: Bool)
}

protocol SetRideAccessible {
    init(accessAllRides: Bool, skipAllRideLines: Bool)
}

protocol SetDiscountAccessible {
    init(discountOnFood: Int, discountOnMerchandise: Int)
}

                                                                ///ENTRANT ACCESS DATA
class AreaAcces: SetAreaAccessible {
    
    let amusementArea: Bool
    let kitchenArea: Bool
    let rideControlArea: Bool
    let maintenanceArea: Bool
    let officeArea: Bool
    
    required init(amusementArea: Bool, kitchenArea: Bool, rideControlArea: Bool, maintenanceArea: Bool, officeArea: Bool) {
        self.amusementArea = amusementArea
        self.kitchenArea = kitchenArea
        self.rideControlArea = rideControlArea
        self.maintenanceArea = maintenanceArea
        self.officeArea = officeArea
    }
    
}

class RideAccess: SetRideAccessible {
    
    let accessAllRides: Bool
    let skipAllRideLines: Bool
    
    required init(accessAllRides: Bool, skipAllRideLines: Bool) {
        self.accessAllRides = accessAllRides
        self.skipAllRideLines = skipAllRideLines
    }
}

class DiscountAccess: SetDiscountAccessible {
    let discountOnFood: Int
    let discountOnMerchandise: Int
    
    required init(discountOnFood: Int, discountOnMerchandise: Int) {
        self.discountOnFood = discountOnFood
        self.discountOnMerchandise = discountOnMerchandise 
    }
}
                                                              ///ENTRANT TYPES
enum EntrantType {
    
    case classicGuest
    case vipGuest
    case freeChildGuest
    case hourlyEmployeeFoodService
    case hourlyEmployeeRideService
    case hourlyEmployeeMaintenance
    case manager
    
}
                                                             ///ENTRANT TYPES-EXTENSIONS
extension EntrantType {
    
    var entrantAreaAccess: AreaAcces {
        
        switch self {
        case .classicGuest: return AreaAcces(amusementArea: true, kitchenArea: false, rideControlArea: false, maintenanceArea: false, officeArea: false)
        case .vipGuest: return AreaAcces(amusementArea: true, kitchenArea: false, rideControlArea: false, maintenanceArea: false, officeArea: false)
        case .freeChildGuest: return AreaAcces(amusementArea: true, kitchenArea: false, rideControlArea: false, maintenanceArea: false, officeArea: false)
        case .hourlyEmployeeFoodService: return AreaAcces(amusementArea: true, kitchenArea: true, rideControlArea: false, maintenanceArea: false, officeArea: false)
        case .hourlyEmployeeRideService: return AreaAcces(amusementArea: true, kitchenArea: false, rideControlArea: true, maintenanceArea: false, officeArea: false)
        case .hourlyEmployeeMaintenance: return AreaAcces(amusementArea: true, kitchenArea: true,rideControlArea: true, maintenanceArea: true, officeArea: false)
        case .manager: return AreaAcces(amusementArea: true, kitchenArea: true, rideControlArea: true, maintenanceArea: true, officeArea: true)
        }
    }
    
    var entrantRideAccess: RideAccess {
        
        switch self {
        case .classicGuest: return RideAccess(accessAllRides: true, skipAllRideLines: false)
        case .vipGuest: return RideAccess(accessAllRides: true, skipAllRideLines: true)
        case .freeChildGuest: return RideAccess(accessAllRides: true, skipAllRideLines: false)
        case .hourlyEmployeeFoodService: return RideAccess(accessAllRides: true, skipAllRideLines: false)
        case .hourlyEmployeeRideService: return RideAccess(accessAllRides: true, skipAllRideLines: false)
        case .hourlyEmployeeMaintenance: return RideAccess(accessAllRides: true, skipAllRideLines: false)
        case .manager: return RideAccess(accessAllRides: true, skipAllRideLines: false)
        }
    }
    
    var entrantDiscountAccess: DiscountAccess {
        
        switch self {
        case .classicGuest: return DiscountAccess(discountOnFood: 0, discountOnMerchandise: 0)
        case .vipGuest: return DiscountAccess(discountOnFood: 10, discountOnMerchandise: 20)
        case .freeChildGuest: return DiscountAccess(discountOnFood: 0, discountOnMerchandise: 0)
        case .hourlyEmployeeFoodService: return DiscountAccess(discountOnFood: 15, discountOnMerchandise: 25)
        case .hourlyEmployeeRideService: return DiscountAccess(discountOnFood: 15, discountOnMerchandise: 25)
        case .hourlyEmployeeMaintenance: return DiscountAccess(discountOnFood: 15, discountOnMerchandise: 25)
        case .manager: return DiscountAccess(discountOnFood: 25, discountOnMerchandise: 25)
        }
    }
}





    










































