-- To display timetable of a lecturer for a particular day
SELECT sem as SEM, section as SECTION, room_no as ROOM_NO, pno as PERIOD, start_time as START_TIME, end_time as END_TIME FROM assign_to WHERE initials = 'COP' AND assign_to.day = 'Monday';
-- To display lecturer's timetable for the whole week
SELECT sem as SEM, section as SECTION, room_no as ROOM_NO, pno as PERIOD,day as DAY, start_time as START_TIME, end_time as END_TIME FROM assign_to WHERE initials = 'COP';
-- To find where the lecturer is present currently
SELECT room_no, sem, section FROM assign_to WHERE initials='Dr.NKS' AND start_time='08:15:00' AND end_time='09:15:00' AND day='Monday';