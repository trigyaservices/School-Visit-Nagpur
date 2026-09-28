# SCHOOL VISIT — Complete Dashboard & Automatic Route Planner

Production field-visit platform for discovering schools near the user's current location and automatically planning optimized school-visit routes across Nagpur District (3,915 schools across all 18 blocks).

---

## 🌟 Key Capabilities
- **Single Unified Dashboard**: All controls (Live GPS Location, Quick Statistics, Nearby Schools, Route Planning, Today's Route Timeline, and Route Summary) are directly on the main dashboard. No external pages needed.
- **Strict School-to-Block Accuracy**: 100% verified Government of India UDISE code hierarchy across all 18 blocks (Narkhed, Katol, Kalmeshwar, Saoner, Kamptee, Ramtek, Mouda, Parseoni, Nagpur Gramin, Hingna, Umred, Kuhi, Bhiwapur, URC 1, URC 2, URC 3, URC 4, URC 5). Zero cross-block contamination.
- **Live GPS Proximity Detection**: High-accuracy browser geolocation with quick radius filters (5, 10, 15, 20, 25, 50, 100, 200 KM, ALL) sorted Nearest → Farthest.
- **Automatic Road Route Optimization**: One-click automatic route generation that calculates road distances, estimated travel time, minimizes backtracking, and displays a clean numbered vertical timeline.
- **NO MAP ANYWHERE**: Adheres strictly to the architectural requirement of zero visual maps (no Leaflet, no Google Maps canvas, no map tiles, no polylines). Pure clean timeline and external Google Maps turn-by-turn navigation.
- **NO ADMIN PANEL**: No login, no password, no OTP, no admin barriers. Open field inspector productivity.
- **Visited/Pending Tracking**: One-tap inspection logging saved in browser local storage with instant stats updating.
- **Replan Route**: Re-queries live GPS, excludes visited schools, recalculates remaining pending stops, and re-optimizes the itinerary.
- **Turn-by-Turn Navigation**: One-click `[🚗 NAVIGATE]` opens external Google Maps with exact coordinates to each school.

---

## 📁 Repository Structure
```
SCHOOL_VISIT_DASHBOARD_AND_PLANNER/
├── index.html                  # Complete Single-Page Dashboard
├── build.js                    # Autonomous Self-Contained Production Builder
├── package.json                # NPM lifecycle & deployment scripts
├── wrangler.toml               # Cloudflare Workers & Pages configuration
├── wrangler.jsonc              # Cloudflare configuration schema
├── _headers                    # Security & static asset caching headers
├── .assetsignore               # Cloudflare static asset ignore rules
├── .gitignore                  # Git repository ignore rules
│
├── static/                     # Client Assets
│   ├── app.js                  # Core application engine
│   ├── schools_data.js         # Direct dataset (window.NAGPUR_SCHOOLS)
│   └── styles.css              # Mobile-first design system
│
├── data/                       # Authoritative Datasets
│   ├── schools.json            # Verified master JSON (3,915 schools)
│   ├── NAGPUR_all_schools.csv  # Complete master CSV
│   └── [18 BLOCK CSVs]         # Individual block CSV files
│
├── dist/                       # Pre-compiled Cloudflare Pages Output
│   ├── index.html
│   ├── _headers
│   ├── static/
│   └── data/
│
├── README.md                   # Documentation
├── DEPLOYMENT_GUIDE.md         # Deployment instructions
├── run.sh                      # One-click startup script for Linux / macOS
└── run.bat                     # One-click startup script for Windows
```

---

## 🚀 Running Locally
```bash
# Using Node directly:
node build.js
npx serve dist -p 8000

# Or with run script:
./run.sh        # Linux / macOS
run.bat         # Windows
```
Open `http://localhost:8000` in your web browser.

---

## ☁️ Cloudflare Pages / Workers Deployment
- **Build Command**: `node build.js`
- **Build Output Directory**: `dist`
