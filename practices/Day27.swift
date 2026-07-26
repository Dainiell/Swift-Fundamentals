enum Priority {
    case low,medium,high
}

extension Priority {
    var weight: Int {
        switch self {
            case .low: return 1 
            case .medium: return 2 
            case .high: return 3
        }
    }
}


struct Task {
    var title: String 
    var priority: Priority 
    var notes: String? 
    var isDone: Bool 

    var statusLabel: String {
        if isDone == true {
            return "Done"
        }else {
            return "Pending"
        }
    }
    mutating func done() {
        isDone = true
    }
}

var tasks: [Task] = [
    Task(title:"Capstone", priority: .high, notes: nil, isDone: true),
    Task(title: "API", priority: .high, notes: "Set Up", isDone: true),
    Task(title: "Database", priority: .high, notes: "Integrate", isDone: false),
    Task(title: "Data Security", priority: .high, notes: nil, isDone: false)
]

func showNotes(for task: Task) {
    guard let note = task.notes else {
        print("No Notes")
        return 
    }
    print(note)
}

func reviewSession(sessions: [Task], onReview: (Priority, Bool) -> Void) {
    for session in sessions {
        onReview(session.priority, session.isDone)
    }
}
reviewSession(sessions: tasks) { Priority, isDone in
    print("\(Priority): \(isDone ? "Done" : "Pending")")

}

let doneCount = tasks.reduce(0) { count, task in
    count + (task.isDone ? 1:0)
}
print(doneCount)


tasks[0].done()
print(tasks[0].statusLabel)



