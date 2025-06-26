CREATE TABLE events (
    event_id INT,
    event_name VARCHAR(100),
    date DATE,
    location VARCHAR(50),
    organizer_name VARCHAR(50),
    event_type VARCHAR(30),
    participants INT
);

INSERT INTO events VALUES
(1, 'TechFest 2025', '2025-08-15', 'Auditorium', 'Mr. Rao', 'Technical', 120),
(2, 'Science Expo', '2025-09-10', 'Hall A', 'Dr. Mehta', 'Science', 100),
(3, 'Cultural Day', '2025-10-05', 'Main Ground', 'Mr. Sen', 'Cultural', 300),
(4, 'AI Workshop', '2025-11-01', 'Lab 3', 'Dr. Kapoor', 'Workshop', 80),
(5, 'Sports Meet', '2025-12-01', 'Stadium', 'Mr. Verma', 'Sports', 250),
(6, 'Web Dev Bootcamp', '2025-07-20', 'Lab 1', 'Ms. Nair', 'Workshop', 60),
(7, 'Business Summit', '2025-08-22', 'Conf Hall', 'Dr. Roy', 'Management', 150),
(8, 'Hackathon', '2025-09-18', 'Lab 4', 'Mr. Rathi', 'Coding', 100),
(9, 'Photography Contest', '2025-10-12', 'Block F', 'Ms. Joshi', 'Creative', 90),
(10, 'Food Carnival', '2025-11-14', 'Main Lawn', 'Dr. Pillai', 'Fun', 200),
(11, 'Coding Marathon', '2025-09-29', 'Lab 5', 'Mr. Singh', 'Technical', 120),
(12, 'Math Quiz', '2025-08-27', 'Room 101', 'Mr. Khan', 'Quiz', 70),
(13, 'Resume Building', '2025-07-30', 'Lab 2', 'Ms. Patil', 'Career', 130),
(14, 'Drama Night', '2025-12-15', 'Auditorium', 'Ms. Dixit', 'Cultural', 170),
(15, 'Debate Competition', '2025-11-20', 'Hall B', 'Mr. Kulkarni', 'Academic', 110);

--DDl

--Add a new column budget to the events table
alter table events add column budget varchar(50);
select * from events;

--Rename event_name to title.
alter table events rename event_name to title ;
select * from events;

--Drop the column organizer_name.
alter table events drop column organizer_name;
select * from events;

--Change datatype of participants to VARCHAR(10).
alter table events alter column participants type varchar(10);
select * from events;

--Rename table events to campus_events.
alter table events rename to campus_events;
select * from campus_events;



--DML

--Insert a new event: 'Tech Quiz', '2025-09-15', 'Room 202', 'Dr. Joshi', 'Quiz', 80.
 select * from campus_events;

 --Update location of 'Drama Night' to 'Mini Auditorium'.
update campus_events set location = 'mini auditorium' where title = 'drama night'; 
select * from campus_events;

--Delete event where event_type = 'Fun'.
delete from campus_events where event_type='fun';
select * from campus_events;

--Increase participants by 50 for all 'Technical' events.
Update campus_events set participants = cast(participants as integer) + 50 where event_type = 'technical';
select * from campus_events;

--Change event_type of 'Photography Contest' to 'Design'.
update campus_events set event_type= 'Design' where title = 'Photography Contest';
select * from campus_events;