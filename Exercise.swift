// Write your code below 💪
struct Exercise {
  var name : String
  var  muscleGroups : [String]
  var reps : Int
  var sets : Int
  var total_Reps: Int
  var weight : Int

  init(name: String, muscleGroups : [String], reps : Int, sets : Int, weight: Int) {

    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.total_Reps = sets * reps
    self.weight = weight

  } 
}

// creating instances

var pushUp = Exercise(name : "Push Up", muscleGroups : ["Chest", "Tricep", "Back"] , reps : 14, sets : 4, weight: 14  )

// add var in strcuture for weight added
var squat = Exercise(name : "Weighted Squat", muscleGroups : ["Hamstring", "glutes", "Quads"] , reps : 15, sets : 3, weight: 28  )

// the regimen Structure

var shoulders = Exercise(name : "Shoulder Raises", muscleGroups : ["Shoulders"] , reps : 15, sets : 3, weight:6 )


struct Regimen {
  var dayOfWeek : String
  var exercises : [Exercise]

  init(dayOfWeek : String
 , exercises : [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
 }
   mutating func printExercisePlan() {
      print("Today is \(self.dayOfWeek) and We plan to Workout: ")
      for exercise in self.exercises {
        print("\(exercise.sets) sets of \(exercise.reps) \(exercise.name)s ")
        print("Now, that's a total of \(exercise.total_Reps) \(exercise.name)'")
      }
    }
  
}
var monRegimen = Regimen(dayOfWeek: "Monday", exercises : [shoulders])

var wedRegimen = Regimen(dayOfWeek: "Wednesday", exercises : [pushUp])

var friRegimen = Regimen(dayOfWeek: "Friday", exercises : [squat])




// to create 
monRegimen.printExercisePlan()

wedRegimen.printExercisePlan()

friRegimen.printExercisePlan()



















