# Learning Management System

## Run Locally

1. Install dependencies:

```bash
npm install
```

2. Start the development server:

```bash
npm run dev
```

## Deploy To Hugging Face Spaces (Docker)

This repository is configured for a Docker Space.

1. Create a new Space on Hugging Face.
2. Choose Space SDK: `Docker`.
3. Connect this GitHub repository to the Space.
4. In Space Settings -> Variables, add:
	- `VITE_SUPABASE_URL`
	- `VITE_SUPABASE_PUBLISHABLE_KEY`
5. Push to `main` (or trigger a rebuild from the Space page).

The app serves on `PORT=7860` inside Spaces and injects runtime variables through `dist/env.js` at container startup.
