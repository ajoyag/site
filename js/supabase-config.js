
// Supabase Configuration
const SUPABASE_URL = 'https://hvdsoyzbsivaolfsylhh.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh2ZHNveXpic2l2YW9sZnN5bGhoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njg2NjIxMDAsImV4cCI6MjA4NDIzODEwMH0.Vtiu3UZ6SDx_vMqpm1iXHGWUWBfqgIA8P4cf3-1xsY4';

// Initialize the Supabase client
// Ensure supabase-js script is loaded before this runs
const db = supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
