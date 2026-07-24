enum CarBrand {
    case Toyota
    case Ford
    case Honda
    case Porsche 
}

enum CarType {
    case SUV
    case Sedan
    case Van
}


extension CarBrand {
    var typicalType: CarType {
        switch self {
            case .Toyota : return .Sedan
            case .Ford : return .SUV
            case .Honda : return .Sedan
            case .Porsche : return .Sedan
        }

    }
    
}
struct OwnerInfo {
    let name: String
    var datepurchase: String
    var brand: CarBrand 
    var type: CarType

    var description: String {
        return "\(name), \(datepurchase),\(brand),\(type)"
    }

}

var owners: [OwnerInfo] = [
    OwnerInfo(name: "Ralph" , datepurchase:"June 20, 2026", brand: .Honda, type: .Sedan),
    OwnerInfo(name: "Ralph" , datepurchase:"December 20, 2025", brand: .Porsche, type: .Sedan),
    OwnerInfo(name: "Ralph" , datepurchase:"January 20, 2024", brand: .Ford, type: .SUV)
]
print(owners[0].description) 


let car = CarBrand.Ford
print(car.typicalType)
















