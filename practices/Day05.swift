var playlist: [String] = ["Blinding Lights", "Levitating", "Stay"]


playlist.append("Peaches")
playlist.insert("Montero", at: 0)


print("Total Songs: \(playlist.count)")

print("First: \(playlist.first ?? "No song")")
print("Last: \(playlist.last ?? "No song")")

playlist.remove(at: 3)

for (index,song) in playlist.enumerated() {
    print("[\(index)] \(song)")
    
}

