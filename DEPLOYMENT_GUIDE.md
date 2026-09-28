# Deployment Guide — SCHOOL VISIT

### Method 1: Cloudflare Pages "Direct Upload" (Fastest — 10 Seconds)
1. Download and extract `SCHOOL_VISIT_DASHBOARD_AND_PLANNER.zip`.
2. Inside, open the `dist/` folder.
3. In [Cloudflare Dashboard](https://dash.cloudflare.com/):
   - Go to **Workers & Pages** → **Create application** → **Pages** → **Upload assets**.
   - Enter your project name (e.g., `school-visit`).
   - Drag and drop the `dist/` folder.
   - Click **Deploy site**.
4. The site is live immediately!

### Method 2: GitHub + Cloudflare Pages
1. Push all files from `SCHOOL_VISIT_DASHBOARD_AND_PLANNER.zip` to your GitHub repository.
2. In Cloudflare Dashboard, connect to your GitHub repository.
3. Configuration:
   - **Framework preset**: `None`
   - **Build command**: `node build.js`
   - **Build output directory**: `dist`
4. Click **Save and Deploy**.
