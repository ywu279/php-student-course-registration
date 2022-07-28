USE Lab6;

DELETE FROM CourseOffer;
DELETE FROM Course;
DELETE FROM Semester;

INSERT INTO Course VALUES ('CST8110', 'Introduction to Computer Programming', 4);
INSERT INTO Course VALUES ('CST8209', 'Web Programming I', 4);
INSERT INTO Course VALUES ('CST8260', 'Database System and Concepts', 3);
INSERT INTO Course VALUES ('ENL1818T', 'Communications I', 3 );
INSERT INTO Course VALUES ('MAT8001', 'Math Fundamentals', 3 );
INSERT INTO Course VALUES ('MGT8100', 'Career and College Success Skills', 3 );
INSERT INTO Course VALUES ('CST8250', 'Database Design and Administration', 4 );
INSERT INTO Course VALUES ('CST8253', 'Web Programming II', 3 );
INSERT INTO Course VALUES ('CST8254', 'Network Operating Systems', 4 );
INSERT INTO Course VALUES ('CST8255', 'Web Imaging and Animations', 3 );
INSERT INTO Course VALUES ('CST8256', 'Web Programming Languages I', 4 );
INSERT INTO Course VALUES ('CST8257', 'Web Applications Development', 4 );
INSERT INTO Course VALUES ('CST8258', 'Web Project Management', 3 );
INSERT INTO Course VALUES ('ENL1819T', 'Reporting Technical Information', 3 );
INSERT INTO Course VALUES ('WKT8100', 'Cooperative Education Work Term Preparation', 5 );
INSERT INTO Course VALUES ('CST8259', 'Web Programming Languages II', 4 );
INSERT INTO Course VALUES ('CST8265', 'Web Security Basics', 4 );
INSERT INTO Course VALUES ('CST8267', 'Ecommerce', 3 );
INSERT INTO Course VALUES ('CON8101', 'Residential Building/Estimating', 5 );
INSERT INTO Course VALUES ('CON8411', 'Construction Materials I', 3 );
INSERT INTO Course VALUES ('CON8430', 'Computers and You', 3 );
INSERT INTO Course VALUES ('MAT8050', 'Geometry and Trigonometry', 3 );
INSERT INTO Course VALUES ('SAF8408', 'Health and Safety', 4 );
INSERT INTO Course VALUES ('SUR8411', 'Construction Surveying I', 5 );
INSERT INTO Course VALUES ('CON8102', 'Commercial Building/Estimating', 5 );
INSERT INTO Course VALUES ('CON8417', 'Construction Materials II', 5 );
INSERT INTO Course VALUES ('ENG8101', 'Statics', 5 );
INSERT INTO Course VALUES ('ENL1818M', 'Communications II', 6 );
INSERT INTO Course VALUES ('MAT8051', 'Algebra', 3 );
INSERT INTO Course VALUES ('SUR8417', 'Construction Surveying II', 3 );
INSERT INTO Course VALUES ('GED0192', 'General Education Elective', 3 );
INSERT INTO Course VALUES ('CAD8400', 'AutoCAD I', 3 );
INSERT INTO Course VALUES ('CON8404', 'Civil Estimating', 3 );
INSERT INTO Course VALUES ('CON8436', 'Building Systems', 5 );
INSERT INTO Course VALUES ('ENG8102', 'Strength of Materials', 3 );
INSERT INTO Course VALUES ('ENG8411', 'Structural Analysis', 3 );
INSERT INTO Course VALUES ('MGT8400', 'Project Administration', 4 );
INSERT INTO Course VALUES ('CAD8405', 'AutoCAD II', 4 );
INSERT INTO Course VALUES ('CON8418', 'Construction Building Code', 3 );
INSERT INTO Course VALUES ('ENG8328', 'Hydraulics', 3 );
INSERT INTO Course VALUES ('ENG8404', 'Introduction to Structural Design', 3 );
INSERT INTO Course VALUES ('ENG8454', 'Geotechnical Materials', 3 );
INSERT INTO Course VALUES ('ENL1819Q', 'Reporting Technical Information II', 5 );
INSERT INTO Course VALUES ('ENV8400', 'Environmental Engineering', 3 );
INSERT INTO Course VALUES ('CON8406', 'Project Scheduling and Cost Control', 3 );
INSERT INTO Course VALUES ('CON8425', ' Design of Steel Structures', 3 );
INSERT INTO Course VALUES ('CON8445', 'Soils Analysis', 3 );
INSERT INTO Course VALUES ('CON8466', 'Highway Engineering', 3 );
INSERT INTO Course VALUES ('ENL4004', 'Orientation to Report Writing', 4);
INSERT INTO Course VALUES ('MAT8201', 'Calculus 1', 3 );
INSERT INTO Course VALUES ('SUR8400', 'Civil Surveying III', 3 );
INSERT INTO Course VALUES ('CON8416', 'GIS for Civil Engineering', 3 );
INSERT INTO Course VALUES ('CON8447', 'Foundations', 3 );
INSERT INTO Course VALUES ('CON8476', 'Business Principles', 3 );
INSERT INTO Course VALUES ('ENG8435', 'Reinforced Concrete Design', 3 );
INSERT INTO Course VALUES ('ENG8451', 'Water and Waste Water Technology', 3 );
INSERT INTO Course VALUES ('ENL8420', 'Project Report', 3 );

