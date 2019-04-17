-- To display periods when lecturers are free
SELECT * from timetable where (pno,day) NOT IN (SELECT pno, day FROM assign_to WHERE initials='Dr.MHR');
-- To find vacant classes
SELECT room_no FROM sem_class WHERE room_no NOT IN (SELECT room_no FROM assign_to WHERE start_time='14:30:00' AND end_time='15:30:00' AND day='Monday');
-- To calculate workload of each lecturer
SELECT initials,COUNT(*) FROM assign_to GROUP BY initials;
-- To calculate workload for a single lecturer
SELECT COUNT(*) FROM assign_to WHERE initials='SVI';