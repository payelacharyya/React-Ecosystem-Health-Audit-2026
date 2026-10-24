CREATE TABLE ecosystem_health (
    id SERIAL PRIMARY KEY,
    library_name VARCHAR(50),
    category VARCHAR(50),
    npm_weekly_downloads BIGINT,
    github_stars INT,
    last_commit_date DATE,
    open_issues INT,
    bundle_size_kb DECIMAL(10,3),
    version VARCHAR(20),
    naukri_jobs INT,
    health_verdict VARCHAR(20)
);