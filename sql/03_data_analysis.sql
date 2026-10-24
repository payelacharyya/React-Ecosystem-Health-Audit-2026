-- 1. Total number of libraries
SELECT COUNT(*) AS total_libraries
FROM ecosystem_health;


-- 2. Health verdict distribution
SELECT
    health_verdict,
    COUNT(*) AS library_count
FROM ecosystem_health
GROUP BY health_verdict
ORDER BY library_count DESC;


-- 3. Top 7 libraries by job demand
SELECT
    library_name,
    naukri_jobs,
    github_stars,
    npm_weekly_downloads
FROM ecosystem_health
ORDER BY naukri_jobs DESC, library_name ASC
LIMIT 7;


-- 4. KPI validation
SELECT
    COUNT(DISTINCT library_name) AS total_libraries,
    COUNT(DISTINCT library_name)
        FILTER (WHERE naukri_jobs > 1000)
        AS high_job_demand_libraries,
    ROUND(AVG(github_stars)::numeric, 2)
        AS average_github_stars,
    ROUND(AVG(bundle_size_kb)::numeric, 2)
        AS average_bundle_size_kb
FROM ecosystem_health;


-- 5. Compare metrics by health verdict
SELECT
    health_verdict,
    COUNT(*) AS library_count,
    ROUND(AVG(naukri_jobs)::numeric, 2) AS avg_job_demand,
    ROUND(AVG(npm_weekly_downloads)::numeric, 2)
        AS avg_weekly_downloads,
    ROUND(AVG(bundle_size_kb)::numeric, 2)
        AS avg_bundle_size_kb
FROM ecosystem_health
GROUP BY health_verdict
ORDER BY library_count DESC;