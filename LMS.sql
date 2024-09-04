
CREATE TABLE Students (
    S_ID INT PRIMARY KEY,
    S_Name VARCHAR(255),
    S_Class VARCHAR(255)
);

CREATE TABLE Library (
    Library_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255)
);

CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Quantity INT,
    Library_ID INT,
    FOREIGN KEY (Library_ID) REFERENCES Library(Library_ID)
);


CREATE TABLE Book_Transaction (
    Transaction_ID INT PRIMARY KEY,
    S_ID INT,
    Book_ID INT,
    Reserve_date DATE,
    Return_date DATE,
    FOREIGN KEY (S_ID) REFERENCES Students(S_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);

CREATE TABLE Registration (
    Registration_ID INT PRIMARY KEY,
    S_ID INT,
    UserName VARCHAR(255),
    Phone VARCHAR(15),
    Email VARCHAR(255),
    Address VARCHAR(255),
    Password VARCHAR(255),
    FOREIGN KEY (S_ID) REFERENCES Students(S_ID)
);

CREATE TABLE Login (
    Login_ID INT PRIMARY KEY,
    Email VARCHAR(255),
    Password VARCHAR(255),
    OTP VARCHAR(6)
);

CREATE TABLE Admin (
    A_ID INT PRIMARY KEY,
    A_Email VARCHAR(255),
    A_Password VARCHAR(255)
);
INSERT INTO Students  VALUES (1, 'Steven Brock', 'Class B');
INSERT INTO Students  VALUES (2, 'Shawn Johnson', 'Class C');
INSERT INTO Students  VALUES (3, 'Mary Waters', 'Class D');
INSERT INTO Students  VALUES (4, 'Sharon Barry', 'Class D');
INSERT INTO Students  VALUES (5, 'Daisy Thomas', 'Class A');
INSERT INTO Students  VALUES (6, 'Theresa Wilson', 'Class B');
INSERT INTO Students  VALUES (7, 'William Payne', 'Class B');
INSERT INTO Students  VALUES (8, 'Victor Daniel', 'Class D');
INSERT INTO Students  VALUES (9, 'Sandra Hernandez', 'Class D');
INSERT INTO Students  VALUES (10, 'Angelica Woods', 'Class D');
INSERT INTO Students  VALUES (11, 'Jeffrey Phillips DDS', 'Class D');
INSERT INTO Students  VALUES (12, 'Amanda Molina', 'Class D');
INSERT INTO Students  VALUES (13, 'Walter Montes', 'Class D');
INSERT INTO Students  VALUES (14, 'Amanda Salazar', 'Class A');
INSERT INTO Students  VALUES (15, 'Ann Alexander', 'Class D');
INSERT INTO Students  VALUES (16, 'Manuel Buckley', 'Class C');
INSERT INTO Students  VALUES (17, 'Raymond Thornton', 'Class C');
INSERT INTO Students  VALUES (18, 'Christina Buchanan', 'Class C');
INSERT INTO Students  VALUES (19, 'Jody Lucas', 'Class B');
INSERT INTO Students  VALUES (20, 'Dr. Joseph Mitchell', 'Class B');
INSERT INTO Students  VALUES (21, 'Patrick Carr', 'Class D');
INSERT INTO Students  VALUES (22, 'Tracy Duran', 'Class D');
INSERT INTO Students  VALUES (23, 'Madison Williamson', 'Class B');
INSERT INTO Students  VALUES (24, 'Gail Wagner', 'Class D');
INSERT INTO Students  VALUES (25, 'Mrs. Jessica Young', 'Class B');
INSERT INTO Students  VALUES (26, 'Brandon Gutierrez', 'Class C');
INSERT INTO Students  VALUES (27, 'James Williams', 'Class A');
INSERT INTO Students  VALUES (28, 'Heather Webb', 'Class D');
INSERT INTO Students  VALUES (29, 'Darrell Phillips', 'Class B');
INSERT INTO Students  VALUES (30, 'Darrell Michael', 'Class B');
INSERT INTO Students  VALUES (31, 'Sharon Martinez', 'Class D');
INSERT INTO Students  VALUES (32, 'Jennifer Burns', 'Class B');
INSERT INTO Students  VALUES (33, 'Tracey Simmons', 'Class C');
INSERT INTO Students  VALUES (34, 'Catherine Burch', 'Class B');
INSERT INTO Students  VALUES (35, 'Nicole Nichols', 'Class D');
INSERT INTO Students  VALUES (36, 'Eugene Bishop', 'Class C');
INSERT INTO Students  VALUES (37, 'Courtney Lopez', 'Class B');
INSERT INTO Students  VALUES (38, 'Mikayla Richardson', 'Class C');
INSERT INTO Students  VALUES (39, 'Richard Wu', 'Class C');
INSERT INTO Students  VALUES (40, 'Brian Weaver', 'Class D');
INSERT INTO Students  VALUES (41, 'Shane Sullivan', 'Class D');
INSERT INTO Students  VALUES (42, 'Shannon Williams', 'Class D');
INSERT INTO Students  VALUES (43, 'Marc Kirby', 'Class A');
INSERT INTO Students  VALUES (44, 'Jessica Miller', 'Class D');
INSERT INTO Students  VALUES (45, 'Shelby Lewis', 'Class D');
INSERT INTO Students  VALUES (46, 'Pamela Montgomery', 'Class B');
INSERT INTO Students  VALUES (47, 'Jacob Cuevas', 'Class A');
INSERT INTO Students  VALUES (48, 'Lee Gonzalez', 'Class A');
INSERT INTO Students  VALUES (49, 'Mark Williams', 'Class A');
INSERT INTO Students  VALUES (50, 'Laura Cardenas', 'Class B');
INSERT INTO Students  VALUES (51, 'Matthew Mcclain', 'Class B');
INSERT INTO Students  VALUES (52, 'Garrett Grant', 'Class B');
INSERT INTO Students  VALUES (53, 'Katherine Jones', 'Class B');
INSERT INTO Students  VALUES (54, 'Michele Swanson', 'Class A');
INSERT INTO Students  VALUES (55, 'Michael Quinn', 'Class A');
INSERT INTO Students  VALUES (56, 'Andrew Kerr', 'Class A');
INSERT INTO Students  VALUES (57, 'Eric Flores', 'Class D');
INSERT INTO Students  VALUES (58, 'Judith Webb', 'Class D');
INSERT INTO Students  VALUES (59, 'Nicole Wright', 'Class C');
INSERT INTO Students  VALUES (60, 'Scott Hester', 'Class B');
INSERT INTO Students  VALUES (61, 'Sean Pollard', 'Class A');
INSERT INTO Students  VALUES (62, 'William Becker', 'Class D');
INSERT INTO Students  VALUES (63, 'Heather Estrada', 'Class A');
INSERT INTO Students  VALUES (64, 'Joe Ford', 'Class C');
INSERT INTO Students  VALUES (65, 'David Shaw', 'Class B');
INSERT INTO Students  VALUES (66, 'Tyler Rodriguez', 'Class D');
INSERT INTO Students  VALUES (67, 'Todd Mckinney', 'Class C');
INSERT INTO Students  VALUES (68, 'James Roberson', 'Class B');
INSERT INTO Students  VALUES (69, 'Alexander Aguirre', 'Class C');
INSERT INTO Students  VALUES (70, 'Jimmy Davis', 'Class B');
INSERT INTO Students  VALUES (71, 'Shelia Lloyd', 'Class A');
INSERT INTO Students  VALUES (72, 'Wesley Chan', 'Class D');
INSERT INTO Students  VALUES (73, 'Harry Torres', 'Class D');
INSERT INTO Students  VALUES (74, 'Tara Ryan', 'Class D');
INSERT INTO Students  VALUES (75, 'Wayne Smith', 'Class C');
INSERT INTO Students  VALUES (76, 'Denise Friedman', 'Class D');
INSERT INTO Students  VALUES (77, 'Kenneth Chandler', 'Class A');
INSERT INTO Students  VALUES (78, 'Charles Cannon', 'Class A');
INSERT INTO Students  VALUES (79, 'Rhonda Alvarez', 'Class C');
INSERT INTO Students  VALUES (80, 'Benjamin Oconnell', 'Class C');
INSERT INTO Students  VALUES (81, 'Robert White', 'Class A');
INSERT INTO Students  VALUES (82, 'Donald Warner', 'Class A');
INSERT INTO Students  VALUES (83, 'Kathleen Young MD', 'Class C');
INSERT INTO Students  VALUES (84, 'Michelle Mora', 'Class C');
INSERT INTO Students  VALUES (85, 'David Duncan', 'Class D');
INSERT INTO Students  VALUES (86, 'Sandra Sharp', 'Class C');
INSERT INTO Students  VALUES (87, 'Michelle Mack', 'Class B');
INSERT INTO Students  VALUES (88, 'Kelly Woodard', 'Class A');
INSERT INTO Students  VALUES (89, 'Brian Torres', 'Class C');
INSERT INTO Students  VALUES (90, 'Larry Jacobs', 'Class A');
INSERT INTO Students  VALUES (91, 'Gabrielle Fleming', 'Class B');
INSERT INTO Students  VALUES (92, 'Theresa French', 'Class B');
INSERT INTO Students  VALUES (93, 'Tina Kramer', 'Class C');
INSERT INTO Students  VALUES (94, 'Megan Murray', 'Class A');
INSERT INTO Students  VALUES (95, 'Mariah Bryant DVM', 'Class C');
INSERT INTO Students  VALUES (96, 'Leslie Hall', 'Class D');
INSERT INTO Students  VALUES (97, 'Ian Parsons', 'Class A');
INSERT INTO Students  VALUES (98, 'Zachary Williams', 'Class B');
INSERT INTO Students  VALUES (99, 'Karen Goodman', 'Class A');
INSERT INTO Students  VALUES (100, 'Shawn Ross', 'Class C');



INSERT INTO Library (Library_ID, Name, Address) VALUES
(1, 'Central Library', '123 Main St'),
(2, 'Westside Branch', '456 West St'),
(3, 'Eastside Branch', '789 East St'),
(4, 'Northside Branch', '101 North St'),
(5, 'Southside Branch', '202 South St');

INSERT INTO Books (Book_ID, Name, Quantity, Library_ID) VALUES
(1, 'Method together.', 3, 1),
(2, 'Half church.', 7, 5),
(3, 'Situation side.', 10, 1),
(4, 'Behind remain.', 9, 2),
(5, 'Police long.', 5, 1),
(6, 'Believe scene century.', 3, 5),
(7, 'Meeting together wind.', 8, 2),
(8, 'Second parent car.', 10, 2),
(9, 'Agreement mention.', 5, 1),
(10, 'Until strong page.', 6, 1),
(11, 'Wait discussion.', 10, 1),
(12, 'Bag Republican.', 1, 3),
(13, 'Modern movement.', 2, 3),
(14, 'Debate Republican.', 3, 1),
(15, 'Artist our blood.', 6, 4),
(16, 'Who drug.', 6, 2),
(17, 'Though way.', 6, 1),
(18, 'Approach white.', 10, 4),
(19, 'City smile possible forward.', 1, 5),
(20, 'If energy drop.', 2, 2),
(21, 'Various cost easy.', 4, 4),
(22, 'Herself national.', 8, 1),
(23, 'Book mean.', 1, 2),
(24, 'Black cell letter.', 2, 3),
(25, 'Recently yeah.', 5, 2),
(26, 'Others state.', 7, 1),
(27, 'Must good.', 5, 1),
(28, 'Interesting fill.', 9, 2),
(29, 'Buy director interview.', 5, 3),
(30, 'Authority citizen.', 7, 1),
(31, 'Likely between.', 9, 1),
(32, 'Environment out.', 1, 3),
(33, 'Author majority.', 8, 2),
(34, 'Box safe job task.', 1, 2),
(35, 'Truth gas risk.', 3, 3),
(36, 'Environmental human.', 7, 2),
(37, 'Gas computer.', 6, 2),
(38, 'Place book.', 4, 1),
(39, 'New recently.', 8, 4),
(40, 'Herself.', 2, 2),
(41, 'It pretty.', 2, 5),
(42, 'Fly almost executive.', 5, 5),
(43, 'Someone provide.', 4, 1),
(44, 'Capital value stock.', 5, 2),
(45, 'Add.', 4, 1),
(46, 'Discuss three share.', 9, 2),
(47, 'Exactly certain take.', 3, 5),
(48, 'Artist travel.', 7, 5),
(49, 'Air study.', 9, 1),
(50, 'Claim see property.', 6, 2),
(51, 'View second agency.', 10, 1),
(52, 'Finish I many.', 1, 2),
(53, 'Property occur.', 1, 3),
(54, 'Meeting method.', 9, 5),
(55, 'Again couple decision site.', 3, 2),
(56, 'Until really.', 2, 3),
(57, 'Laugh scientist couple.', 9, 1),
(58, 'Structure available.', 2, 3),
(59, 'Gun thought look same.', 2, 5),
(60, 'Or administration.', 8, 1),
(61, 'Support growth put teacher.', 3, 4),
(62, 'Area bill.', 6, 5),
(63, 'Manager mind.', 4, 2),
(64, 'Describe draw wind.', 2, 1),
(65, 'Standard American off expert.', 8, 3),
(66, 'Stage Congress poor.', 8, 5),
(67, 'Purpose artist.', 8, 3),
(68, 'Behind structure sometimes white.', 4, 3),
(69, 'Population choice garden.', 7, 2),
(70, 'Too movie.', 2, 3),
(71, 'Relate happen.', 10, 4),
(72, 'With lot wall.', 5, 2),
(73, 'Late treatment future available.', 3, 1),
(74, 'Process market.', 4, 5),
(75, 'Pretty investment.', 6, 5),
(76, 'Relationship mouth once.', 9, 4),
(77, 'Air teach method.', 6, 3),
(78, 'Win do tonight.', 9, 2),
(79, 'Very western.', 9, 3),
(80, 'Summer stage enter quickly.', 1, 3),
(81, 'No bring how.', 4, 2),
(82, 'Away few.', 7, 4),
(83, 'Education national answer.', 7, 5),
(84, 'Term weight bed.', 8, 3),
(85, 'Stock science Democrat.', 9, 5),
(86, 'Share officer pick.', 3, 4),
(87, 'Social green.', 3, 1),
(88, 'Anyone plant.', 5, 5),
(89, 'Analysis idea.', 1, 3),
(90, 'Son risk common game.', 5, 3),
(91, 'Past.', 10, 5),
(92, 'The analysis.', 3, 4),
(93, 'We maintain bring.', 6, 2),
(94, 'Size land magazine.', 1, 4),
(95, 'Baby head difference course.', 3, 5),
(96, 'Last final decision.', 7, 3),
(97, 'Energy.', 9, 1),
(98, 'To attorney onto model.', 4, 5),
(99, 'Nature strategy each.', 7, 2),
(100, 'Everything mother.', 1, 2),
(101, 'Clear half.', 9, 5),
(102, 'Board.', 1, 4),
(103, 'High more.', 10, 4),
(104, 'Rise.', 6, 4),
(105, 'Federal news well budget.', 10, 2),
(106, 'Cover rate.', 8, 5),
(107, 'Particular.', 5, 3),
(108, 'It.', 5, 5),
(109, 'Service win organization center.', 6, 3),
(110, 'Bad road.', 2, 4),
(111, 'Price book number.', 4, 4),
(112, 'Sister anything scientist.', 5, 4),
(113, 'Hit public social door.', 9, 2),
(114, 'Find organization then my.', 9, 5),
(115, 'Argue everybody surface.', 1, 4),
(116, 'Must.', 8, 4),
(117, 'Especially smile born message.', 4, 2),
(118, 'Final less.', 9, 4),
(119, 'Dream wall maybe soldier.', 8, 4),
(120, 'Air effect across.', 9, 4),
(121, 'Crime.', 8, 2),
(122, 'Strategy six.', 6, 4),
(123, 'Shake knowledge drop.', 2, 5),
(124, 'Wide listen.', 5, 5),
(125, 'Thus general.', 2, 5),
(126, 'Leave each.', 8, 5),
(127, 'Many eat.', 6, 1),
(128, 'Night morning.', 6, 5),
(129, 'Arm compare response.', 7, 5),
(130, 'North carry.', 10, 5),
(131, 'The who.', 6, 1),
(132, 'Street hit them.', 9, 1),
(133, 'Old most.', 8, 2),
(134, 'Hard even science.', 6, 5),
(135, 'Condition before turn.', 4, 1),
(136, 'Artist my.', 9, 2),
(137, 'Learn term certainly.', 10, 3),
(138, 'Situation worry.', 6, 1),
(139, 'Age prevent turn.', 9, 4),
(140, 'Democratic floor bit.', 3, 1),
(141, 'Stay director.', 3, 1),
(142, 'Cold who lot.', 9, 2),
(143, 'On practice.', 2, 3),
(144, 'Person push.', 6, 1),
(145, 'Forget determine care.', 2, 1),
(146, 'Season research.', 2, 5),
(147, 'Her.', 1, 2),
(148, 'Bring spring consider.', 3, 2),
(149, 'Thing affect herself.', 3, 3),
(150, 'Act along dinner.', 6, 2),
(151, 'Hair church.', 4, 1),
(152, 'Data employee.', 2, 2),
(153, 'Order remain.', 10, 4),
(154, 'Start within.', 8, 3),
(155, 'Act degree.', 6, 2),
(156, 'Rule media.', 2, 3),
(157, 'Sound nature.', 3, 5),
(158, 'Long fly argue.', 5, 4),
(159, 'Role few better.', 8, 5),
(160, 'Buy care address.', 5, 2),
(161, 'Seven across.', 1, 2),
(162, 'Foot onto.', 5, 2),
(163, 'Art some leader skill.', 5, 2),
(164, 'Husband admit.', 7, 5),
(165, 'Teach early.', 6, 1),
(166, 'Detail decide blue.', 6, 3),
(167, 'Just be bed.', 8, 2),
(168, 'Return focus.', 9, 2),
(169, 'Would everybody gun.', 8, 5),
(170, 'Whether successful.', 9, 4),
(171, 'Right month real.', 4, 4),
(172, 'Threat tax.', 9, 5),
(173, 'Positive popular.', 4, 1),
(174, 'Occur paper.', 1, 2),
(175, 'Age base.', 6, 2),
(176, 'Decide media.', 10, 3),
(177, 'Window general child.', 6, 5),
(178, 'Develop voice run.', 9, 5),
(179, 'Security allow.', 7, 4),
(180, 'Rock foot.', 5, 3),
(181, 'Respond try.', 7, 5),
(182, 'Mind.', 9, 4),
(183, 'Notice every consumer.', 5, 1),
(184, 'Reach carry.', 4, 5),
(185, 'Real this nature.', 8, 2),
(186, 'Hair color TV.', 9, 4),
(187, 'Hear well.', 4, 4),
(188, 'Hair source.', 3, 2),
(189, 'Run wife kitchen.', 7, 5),
(190, 'Between foot particular.', 5, 5),
(191, 'Experience without.', 5, 3),
(192, 'Break difference activity.', 6, 4),
(193, 'Occur rich.', 6, 3),
(194, 'Professor have later watch.', 3, 4),
(195, 'Popular now dinner.', 8, 4),
(196, 'Own bed.', 1, 4),
(197, 'Yet join toward.', 6, 5),
(198, 'Similar.', 8, 3),
(199, 'Side contain.', 5, 3),
(200, 'Get soldier reveal.', 1, 3),
(201, 'Chance spring.', 5, 5),
(202, 'Begin total less.', 7, 5),
(203, 'Nature trade ever.', 6, 1),
(204, 'Me from think.', 10, 2),
(205, 'Piece region remain.', 2, 5),
(206, 'Foreign effort.', 4, 2),
(207, 'Mission church.', 4, 3),
(208, 'Mouth this.', 3, 1),
(209, 'Arm.', 9, 3),
(210, 'Wrong a professional.', 7, 5),
(211, 'There tonight.', 7, 5),
(212, 'Do.', 8, 2),
(213, 'Him north.', 6, 2),
(214, 'Customer buy clearly over.', 6, 5),
(215, 'Provide protect candidate.', 6, 1),
(216, 'Her piece.', 5, 5),
(217, 'Word rise model hot.', 3, 1),
(218, 'Suddenly picture tell.', 1, 1),
(219, 'Economic wait see city.', 10, 4),
(220, 'Significant paper.', 1, 4),
(221, 'Star maintain each.', 2, 5),
(222, 'Perform technology green street.', 6, 5),
(223, 'Crime vote against class.', 5, 5),
(224, 'Yes sound.', 1, 1),
(225, 'Century letter not.', 10, 5),
(226, 'What head.', 4, 3),
(227, 'Easy dinner method.', 5, 2),
(228, 'Special why.', 9, 1),
(229, 'Easy much.', 3, 1),
(230, 'Present art.', 8, 2),
(231, 'Adult five change.', 9, 2),
(232, 'Film simply.', 6, 5),
(233, 'Doctor learn history.', 8, 5),
(234, 'Fire market.', 9, 1),
(235, 'Late spend exactly.', 4, 5),
(236, 'Point almost you.', 1, 4),
(237, 'Dinner national.', 8, 3),
(238, 'Second material.', 5, 2),
(239, 'Education bring fight.', 1, 3),
(240, 'Personal officer.', 10, 2),
(241, 'House reason throw.', 2, 1),
(242, 'About smile.', 4, 1),
(243, 'Company wall change.', 8, 5),
(244, 'Weight.', 9, 3),
(245, 'Understand total.', 3, 3),
(246, 'High improve.', 9, 3),
(247, 'Production parent.', 5, 4),
(248, 'Certainly bring.', 6, 4),
(249, 'Agreement wrong city throughout.', 9, 5),
(250, 'My although pay send.', 7, 4),
(251, 'Two detail.', 2, 1),
(252, 'Leg half information.', 2, 3),
(253, 'Recent meet.', 4, 1),
(254, 'Opportunity Congress.', 9, 2),
(255, 'Get upon people.', 1, 3),
(256, 'Stay woman experience.', 2, 4),
(257, 'Have meeting billion.', 8, 3),
(258, 'Ball image.', 6, 5),
(259, 'Stock by although.', 10, 4),
(260, 'Simple his hope.', 3, 4),
(261, 'Hair administration meeting.', 10, 2),
(262, 'Level subject letter.', 5, 3),
(263, 'Laugh.', 10, 2),
(264, 'Ahead truth some.', 9, 5),
(265, 'Region.', 8, 1),
(266, 'Themselves natural.', 8, 1),
(267, 'Structure forward big action.', 4, 5),
(268, 'Action property.', 9, 5),
(269, 'Least trial hair.', 4, 1),
(270, 'Debate same family ready.', 7, 5),
(271, 'Man life.', 3, 5),
(272, 'Type then.', 7, 5),
(273, 'Want do clear.', 2, 2),
(274, 'Health here though recognize.', 2, 4),
(275, 'Ever despite.', 4, 4),
(276, 'Blue organization very.', 9, 2),
(277, 'Late phone.', 5, 3),
(278, 'Determine everyone.', 4, 4),
(279, 'South case return.', 4, 3),
(280, 'Also around economy.', 9, 2),
(281, 'Mention community section.', 5, 1),
(282, 'Attention.', 6, 1),
(283, 'Most wrong.', 3, 4),
(284, 'About water why.', 8, 4),
(285, 'Wife court.', 6, 2),
(286, 'Dog political approach.', 1, 4),
(287, 'First in.', 9, 1),
(288, 'Watch sea natural.', 10, 5),
(289, 'Item executive.', 8, 5),
(290, 'Decade budget.', 10, 5),
(291, 'Task job.', 2, 4),
(292, 'Subject bit someone religious.', 6, 2),
(293, 'Blue worry.', 9, 1),
(294, 'Meeting resource worker foot.', 4, 4),
(295, 'Recognize baby.', 1, 3),
(296, 'Cause also consumer.', 8, 1),
(297, 'Lose good.', 10, 3),
(298, 'Worry ever cut.', 7, 3),
(299, 'Whatever class.', 6, 3),
(300, 'Improve likely this.', 1, 1),
(301, 'Seem free ground.', 8, 1),
(302, 'Century structure note.', 8, 5),
(303, 'Mouth figure ground.', 7, 3),
(304, 'Hundred very rest.', 3, 4),
(305, 'Bag.', 4, 3),
(306, 'Situation leg.', 2, 1),
(307, 'Treat lawyer carry bring.', 2, 2),
(308, 'Drug on save.', 9, 5),
(309, 'Age benefit.', 5, 3),
(310, 'Though carry.', 10, 2),
(311, 'Task serve.', 6, 3),
(312, 'Fly.', 1, 4),
(313, 'Nearly.', 4, 1),
(314, 'Message city campaign.', 10, 4),
(315, 'Girl student gas where.', 7, 5),
(316, 'Save major.', 8, 5),
(317, 'Up theory.', 7, 2),
(318, 'Black myself.', 9, 4),
(319, 'Build blood.', 10, 2),
(320, 'Film of.', 1, 4),
(321, 'Feeling.', 6, 1),
(322, 'Card writer.', 6, 3),
(323, 'Expert company relate.', 3, 1),
(324, 'They audience.', 1, 4),
(325, 'Ten treat nice.', 6, 2),
(326, 'Various particularly trade start.', 5, 1),
(327, 'Save eye subject.', 2, 4),
(328, 'Base type economy.', 9, 5),
(329, 'To.', 7, 1),
(330, 'Send maintain.', 5, 3),
(331, 'Someone capital later.', 9, 2),
(332, 'Economy never Democrat.', 6, 2),
(333, 'Ability up eye.', 9, 5),
(334, 'Who issue.', 8, 1),
(335, 'Doctor beyond.', 1, 3),
(336, 'Determine.', 5, 4),
(337, 'Who produce.', 1, 2),
(338, 'Defense beat water.', 5, 4),
(339, 'National up industry.', 2, 4),
(340, 'Challenge add participant want.', 3, 5),
(341, 'Movement key father.', 10, 1),
(342, 'Me mention around.', 2, 4),
(343, 'Yes enough I nation.', 1, 2),
(344, 'Walk return six.', 6, 2),
(345, 'According.', 9, 3),
(346, 'Edge get.', 6, 2),
(347, 'Keep network after.', 7, 2),
(348, 'Fly difference art.', 5, 1),
(349, 'Seek away air.', 3, 5),
(350, 'She relate.', 9, 5),
(351, 'Assume job character.', 6, 4),
(352, 'Majority gun share.', 3, 2),
(353, 'Support success rather.', 3, 1),
(354, 'Right.', 2, 4),
(355, 'Step line.', 3, 3),
(356, 'Off so discover.', 6, 4),
(357, 'Per growth.', 1, 2),
(358, 'Energy foot so.', 7, 3),
(359, 'Why.', 7, 1),
(360, 'Radio shake hold.', 10, 3),
(361, 'Allow one.', 7, 4),
(362, 'Perform employee week.', 10, 5),
(363, 'Road eat.', 4, 4),
(364, 'Music discussion your.', 2, 1),
(365, 'Make word model.', 9, 4),
(366, 'Best fish green sea.', 8, 3),
(367, 'Morning cut house.', 7, 5),
(368, 'Gas.', 3, 4),
(369, 'Seven difficult detail include.', 3, 3),
(370, 'Success cold source.', 9, 2),
(371, 'Foreign more mind.', 5, 4),
(372, 'Reality six culture.', 6, 1),
(373, 'Member do.', 6, 4),
(374, 'Democrat contain.', 2, 2),
(375, 'Art occur specific.', 4, 3),
(376, 'Actually upon figure.', 6, 4),
(377, 'Up few fine.', 3, 4),
(378, 'Unit into.', 8, 2),
(379, 'Ever positive.', 10, 5),
(380, 'Budget share quality.', 7, 1),
(381, 'Book main.', 2, 3),
(382, 'Dream visit outside.', 9, 3),
(383, 'Growth training.', 7, 1),
(384, 'Recognize deal despite.', 4, 4),
(385, 'Most condition direction.', 10, 1),
(386, 'Agent travel billion.', 1, 3),
(387, 'Many letter hour.', 9, 5),
(388, 'Without watch.', 9, 3),
(389, 'Former against hour.', 10, 3),
(390, 'Such behind fact.', 4, 1),
(391, 'Perform scientist suggest.', 1, 1),
(392, 'Focus reduce discuss.', 4, 1),
(393, 'During.', 3, 4),
(394, 'Own in save alone.', 1, 3),
(395, 'Continue ok.', 8, 5),
(396, 'Why.', 8, 2),
(397, 'Dinner.', 9, 5),
(398, 'Probably.', 3, 3),
(399, 'Lot sense right.', 3, 4),
(400, 'Blood challenge.', 3, 5),
(401, 'Above.', 3, 5),
(402, 'Agency operation style.', 8, 2),
(403, 'Family near despite.', 4, 1),
(404, 'Arm decade.', 4, 2),
(405, 'This enough office.', 4, 3),
(406, 'Stuff place skin.', 7, 3),
(407, 'Federal impact.', 3, 5),
(408, 'Analysis fine far.', 8, 3),
(409, 'Sign per.', 5, 5),
(410, 'Right admit until.', 6, 3),
(411, 'Treatment find.', 6, 1),
(412, 'Share yes American.', 3, 2),
(413, 'Type indicate everything several.', 9, 2),
(414, 'Try simply.', 2, 1),
(415, 'Finish man rest.', 2, 4),
(416, 'South dinner conference.', 9, 5),
(417, 'Worker.', 5, 5),
(418, 'Security bed.', 5, 5),
(419, 'Crime election.', 5, 2),
(420, 'Card.', 8, 1),
(421, 'Machine guy.', 6, 4),
(422, 'Phone.', 8, 4),
(423, 'Minute son.', 1, 3),
(424, 'Those house.', 10, 4),
(425, 'Business human.', 10, 4),
(426, 'Term become.', 5, 4),
(427, 'On skin lot.', 1, 2),
(428, 'Value suddenly yeah.', 5, 3),
(429, 'Avoid firm this.', 6, 4),
(430, 'Seem him mind few.', 5, 1),
(431, 'Guy nearly.', 4, 4),
(432, 'Audience foreign.', 4, 5),
(433, 'Would analysis.', 9, 2),
(434, 'Spend measure crime.', 9, 4),
(435, 'Property former.', 3, 5),
(436, 'Travel future.', 4, 1),
(437, 'Lead.', 5, 1),
(438, 'Apply despite push.', 3, 5),
(439, 'Sign yes girl.', 6, 5),
(440, 'Population throw story.', 8, 1),
(441, 'Town data.', 3, 5),
(442, 'Human already.', 7, 1),
(443, 'Party physical simply.', 7, 2),
(444, 'Relate heavy accept teach.', 9, 4),
(445, 'Down town.', 4, 4),
(446, 'Also seven vote.', 5, 3),
(447, 'Unit push.', 5, 3),
(448, 'Society deal.', 2, 5),
(449, 'Window for.', 5, 1),
(450, 'According enjoy.', 6, 1),
(451, 'North space.', 10, 3),
(452, 'Seem number.', 8, 5),
(453, 'Check page everything open.', 10, 5),
(454, 'Close begin safe.', 9, 1),
(455, 'Prevent daughter three.', 3, 5),
(456, 'Mention floor edge.', 10, 2),
(457, 'Factor military movie.', 9, 3),
(458, 'Mention south sound central.', 1, 2),
(459, 'Agency.', 1, 1),
(460, 'Down cold range.', 7, 1),
(461, 'Onto move message.', 1, 2),
(462, 'Medical authority.', 5, 5),
(463, 'Happen.', 1, 4),
(464, 'Until carry.', 9, 2),
(465, 'Economy daughter somebody.', 5, 1),
(466, 'Move school including.', 3, 4),
(467, 'Dinner statement.', 7, 4),
(468, 'Night when.', 9, 3),
(469, 'Rest they.', 3, 5),
(470, 'World population product.', 5, 5),
(471, 'Less bar.', 4, 3),
(472, 'Product pretty message.', 3, 4),
(473, 'Heavy machine.', 2, 4),
(474, 'Cold size across.', 1, 4),
(475, 'Us her.', 5, 5),
(476, 'Story control each.', 6, 5),
(477, 'Series almost remain.', 6, 1),
(478, 'Provide produce already.', 5, 2),
(479, 'Executive style against born.', 6, 1),
(480, 'Building contain conference.', 9, 5),
(481, 'President present force.', 4, 4),
(482, 'Difference discuss investment.', 2, 5),
(483, 'Scientist at.', 5, 1),
(484, 'Realize model fall.', 5, 4),
(485, 'Course commercial local could.', 5, 4),
(486, 'Window drug human.', 5, 5),
(487, 'Around great road.', 6, 3),
(488, 'Bank think better.', 1, 4),
(489, 'Drop brother.', 1, 2),
(490, 'Policy answer response bank.', 6, 5),
(491, 'Light only form.', 6, 1),
(492, 'Too about a.', 9, 3),
(493, 'Pass city.', 2, 3),
(494, 'All hard.', 8, 2),
(495, 'Seat meeting almost.', 8, 2),
(496, 'Near level.', 8, 5),
(497, 'Smile box.', 2, 1),
(498, 'Likely system store billion.', 6, 4),
(499, 'Mean.', 9, 4),
(500, 'Need provide crime.', 7, 1);

INSERT INTO Admin (A_ID, A_Email, A_Password) VALUES
(1, 'awarren@example.org', '2S18I(Jc$d'),
(2, 'amberlee@example.net', 'G5Bmm8CL@%'),
(3, 'joseph28@example.com', 'q4DhuIfU!4'),
(4, 'michaelcollins@example.com', '^kQjZygqa9'),
(5, 'amandaallen@example.com', 'pj8KSo4Kz$'),
(6, 'hallrhonda@example.com', 'ntE1JN6n4^'),
(7, 'greenmatthew@example.org', '^@AW4hb$7P'),
(8, 'fwhite@example.net', 'g%)2iItjkm'),
(9, 'lauragillespie@example.org', '(o0VGRop4F'),
(10, 'justinperez@example.com', 'aS(19&wcI%');
