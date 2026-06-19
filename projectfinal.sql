DROP DATABASE IF EXISTS Health_Fitness_Tracking_App;
CREATE DATABASE Health_Fitness_Tracking_App;
USE Health_Fitness_Tracking_App;
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    fitness_goal VARCHAR(100)
);

CREATE TABLE HealthMetrics (
    metric_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    current_weight DECIMAL(5,2),
    target_weight DECIMAL(5,2),
    recorded_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE Activities (
    activity_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT, 
    activity_name VARCHAR(50),
    duration_minutes INT,
    calories_burned INT,
    activity_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE DietPlan (
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    plan_name VARCHAR(50),
    daily_calories INT,
    start_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE NutritionLogs (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    calories INT, 
    log_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE ExerciseRoutines (
    routine_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    routine_name VARCHAR(50),
    intensity ENUM('Low', 'Medium', 'High'),
    duration_weeks INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);
INSERT INTO Users (full_name, email, fitness_goal) VALUES
('Khaled Nour', 'khaled@email.com', 'Muscle Gain'),
('Layla Ahmed', 'layla@email.com', 'Weight Loss'),
('Ziad Amrou', 'ziad@email.com', 'Maintain Weight'), 
('Hoda Mansour', 'hoda@email.com', 'Muscle Gain'),
('Tarek Fawzy', 'tarek@email.com', 'Weight Loss'), 
('Dina Adel', 'dina@email.com', 'Maintain Weight'),
('Mostafa Hegazi', 'mostafa@email.com', 'Weight Loss'),
('Yasmin Ali', 'yasmin@email.com', 'Muscle Gain'),
('Ali Hassan', 'ali_h@email.com', 'Maintain Weight'),
('Amira Said', 'amira@email.com', 'Weight Loss'),
('Ibrahim Saad', 'ibrahim@email.com', 'Muscle Gain'),
('Salma Kareem', 'salma@email.com', 'Weight Loss'),
('Kareem Reda', 'kareem@email.com', 'Muscle Gain'), 
('Reem Youssef', 'reem@email.com', 'Maintain Weight'),
('Hassan Mahmoud', 'hassan_m@email.com', 'Weight Loss'), 
('Nourhan Ezz', 'nourhan@email.com', 'Muscle Gain'),
('Mazen Ahmed', 'mazen@email.com', 'Weight Loss'), 
('Samy Ali', 'samy@email.com', 'Maintain Weight'),
('Omar Kamal', 'omar_k@email.com', 'Muscle Gain'), 
('Eyad Zaki', 'eyad@email.com', 'Weight Loss'),
('Youssef Nabil', 'youssef@email.com', 'Muscle Gain'),
('Mona Said', 'mona_s@email.com', 'Weight Loss'),
('Ahmed Tariq', 'ahmed_t@email.com', 'Maintain Weight'),
('Sara Yassin', 'sara_y@email.com', 'Weight Loss'),
('Mahmoud Wael', 'mahmoud_w@email.com', 'Muscle Gain');

INSERT INTO HealthMetrics (user_id, current_weight, target_weight, recorded_date) VALUES
(1, 85.0, 75.0, CURDATE()), 
(2, 90.0, 70.0, CURDATE()),
(3, 75.0, 75.0, CURDATE()), 
(4, 95.0, 80.0, CURDATE()),
(5, 100.0, 85.0, CURDATE()), 
(6, 65.0, 65.0, CURDATE()), 
(7, 110.0, 90.0, CURDATE()),
(8, 55.0, 60.0, CURDATE()),
(9, 80.0, 80.0, CURDATE()), 
(10, 88.0, 70.0, CURDATE()), 
(11, 72.0, 85.0, CURDATE()), 
(12, 98.0, 80.0, CURDATE()),
(13, 68.0, 75.0, CURDATE()), 
(14, 60.0, 60.0, CURDATE()), 
(15, 120.0, 95.0, CURDATE()), 
(16, 77.0, 85.0, CURDATE()),
(17, 105.0, 85.0, CURDATE()),
(18, 82.0, 82.0, CURDATE()), 
(19, 66.0, 75.0, CURDATE()), 
(20, 93.0, 75.0, CURDATE());

INSERT INTO Activities (user_id, activity_name, duration_minutes, calories_burned, activity_date) VALUES
(1, 'Running', 30, 300, CURDATE()),
(2, 'Walking', 60, 200, CURDATE()),
(3, 'Yoga', 45, 150, CURDATE()),
(4, 'Cycling', 40, 400, CURDATE()),
(5, 'Swimming', 50, 500, CURDATE()),
(6, 'Football', 90, 700, CURDATE()), 
(7, 'Tennis', 60, 350, CURDATE()), 
(8, 'HIIT', 20, 300, CURDATE()),
(9, 'Boxing', 45, 500, CURDATE()), 
(10, 'Pilates', 50, 200, CURDATE()),
(11, 'CrossFit', 40, 600, CURDATE()), 
(12, 'Zumba', 60, 400, CURDATE()),
(13, 'Karate', 90, 500, CURDATE()),
(14, 'Hiking', 120, 800, CURDATE()), 
(15, 'Basketball', 60, 600, CURDATE()),
(16, 'Volleyball', 45, 300, CURDATE()),
(17, 'Squash', 40, 450, CURDATE()), 
(18, 'Rowing', 30, 300, CURDATE()),
(19, 'Judo', 60, 450, CURDATE()),
(20, 'Dancing', 45, 250, CURDATE());

INSERT INTO DietPlan (user_id, plan_name, daily_calories, start_date) VALUES
(1, 'Keto', 1800, CURDATE()),
(2, 'Vegan', 2000, CURDATE()),
(3, 'Paleo', 2200, CURDATE()), 
(4, 'Low Carb', 1700, CURDATE()),
(5, 'High Protein', 2500, CURDATE()),
(6, 'Balanced', 2100, CURDATE()),
(7, 'Keto', 1900, CURDATE()),
(8, 'Vegetarian', 1800, CURDATE()),
(9, 'Intermittent Fasting', 1950, CURDATE()),
(10, 'Mediterranean', 2200, CURDATE()),
(11, 'Carnivore', 2800, CURDATE()), 
(12, 'Whole30', 2000, CURDATE()),
(13, 'DASH', 2100, CURDATE()),
(14, 'Pescatarian', 2000, CURDATE()),
(15, 'Zone', 2300, CURDATE()),
(16, 'Raw Food', 1800, CURDATE()),
(17, 'Flexitarian', 2150, CURDATE()), 
(18, 'Mayo Clinic', 1900, CURDATE()), 
(19, 'Keto', 1850, CURDATE()), 
(20, 'High Protein', 2600, CURDATE());

INSERT INTO NutritionLogs (user_id, calories, log_date) VALUES
(1, 1800, CURDATE()),
(2, 2000, CURDATE()),
(3, 2200, CURDATE()), 
(4, 2500, CURDATE()), 
(5, 2400, CURDATE()),
(6, 2100, CURDATE()),
(7, 3000, CURDATE()),
(8, 1800, CURDATE()),
(9, 1950, CURDATE()),
(10, 1500, CURDATE()),
(11, 2800, CURDATE()),
(12, 2000, CURDATE()),
(13, 2100, CURDATE()),
(14, 1900, CURDATE()),
(15, 2300, CURDATE()),
(16, 1800, CURDATE()),
(17, 2150, CURDATE()),
(18, 1900, CURDATE()),
(19, 1850, CURDATE()),
(20, 3100, CURDATE());

INSERT INTO ExerciseRoutines (user_id, routine_name, intensity, duration_weeks) VALUES
(1, 'Fat Burn', 'High', 8),
(2, 'Cardio Blast', 'Medium', 6),
(3, 'Core Stability', 'Low', 10),
(4, 'Yoga Zen', 'Low', 12),
(5, 'Muscle Build', 'High', 12),
(6, 'Strength Foundation', 'Medium', 8),
(7, 'Athlete Power', 'High', 16),
(8, 'HIIT Intense', 'High', 4),
(9, 'Boxing Drill', 'High', 8),
(10, 'Pilates Flow', 'Low', 10),
(11, 'CrossFit Alpha', 'High', 16),
(12, 'Dance Fitness', 'Medium', 6),
(13, 'Martial Arts Basics', 'High', 12),
(14, 'Endurance Hike', 'Medium', 8),
(15, 'Hoops Conditioning', 'High', 10),
(16, 'Agility Drills', 'Medium', 6),
(17, 'Squash Sprints', 'High', 8),
(18, 'Rowing Power', 'Medium', 12),
(19, 'Judo Strength', 'High', 10),
(20, 'Full Body Tone', 'Medium', 8);

CREATE INDEX idx_user_email ON Users(email);
CREATE INDEX idx_activity_date ON Activities(activity_date);

USE Health_Fitness_Tracking_App;

CREATE OR REPLACE VIEW vw_user_health_summary AS
SELECT 
    u.full_name AS 'Name',
    u.fitness_goal AS 'Goal',
    h.current_weight AS 'Weight',
    h.target_weight AS 'Target',
    a.activity_name AS 'Activity',
    d.plan_name AS 'Diet Plan',
    h.recorded_date AS 'Date'
FROM Users u
LEFT JOIN HealthMetrics h ON u.user_id = h.user_id
LEFT JOIN Activities a ON u.user_id = a.user_id
LEFT JOIN DietPlan d ON u.user_id = d.user_id;

SELECT * FROM Users;
-- 1. List all users who have set a weight loss goal
SELECT * FROM Users WHERE fitness_goal = 'Weight Loss';

-- 2. Retrieve all activities performed today
SELECT activity_name, activity_date 
FROM Activities WHERE activity_date = CURDATE();

-- 3. List the total calories consumed per user today
SELECT u.full_name, SUM(n.calories) AS Total_Consumed
FROM NutritionLogs n
JOIN Users u ON n.user_id = u.user_id
WHERE n.log_date = CURDATE()
GROUP BY u.user_id, u.full_name;

-- 4. List users who consumed more than 2,500 calories today
SELECT u.full_name, SUM(n.calories) AS Total_Consumed
FROM NutritionLogs n
JOIN Users u ON n.user_id = u.user_id
WHERE n.log_date = CURDATE()
GROUP BY u.user_id, u.full_name
HAVING SUM(n.calories) > 2500;

-- 5. Retrieve activities with user names where duration exceeds 60 minutes
SELECT u.full_name, a.activity_name, a.duration_minutes
FROM Activities a
JOIN Users u ON a.user_id = u.user_id
WHERE a.duration_minutes > 60;

-- 6. List all Keto diet plans with user profiles
SELECT u.*, d.plan_name 
FROM DietPlan d
JOIN Users u ON d.user_id = u.user_id
WHERE d.plan_name = 'Keto';

-- 7. Show users along with their latest recorded weight (Subquery)
SELECT u.full_name, h.current_weight, h.recorded_date
FROM Users u
JOIN HealthMetrics h ON u.user_id = h.user_id
WHERE h.recorded_date = (SELECT MAX(recorded_date)
 FROM HealthMetrics WHERE user_id = u.user_id);

-- 8. Get users with High intensity exercise routines
SELECT u.*, e.routine_name, e.intensity
FROM ExerciseRoutines e
JOIN Users u ON e.user_id = u.user_id
WHERE e.intensity = 'High';

-- 9. List users who have no recorded activities
SELECT Users.full_name 
FROM Users 
LEFT JOIN Activities  ON Users.user_id = Activities.user_id
WHERE Activities.user_id IS NULL;

-- 10. Find users whose average calorie intake is higher than overall average
SELECT u.full_name, AVG(n.calories) AS User_Avg
FROM NutritionLogs AS n
JOIN Users u ON n.user_id = u.user_id
GROUP BY u.user_id, u.full_name
HAVING AVG(n.calories) > (SELECT AVG(calories) FROM NutritionLogs);

-- 11. Classify each user's BMI status
SELECT u.full_name, h.current_weight,
    CASE 
        WHEN (h.current_weight / (1.7 * 1.7)) < 18.5 THEN 'Underweight'
        WHEN (h.current_weight / (1.7 * 1.7)) BETWEEN 18.5 AND 24.9 THEN 'Normal'
        ELSE 'Overweight'
    END AS BMI_Status
FROM HealthMetrics h
JOIN Users u ON h.user_id = u.user_id;