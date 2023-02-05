-- Advance
-- no.1 Match the userID with their ParentID 

SELECT u.userID, ur.urParentID
From User u
Join User_Register ur
On u.userID = ur.urUserID;

-- no.2 Match the CourseID with its Region Name

SELECT c.aRegionID, k.RegionName
From Course c
LEFT OUTER JOIN khanACA k
ON c.aRegionID = k.RegionID
    UNION ALL 
SELECT c.aRegionID, RegionName
From Course c
LEFT OUTER JOIN khanACA k
ON c.aRegionID = k.RegionID;

-- no.3 Match the TeacherID with their classCode
SELECT t.TeacherID, c.ClassCode
FROM Teacher t
INNER JOIN Class c
ON  c.classTeacherID = t.TeacherID;


-- No.4 Match the Average score of all the userIDs
SELECT u.userID,AVG(a.Scores) as "Average_Score"
From User u
INNER JOIN Donate d ON d.dUserID = u.userID
INNER JOIN AcademicData a ON a.adLearnerID = d.dLearnerID
GROUP BY u.userID
ORDER BY AVG(a.Scores) ASC;

		


-- No.5 Match the Average learning time of each RegionID 
SELECT k.RegionID, AVG(ad.timeused) as "Average_LearningTime"
From khanaca k
INNER JOIN Course c ON c.aRegionID = k.regionID
INNER JOIN learner l ON l.learnerID = c.clearnerId
INNER JOIN academicdata ad ON ad.adLearnerID = l.learnerID
GROUP BY k.RegionID
ORDER BY AVG(ad.timeused) ASC;




-- No.6 Match the TeacherID with the RegionID
Select t.TeacherID, k.RegionID
From Teacher T
INNER JOIN Course c ON c.cLearnerID = T.tLearnerID
INNER JOIN khanACA k ON k.RegionID = c.aRegionID
ORDER BY t.TeacherID;

-- No.7 Find the total amount of mastery point of all the LearnerID in a descending order starting from 10,000 points
SELECT  l.LearnerID, a.MasteryPoint as "Total_MasteryPoints"
From AcademicData a
INNER JOIN Learner l ON  l.LearnerID = a.adLearnerID
WHERE a.MasteryPoint > 10000
ORDER BY l.LearnerID DESC;

-- no.8 Find the nationalID of each LearnerID that joined after 2015

SELECT p.proLearnerID,u.nationalID
		FROM Profile p
		INNER JOIN User u
		ON p.proUserID = u.userID
        Where YEAR(DateJoined) > 2015;

-- no.9 Find the nationalID of each LearnerID for more or equal to 1 years
	SELECT p.proLearnerID,u.nationalID
		From Profile p
		INNER JOIN User u 
		ON p.proUserID = u.userID
        Where (YEAR(CURDATE()) - YEAR(DATEJOINED)) >= 1 ; 
	
-- no.10 Find Name List of Learner, order by how long they registered
SELECT u.fullname, DATEDIFF(ADDDATE(CURRENT_DATE(),INTERVAL -543 DAY),u.DateJoined) AS memberYear
FROM user_register ur
INNER JOIN User u ON ur.urUserID = u.UserID
INNER JOIN Learner l ON l.LearnerID = ur.urLearnerId
WHERE ur.urLearnerID=l.learnerID
ORDER BY memberYear;

-- no.11 Find most timeUsed of the learner group by their teacher order by time used ASC.
SELECT ad.TimeUsed, ad.adLearnerID,t.teacherID
FROM Teacher_Parent_HaveAccess tph
INNER JOIN Teacher t ON t.TeacherID = tph.tphTeacherID
INNER JOIN AcademicData ad ON ad.adLearnerID = tph.tphADL_id
ORDER BY ad.TimeUsed ASC;

use khanAcademy3;
-- no.12 Find LearnerID order by the fastest assignments due date incoming
SELECT asi.aActivityID, l.LearnerID, DATEDIFF(asi.Duedate,CURRENT_TIME()) AS timeleft
FROM Learner l
INNER JOIN Learner_Retake re ON re.reLearnerID = l.LearnerID
INNER JOIN Activity ac ON ac.ActivityID = re.reActivityID
INNER JOIN assignments asi ON asi.aActivityID=ac.ActivityID
ORDER BY DATEDIFF(CURRENT_DATE(),asi.Duedate);

-- no.13 Find List of learner fullname with donate amount via recurring method, order by Donate Attempt from highest
SELECT u.fullname, MAX(d.recur) AS DonateAttempt
FROM Learner l 
INNER JOIN Donate d ON d.dLearnerID=l.LearnerID
INNER JOIN user u ON u.userID=d.dUserID
GROUP BY u.fullname
ORDER BY MAX(d.recur) DESC;

-- no.14 Find top 5 Scores of activity, show with their learnerID,along with scores
SELECT re.reLearnerID,a.ActivityID,a.Scores
FROM Activity a
INNER JOIN learner_retake re ON re.reActivityID = a.ActivityID
ORDER BY a.Scores DESC LIMIT 5;

