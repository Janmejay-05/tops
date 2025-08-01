marks=80
course=("BCA","BBA","BTech","BCom")
seat=True

print("there are 4 course available they are BCA,BBA,BTech,BCom")
enter_course=input("enter course name in which you want addmision")
if(enter_course in course):
    if(seat):
        print("seats are available in this course")
        enter_marks=int(input("enter your marks to check your eligibility"))
        if(enter_marks>=marks and enter_marks<=100):
            print(f"your are eligible for this course and we are bokking your seat in course {enter_course}")
        else:
            print("your are not  eligible for this course")
    else:
        print("Sorry! , WE are not having enough seats to give you addmision")
else:
    print("this course is not available in this college")