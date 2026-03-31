-- Migration to add parent_id to blogs table
ALTER TABLE blogs 
ADD COLUMN parent_id UUID REFERENCES blogs(id);

CREATE INDEX idx_blogs_parent_id ON blogs(parent_id);

-- Migration for Awards table
CREATE TABLE awards (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    title TEXT NOT NULL,
    issuer TEXT,
    date DATE,
    description TEXT,
    image_url TEXT,
    is_published BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now())
);

-- Migration to add parent_id to projects table
ALTER TABLE projects
ADD COLUMN parent_id UUID REFERENCES projects(id);

CREATE INDEX idx_projects_parent_id ON projects(parent_id);