-- no.15 Find TeacherName with classtaught that has “ch” in its name.
SELECT u.fullname AS TeacherName ,tc.Classtaught
FROM User u
INNER JOIN User_Register ur ON ur.urUserID = u.userID
INNER JOIN Teacher t ON t.TeacherID=ur.urTeacherID
INNER JOIN teacher_classtaught tc ON tc.classTaughtTeacherID=t.teacherID
WHERE tc.ClassTaught LIKE "%ch%";

-- no.16 Find list of regionName sort by amount of learner asc
SELECT k.RegionName, COUNT(l.LearnerID) as “Amount_Of_Learner”
 FROM Khanaca k 
INNER JOIN Course c ON c.aRegionID= k.RegionID
INNER JOIN Learner l ON l.learnerID= c.cLearnerID
GROUP BY k.RegionName
ORDER BY COUNT(l.LearnerID) ASC ;

-- 17.Find list of regionName sort by amount of Course asc
SELECT k.RegionName,Count(l.LearnerID) as learnerPoppulation
FROM khanaca k
INNER JOIN Course c ON c.aRegionID=k.RegionID
INNER JOIN Learner l ON l.learnerID=c.cLearnerID
GROUP BY k.RegionName
ORDER BY Count(l.LearnerID);


-- 18. Show classTaught with experience year of that class. ( join )
SELECT tc.ClassTaught, t.ExperiencedYear as “Experience_Year”
FROM Teacher_ClassTaught tc
INNER JOIN Teacher t ON t.TeacherID = tc.classTaughtTeacherID
ORDER BY t.ExperiencedYear;


-- 19. Show Name of UserID that donate Onetime where its not = 0 
SELECT u.Fullname, d.onetime
FROM Donate d
INNER JOIN User u ON u.userID = d.dUserID
WHERE d.onetime != 0
ORDER BY u.fullname;

-- 20.Show Name of UserID that donate Recurring where its not 0
SELECT u.Fullname, d.recur
FROM Donate d
INNER JOIN User u ON u.userID = d.dUserID
WHERE d.recur != 0
ORDER BY u.fullname;


-- BASIC
-- No.1 Find the Average Experience Year of all teachers
SELECT TeacherID, AVG(ExperiencedYear)
From Teacher
GROUP BY TeacherID
ORDER BY AVG(ExperiencedYear) ASC;

-- No.2 Find the least time used for each ActivityID
SELECT ActivityID, MIN(TimeUsed) as “Least_Timeused
FROM Activity
GROUP BY ActivityID
ORDER BY MIN(TimeUsed)  ASC;

-- No.3 Find the TeacherID with their LearnerID
SELECT TeacherID, tLearnerID 
	From Teacher 
	GROUP BY TeacherID;


-- No.4 Find the Time Used for each Lesson that is greater than 5 minutes
SELECT Lesson, TimeUsed
FROM AcademicData
WHERE TimeUsed > 5
Order BY LESSON;

-- No.5 Find the average score of each LearnerID in a descending order
SELECT adLearnerID, AVG(Scores) 
FROM AcademicData
GROUP BY AdLearnerID
ORDER BY AVG(Scores);

-- No.6 Find the ClassCode respective to TeacherID
SELECT classTeacherID as "Class_TeacherID",ClassCode
FROM Class
GROUP BY classTeacherID;

-- No.7 Find the score less than 500 of each activity type 
SELECT ActivityType, Scores
FROM activity
WHERE Scores <500
ORDER BY ActivityType;



-- No. 8 Find the Facebook of each userID

SELECT userID, Facebook 
	From User;

-- No.9 Find the phone number of each userID

SELECT userID, phoneNO  
From User;

-- No.10 Find the fullname of each userID
SELECT userID, fullname
From User;


-- No.11 Find the address of each userID
SELECT userID, address 
From User;

-- No.12 Find the Email of each userID

SELECT userID, Email 
	From User;

-- No.13 Find the Lesson with the least mastery point
SELECT LESSON, MIN(MasteryPoint) as “Min_Mastery”
From AcademicData 
GROUP BY LESSON
ORDER BY MIN(MasteryPoint);


-- No.14 Find the Lesson with the greatest mastery point
SELECT Lesson, MAX(MasteryPoint) as “Max_Mastery”
From AcademicData 
GROUP BY LESSON
ORDER BY MAX(MasteryPoint);

-- No.15 Find List of Teachers, shows with their Experienced year.

SELECT TeacherID, ExperiencedYear
FROM Teacher;

-- No.16 Find top 10 learner activity Scores

SELECT adLearnerID, MAX(Scores) AS “Highest_Scores”
FROM AcademicData
GROUP BY adLearnerID;

-- No.17 Show list of ParentID with their ChildID   
SELECT clParentID,ChildList
FROM Parent_Child_List
ORDER BY clParentID;

-- No.18 Show UserID that donate both Onetime and Recurring
SELECT dUserID as "UserID",onetime as "Onetime_Donation", recur as "Recurring_Donation"
FROM Donate
WHERE onetime != 0 and recur != 0
ORDER BY dUserID;


-- No.19 Show Average Score of Activity Q
Select  ActivityType,AVG(scores) as Average_score
FROM Activity
WHERE ActivityType= 'Q';


-- No.20 Show Average Score of Activity A
Select  ActivityType,AVG(scores) as Average_score
FROM Activity
WHERE ActivityType = 'A';








