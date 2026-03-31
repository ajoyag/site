-- Add missing columns to awards table to support full post features
ALTER TABLE awards 
ADD COLUMN slug TEXT,
ADD COLUMN content TEXT,
ADD COLUMN parent_id UUID REFERENCES awards(id);

CREATE INDEX idx_awards_parent_id ON awards(parent_id);