INSERT INTO Semester (SemesterCode, Year, Term) VALUE ('22W', 2022, 'Winter');
INSERT INTO Semester (SemesterCode, Year, Term) VALUE ('22S', 2022, 'Summer');
INSERT INTO Semester (SemesterCode, Year, Term) VALUE ('22F', 2022, 'Fall');
INSERT INTO Semester (SemesterCode, Year, Term) VALUE ('23W', 2023, 'Winter');
INSERT INTO Semester (SemesterCode, Year, Term) VALUE ('23S', 2023, 'Summer');
INSERT INTO Semester (SemesterCode, Year, Term) VALUE ('23F', 2023, 'Fall');
INSERT INTO Semester (SemesterCode, Year, Term) VALUE ('24W', 2024, 'Winter');
INSERT INTO Semester (SemesterCode, Year, Term) VALUE ('24S', 2024, 'Summer');
INSERT INTO Semester (SemesterCode, Year, Term) VALUE ('24F', 2024, 'Fall');

INSERT INTO CourseOffer VALUES ('CST8110', '22W');
INSERT INTO CourseOffer VALUES ('CST8209', '22W');
INSERT INTO CourseOffer VALUES ('CST8260', '22W');
INSERT INTO CourseOffer VALUES ('ENL1818T', '22W');
INSERT INTO CourseOffer VALUES ('MAT8001', '22W');
INSERT INTO CourseOffer VALUES ('MGT8100', '22W');
INSERT INTO CourseOffer VALUES ('CST8250', '22W');
INSERT INTO CourseOffer VALUES ('CST8253', '22S');
INSERT INTO CourseOffer VALUES ('CST8254', '22S');
INSERT INTO CourseOffer VALUES ('CST8255', '22S');
INSERT INTO CourseOffer VALUES ('CST8256', '22S');
INSERT INTO CourseOffer VALUES ('CST8257', '22S');
INSERT INTO CourseOffer VALUES ('CST8258', '22F');
INSERT INTO CourseOffer VALUES ('ENL1819T', '22F');
INSERT INTO CourseOffer VALUES ('WKT8100', '22F');
INSERT INTO CourseOffer VALUES ('CST8259', '22F');
INSERT INTO CourseOffer VALUES ('CST8265', '22F');
INSERT INTO CourseOffer VALUES ('CST8267', '22F');
INSERT INTO CourseOffer VALUES ('CON8101', '22F');
INSERT INTO CourseOffer VALUES ('CON8411', '22F');
INSERT INTO CourseOffer VALUES ('CON8430', '22F');
INSERT INTO CourseOffer VALUES ('MAT8050', '23W');
INSERT INTO CourseOffer VALUES ('SAF8408', '23W');
INSERT INTO CourseOffer VALUES ('SUR8411', '23W');
INSERT INTO CourseOffer VALUES ('CON8102', '23W');
INSERT INTO CourseOffer VALUES ('CON8417', '23W');
INSERT INTO CourseOffer VALUES ('ENG8101', '23W');
INSERT INTO CourseOffer VALUES ('ENL1818M', '23W');
INSERT INTO CourseOffer VALUES ('ENL1818T', '23W');
INSERT INTO CourseOffer VALUES ('MAT8001', '23W');
INSERT INTO CourseOffer VALUES ('MGT8100', '23W');
INSERT INTO CourseOffer VALUES ('CST8250', '23W');
INSERT INTO CourseOffer VALUES ('CST8253', '23S');
INSERT INTO CourseOffer VALUES ('CST8254', '23S');
INSERT INTO CourseOffer VALUES ('CST8255', '23S');
INSERT INTO CourseOffer VALUES ('MAT8051', '23S');
INSERT INTO CourseOffer VALUES ('SUR8417', '23S');
INSERT INTO CourseOffer VALUES ('GED0192', '23S');
INSERT INTO CourseOffer VALUES ('CAD8400', '23S');
INSERT INTO CourseOffer VALUES ('CON8404', '23S');
INSERT INTO CourseOffer VALUES ('CON8436', '23S');
INSERT INTO CourseOffer VALUES ('ENG8102', '23S');
INSERT INTO CourseOffer VALUES ('ENG8411', '23F');
INSERT INTO CourseOffer VALUES ('MGT8400', '23F');
INSERT INTO CourseOffer VALUES ('CAD8405', '23F');
INSERT INTO CourseOffer VALUES ('CON8418', '23F');
INSERT INTO CourseOffer VALUES ('ENG8328', '23F');
INSERT INTO CourseOffer VALUES ('ENG8404', '23F');
INSERT INTO CourseOffer VALUES ('ENG8454', '23F');
INSERT INTO CourseOffer VALUES ('ENL1819Q', '24W');
INSERT INTO CourseOffer VALUES ('ENV8400', '24W');
INSERT INTO CourseOffer VALUES ('CON8406', '24W');
INSERT INTO CourseOffer VALUES ('CON8425', '24W');
INSERT INTO CourseOffer VALUES ('CON8445', '24W');
INSERT INTO CourseOffer VALUES ('CON8466', '24W');
INSERT INTO CourseOffer VALUES ('ENG8411', '24W');
INSERT INTO CourseOffer VALUES ('MGT8400', '24W');
INSERT INTO CourseOffer VALUES ('CAD8405', '24W');
INSERT INTO CourseOffer VALUES ('CON8418', '24W');
INSERT INTO CourseOffer VALUES ('ENG8328', '24W');
INSERT INTO CourseOffer VALUES ('ENG8404', '24S');
INSERT INTO CourseOffer VALUES ('ENG8454', '24S');
INSERT INTO CourseOffer VALUES ('ENL4004', '24S');
INSERT INTO CourseOffer VALUES ('MAT8201', '24S');
INSERT INTO CourseOffer VALUES ('SUR8400', '24S');
INSERT INTO CourseOffer VALUES ('CON8416', '24S');
INSERT INTO CourseOffer VALUES ('CON8447', '24F');
INSERT INTO CourseOffer VALUES ('CON8476', '24F');
INSERT INTO CourseOffer VALUES ('ENG8435', '24F');
INSERT INTO CourseOffer VALUES ('ENG8451', '24F');
INSERT INTO CourseOffer VALUES ('ENL8420', '24F');
INSERT INTO CourseOffer VALUES ('CST8110', '24F');
INSERT INTO CourseOffer VALUES ('CST8209', '24F');
INSERT INTO CourseOffer VALUES ('CST8260', '24F');