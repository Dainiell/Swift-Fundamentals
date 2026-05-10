var downloads: [String] = ["AppIcon.png", "Resume.pdf", "UIAssets.zip", "Resume.pdf", "SwiftGuide.pdf"]

downloads.append("Portfolio.zip") 
downloads.insert("ProfilePhoto.jpg", at: 0)

print("Total Downloads: \(downloads.count)")


print("First Download: \(downloads.first ?? "No First Download")")
print("Last Download: \(downloads.last ?? "No last Download")")

print("Resume.pdf exists: \(downloads.contains("Resume.pdf"))")


if let find = downloads.firstIndex(of: "Resume.pdf") {
    print("First Resume.pdf at index: \(find)")
    
}else {
    print("Can't find the index")
    
}

for DL in downloads {

    if DL == "Resume.pdf" {
        print("Duplicate Download: \(DL)")
        
    }else {
        print("Download: \(DL)")
        
    }
}


if let remove = downloads.firstIndex(of: "Resume.pdf") {
    downloads.remove(at: remove)
}

print("Resume.pdf still exists: \(downloads.contains("Resume.pdf"))")

print("Updated Count: \(downloads.count)")


for (index,DownLoads) in downloads.enumerated() {
    print("[\(index)] \(DownLoads)")
    
}