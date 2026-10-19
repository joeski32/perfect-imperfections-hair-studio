# Perfect Imperfections Hair Studio — Supabase-connected starter

This package preserves the black-and-metallic-gold salon site and adds Supabase appointment submission plus an owner dashboard for sign-in, reviewing requests, changing appointment status, marking deposits after manual Chime verification, and private notes.

## Before publishing
1. In Supabase SQL Editor, run `SETUP_SQL.sql` (adds `client_type`, used by the booking form).
2. Open `config.js` and replace the two placeholder values with the Project URL and **Publishable** key from Supabase. Do not use a secret key or service-role key in browser code.
3. Upload `index.html`, `manifest.json`, and `config.js` to the root of the `perfect-imperfections-hair-studio` GitHub repository, replacing the existing `index.html` and `manifest.json`. Do not change the JM Finance repository.
4. Wait for GitHub Pages to deploy, then test a request. Sign in from the Owner tab using Sasha's Supabase Auth email/password.

## Important limitations
- This package does not send automatic SMS notifications yet. A separate SMS provider and server-side function are required; never put SMS provider secrets in `config.js`.
- The form stores a requested date/time, not live availability; Sasha must review and confirm each booking.
- Deposit status should only be changed after Sasha manually verifies the deposit in Chime. No payment credentials are collected.
- Keep Supabase RLS enabled. The owner dashboard relies on the existing `salon_owners` and appointment policies created in the setup steps.
- This starter uses the Supabase browser library from its public CDN.
