/*
 * Reorder the columns in the following SQL table so that the resulting table minimizes disk usage.
 * You do not need to compute the total disk usage per row.
 */

 CREATE TABLE project (
	created_at TIMESTAMPTZ, --typelen = 8 bytes, typealign = d
	updated_at TIMESTAMPTZ, --typelen = 8 bytes, typealign = d
	author_id BIGINT NOT NULL --typelen = 8, typealign = d
	id SERIAL PRIMARY KEY, --typelen = 4 bytes, typealign = i
	project_id INTEGER NOT NULL UNIQUE, --typelen = 4 bytes, typealign = i
	target_id INTEGER NOT NULL, --typelen = 4 bytes, typealign = i
	action SMALLINT NOT NULL, --typelen = 2 bytes, typealign = s
	target_type VARCHAR(2) NOT NULL, --typelen = -1, typealign = i
	title VARCHAR(256). --typelen = -1, typealign = i
	data TEXT, --typelen = -1, typealign = i
);
