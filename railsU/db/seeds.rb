Instructor.create!(last_name: "Rode", first_name: "Mike", hire_date: Date.new(2012,4,20))

Student.create!(last_name: 'Brown', first_name: 'Tori', enrollment_date: Date.new(2005, 04, 24))
Student.create!(last_name: 'Black', first_name: 'James', enrollment_date: Date.new(2005, 04, 04))

Department.create!(name: 'Code Slinging', budget: 750, start_date: Date.new(2005, 05, 27), instructor_id: Instructor.last.id)

Course.create!(number: 1111, title: 'The Joy Of Code', credits: 3, department_id: Department.last.id)
Course.create!(number: 2222, title: 'Zen Coding', credits: 5, department_id: Department.last.id)

Department.create!(name: 'Math', budget: 50, start_date: Date.new(2005, 05, 27), instructor_id: Instructor.last.id)

Course.create!(number: 3333, title: 'G-Shack', credits: 53, department_id: Department.last.id)
Course.create!(number: 4444, title: 'Geometry', credits: 10, department_id: Department.last.id)

Enrollment.create!(grade: 'A', student_id: Student.last.id, course_id: Course.last.id)
Enrollment.create!(grade: 'A', student_id: Student.last.id, course_id: Course.first.id)
Enrollment.create!(grade: 'B', student_id: Student.first.id, course_id: Course.first.id)