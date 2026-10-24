UPDATE ecosystem_health
SET health_verdict =
    CASE
        WHEN last_commit_date < DATE '2024-01-01'
            THEN 'Unmaintained'
        WHEN open_issues > 500
            THEN 'Issue Risk'
        ELSE 'Maintained'
    END;