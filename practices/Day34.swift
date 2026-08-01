enum BookStatus {
    case available
    case borrowed
    case reserved
}

struct Book {
    var title: String
    var author: String
    var pages: Int
    var status: BookStatus
}

var libraryDB: [Book] = [
    Book(title: "Atomic Habits", author: "James Clear", pages: 320, status: .available),
    Book(title: "Deep Work", author: "Cal Newport", pages: 296, status: .borrowed),
    Book(title: "The Pragmatic Programmer", author: "David Thomas", pages: 352, status: .available),
    Book(title: "Clean Code", author: "Robert Martin", pages: 464, status: .reserved),
    Book(title: "Swift Programming", author: "Matt Neuburg", pages: 600, status: .borrowed)
] 

func totalPages() -> Int {
    var total = 0 

    for book in libraryDB {
        total += book.pages
    }
    return total
}
print(totalPages())
////////////////////////// 
 

func availBooks() -> [Book] {
    var availsBooks: [Book] = []
    for availBook in libraryDB {
        if availBook.status == .available {
            availsBooks.append(availBook)
        }
    }  
    return availsBooks  
}
let available = availBooks()
print(available.count)

///////////////////////////////////////
func longestBook() -> Book {
    var longest = libraryDB[0]

    for long in libraryDB {
        if long.pages > longest.pages {
            longest = long
        }
    }
    return longest
}
let longPages = longestBook() 
print(longPages.title)  

