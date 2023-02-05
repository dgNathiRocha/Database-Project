CREATE DATABASE khanacademy;

USE khanacademy;
DROP TABLE  IF exists user;
CREATE TABLE User(
	userID BIGINT NOT NULL PRIMARY KEY,
    phoneNO NVARCHAR(50),
    fullname NVARCHAR(50),
    nationalID BIGINT(10),
    address NVARCHAR(50),
    DateJoined Date,
    Facebook NVARCHAR(50),
    AppleID NVARCHAR(50),
    GoogleAcc NVARCHAR(50),
    Email NVARCHAR(50)
);
DROP TABLE  IF exists Learner ;
CREATE TABLE Learner(
	LearnerID BIGINT NOT NULL PRIMARY KEY
);
DROP TABLE  IF exists Teacher ;
CREATE TABLE Teacher(
	TeacherID BIGINT NOT NULL PRIMARY KEY,
    ExperiencedYear NVARCHAR(50),
    tLearnerID BIGINT NOT NULL,
    constraint fklid foreign key (tLearnerID) references Learner(LearnerID)
);
DROP TABLE  IF exists Child ;
CREATE TABLE Child(
	ChildID BIGINT NOT NULL PRIMARY KEY
);
DROP TABLE  IF exists Parent ;
CREATE TABLE Parent(
	ParentID BIGINT NOT NULL PRIMARY KEY
);


DROP TABLE  IF exists khanACA ;
CREATE TABLE khanACA(
	RegionID BIGINT NOT NULL PRIMARY KEY,
    RegionName NVARCHAR(50)
);

DROP TABLE  IF exists Course ;
CREATE TABLE Course(
	cLearnerID BIGINT NOT NULL UNIQUE,
    CourseID BIGINT NOT NULL UNIQUE,
    aRegionID BIGINT NOT NULL,
    Lesson NVARCHAR(50),
    primary key(cLearnerID,CourseID),
    constraint fkclid foreign key (cLearnerID) references Learner(LearnerID),
    constraint fkrid foreign key (aRegionID) references khanACA(RegionID)
);

DROP TABLE  IF exists Activity ;
CREATE TABLE Activity(
	ActivityID BIGINT NOT NULL,
    ActivityType VARCHAR(50) NOT NULL,
    Scores BIGINT,
    TimeUsed TIME,
    aCourseID BIGINT NOT NULL,
    primary key(ActivityID),
    constraint fkactcid foreign key (aCourseID) references Course(CourseID)
);

DROP TABLE  IF exists AcademicData ;
CREATE TABLE AcademicData(
	adLearnerID BIGINT NOT NULL,
    MasteryPoint INT,
    Lesson NVARCHAR(50),
    TimeUsed TIME,
    Scores INT,
    primary key(adLearnerID),
    constraint fkadlid foreign key (adLearnerID) references Learner(LearnerID)
);

DROP TABLE  IF exists Quizes ;
CREATE TABLE Quizes(
	Hint NVARCHAR(50),
    Timelimit TIME,
    qActivityID BIGINT NOT NULL,
    primary key(qActivityID),
    constraint fkqactid foreign key (qActivityID) references Activity(ActivityID)
);

DROP TABLE  IF exists Assignments ;
CREATE TABLE Assignments(
	AssignDate DATETIME,
    DueDate DATETIME,
    aActivityID BIGINT NOT NULL,
    primary key(aActivityID),
    constraint fkaactid foreign key (aActivityID) references Activity(ActivityID)
);

DROP TABLE  IF exists Class ;
CREATE TABLE Class(
	classTeacherID BIGINT NOT NULL PRIMARY KEY,
    ClassCode VARCHAR(50),
    constraint fkclasstid foreign key (classTeacherID) references Teacher(TeacherID)
);

DROP TABLE  IF exists Teacher_ClassTaught;
CREATE TABLE Teacher_ClassTaught(
	classTaughtTeacherID BIGINT NOT NULL,
    ClassTaught NVARCHAR(50) NOT NULL,
    primary key(classTaughtTeacherID,ClassTaught),
    constraint fkclassttid foreign key (classTaughtTeacherID) references Teacher(TeacherID)
);

DROP TABLE  IF exists Parent_Child_List;
CREATE TABLE Parent_Child_List(
	clParentID BIGINT NOT NULL,
    ChildList NVARCHAR(50) NOT NULL,
    primary key(clParentID,ChildList),
    constraint fkclparid foreign key (clParentID) references Parent(ParentID)
);

DROP TABLE  IF exists Donate;
CREATE TABLE Donate(
	dUserID BIGINT NOT NULL,
    dLearnerID  BIGINT NOT NULL,
    paypal int,
    creditcard BIGINT,
    banktransfer BIGINT,
    onetime BIGINT,
    recur BIGINT,
    
    primary key(dUserID,dLearnerID),
    constraint fkduid foreign key (dUserID) references User(UserID),
    constraint fkdlid foreign key (dLearnerID) references Learner(LearnerID)
);

