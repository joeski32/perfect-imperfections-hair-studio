-- Run this in Supabase SQL Editor to add the client type field used by the updated website.
alter table public.appointments add column if not exists client_type text;
