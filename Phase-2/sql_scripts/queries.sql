SELECT sem as SEM, section as SECTION, room_no as ROOM_NO, pno as PERIOD, start_time as START_TIME, end_time as END_TIME FROM assign_to WHERE initials = 'COP' AND assign_to.day = 'Monday';
SELECT * from timetable where (pno,day) NOT IN (SELECT pno, day FROM assign_to WHERE initials='Dr.MHR');
SELECT sem as SEM, section as SECTION, room_no as ROOM_NO, pno as PERIOD,day as DAY, start_time as START_TIME, end_time as END_TIME FROM assign_to WHERE initials = 'COP';