DROP TABLE  IF exists Student;
CREATE TABLE Student(
	stuTeacherID BIGINT NOT NULL,
    stuLearnerID  BIGINT NOT NULL,
    primary key(stuTeacherID,stuLearnerID),
    constraint fkstutid foreign key (stuTeacherID) references Teacher(TeacherID),
    constraint fkstulid foreign key (stuLearnerID) references Learner(LearnerID)
);

DROP TABLE  IF exists Profile;
CREATE TABLE Profile(
	proUserID BIGINT NOT NULL,
    proLearnerID  BIGINT NOT NULL,
    primary key(proUserID,proLearnerID),
    constraint fkpuid foreign key (proUserID) references User(UserID),
    constraint fkplid foreign key (proLearnerID) references Learner(LearnerID)
);

DROP TABLE  IF exists Learner_Retake;
CREATE TABLE Learner_Retake(
	reActivityID BIGINT NOT NULL,
    reLearnerID  BIGINT NOT NULL,
    primary key(reActivityID,reLearnerID),
    constraint fklraid foreign key (reActivityID) references Activity(ActivityID),
    constraint fklrlid foreign key (reLearnerID) references Learner(LearnerID)
);

DROP TABLE  IF exists Learner_Choose_Teacher;
CREATE TABLE Learner_Choose_Teacher(
	chooseTeacherID BIGINT NOT NULL,
    chooseLearnerID  BIGINT NOT NULL,
    primary key(chooseTeacherID,chooseLearnerID),
    constraint fklcttid foreign key (chooseTeacherID) references Teacher(TeacherID),
    constraint fklctlid foreign key (chooseLearnerID) references Learner(LearnerID)
);

DROP TABLE  IF exists Learner_Enroll_Course;
CREATE TABLE Learner_Enroll_Course(
	lecLearnerID BIGINT NOT NULL,
    lecCourseID  BIGINT NOT NULL,
    primary key(lecLearnerID,lecCourseID),
    constraint fkleclid foreign key (lecLearnerID) references Learner(LearnerID),
    constraint fkleccid foreign key (lecCourseID) references Course(CourseID)
);

DROP TABLE  IF exists Parent_Add_Child;
CREATE TABLE Parent_Add_Child(
	pacLearnerID BIGINT NOT NULL,
    pacChildID  BIGINT NOT NULL,
    pacParentID BIGINT NOT NULL,
    primary key(pacLearnerID,pacChildID,pacParentID),
    constraint fkpaclid foreign key (pacLearnerID) references Learner(LearnerID),
    constraint fkpaccid foreign key (pacChildID) references Child(ChildID),
    constraint fkpacpid foreign key (pacParentID) references Parent(ParentID)
);

DROP TABLE  IF exists Student_Join_Class;
CREATE TABLE Student_Join_Class(
	st_tid BIGINT NOT NULL,
    st_lid  BIGINT NOT NULL,
    class_tid BIGINT NOT NULL,
    primary key(st_tid,st_lid,class_tid),
    constraint fksjctid foreign key (st_tid) references Student(stuTeacherID),
    constraint fksjclid foreign key (st_lid) references Student(stuLearnerID),
    constraint fksjcctid foreign key (class_tid) references Class(classTeacherID)
);
DROP TABLE  IF exists Teacher_Parent_HaveAccess;
CREATE TABLE Teacher_Parent_HaveAccess(
	tphTeacherID BIGINT NOT NULL,
    tphParentID  BIGINT NOT NULL,
    tphADL_id BIGINT NOT NULL,
    primary key(tphTeacherID,tphParentID,tphADL_id),
    constraint fktphtid foreign key (tphTeacherID) references Teacher(TeacherID),
    constraint fktphpid foreign key (tphParentID) references Parent(ParentID),
    constraint fktphadlid foreign key (tphADL_id) references academicdata(adLearnerID)
);

DROP TABLE  IF exists User_Register;
CREATE TABLE User_Register(
	urLearnerID BIGINT NOT NULL,
    urUserID  BIGINT NOT NULL,
    urTeacherID BIGINT NOT NULL,
    urParentID BIGINT NOT NULL,
    primary key(urLearnerID,urUserID,urTeacherID,urParentID),
    constraint fkurLid foreign key (urLearnerID) references Learner(LearnerID),
    constraint fkurUid foreign key (urUserID) references User(UserID),
    constraint fkurTid foreign key (urTeacherID) references Teacher(TeacherID),
    constraint fkurPid foreign key (urParentID) references Parent(ParentID)
);
    
DROP TABLE  IF exists Teacher_Add_Learner;
CREATE TABLE Teacher_Add_Learner(
	talTeacherID BIGINT NOT NULL,
    talLearnerID  BIGINT NOT NULL,
    talSTTID BIGINT NOT NULL,
	talSTLID BIGINT NOT NULL,
    primary key(talTeacherID,talLearnerID,talSTTID,talSTLID),
    constraint fktaltid foreign key (talTeacherID) references Teacher(TeacherID),
    constraint fktallid foreign key (talLearnerID) references Learner(LearnerID),
    constraint fktalsttid foreign key (talSTTID) references Student(stuTeacherID),
    constraint fktalstlid foreign key (talSTLID) references Student(stuLearnerID)
);
