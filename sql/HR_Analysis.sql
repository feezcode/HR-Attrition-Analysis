-- Overall Turnover
SELECT
    COUNT(*) AS total_employees,
    SUM(Termd) AS terminated_employees,
    ROUND(AVG(Termd) * 100, 2) AS turnover_rate
FROM hr_employees;


-- Turnover by Department
SELECT
    Department,
    COUNT(*) AS total_employees,
    SUM(Termd) AS terminated_employees,
    ROUND(AVG(Termd) * 100, 2) AS turnover_rate
FROM hr_employees
GROUP BY Department
ORDER BY turnover_rate DESC;


-- Turnover by Recruitment Source
SELECT
    RecruitmentSource,
    COUNT(*) AS total_employees,
    SUM(Termd) AS terminated_employees,
    ROUND(AVG(Termd) * 100, 2) AS turnover_rate
FROM hr_employees
GROUP BY RecruitmentSource
ORDER BY turnover_rate DESC;


-- Salary Analysis
SELECT
    Termd,
    COUNT(*) AS employees,
    ROUND(AVG(Salary), 2) AS avg_salary
FROM hr_employees
GROUP BY Termd;


-- Satisfaction & Engagement
SELECT
    Termd,
    ROUND(AVG(EmpSatisfaction), 2) AS avg_satisfaction,
    ROUND(AVG(EngagementSurvey), 2) AS avg_engagement
FROM hr_employees
GROUP BY Termd;


-- Performance Analysis
SELECT
    PerformanceScore,
    COUNT(*) AS total_employees,
    SUM(Termd) AS terminated_employees,
    ROUND(AVG(Termd) * 100, 2) AS turnover_rate
FROM hr_employees
GROUP BY PerformanceScore
ORDER BY turnover_rate DESC;


-- Attendance Analysis
SELECT
    Termd,
    ROUND(AVG(Absences), 2) AS avg_absences,
    ROUND(AVG(DaysLateLast30), 2) AS avg_days_late
FROM hr_employees
GROUP BY Termd;


-- Tenure Analysis
SELECT
    Termd,
    ROUND(AVG(TenureYears), 2) AS avg_tenure_years
FROM hr_employees
GROUP BY Termd;