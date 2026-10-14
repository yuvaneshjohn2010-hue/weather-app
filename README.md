# AeroGuard Live Weather & Severe Alert Command Center 🌪️⚡

A real-time, cyber-meteorological web application featuring live satellite telemetry, atmospheric diagnostics, and early warnings for **Cyclones**, **Heavy Rain / Flash Floods**, and **Extreme Heatwaves**.

---

## 🌟 Key Features

### 1. 📡 Live Weather & Satellite Telemetry
- **Global Search & Autocomplete**: Search any city, town, or district worldwide with instant live suggestions.
- **GPS Auto-Location**: 1-click location detection via browser geolocation API.
- **Auto-Refresh Engine**: Continuous live polling every 3 minutes with real-time countdown.
- **Unit Toggle**: Instantly switch between Celsius (`°C`) and Fahrenheit (`°F`), with auto wind unit conversion (`km/h` / `mph`).

### 2. 🚨 Critical Severe Weather Early Warning Systems
The app monitors international meteorological safety thresholds and raises instant warning banners:

- **🌀 Cyclone & Gale Alert**:
  - **Triggers**: Sustained cyclonic wind speed ≥ 62 km/h, gusts ≥ 75 km/h, or barometric pressure drop < 995 hPa with severe convective storms.
  - **Display**: Strobe crimson alert banner, Beaufort scale rating, category classification (Depression, Cyclonic Storm, Super Cyclone), and storm surge safety checklist.
  - **Audio**: Synthesized EAS / NOAA-style dual-tone storm emergency siren.

- **🌊 Heavy Rain & Flash Flood Alert**:
  - **Triggers**: Precipitation intensity > 12 mm/h (Heavy) or > 25 mm/h (Torrential Cloudburst), with storm codes or 24h expected accumulation > 50 mm.
  - **Display**: Electric cyan alert banner, flood risk score, and inundation guidance.
  - **Audio**: Multi-frequency rain warning chime.

- **🔥 High Heatwave & Heatstroke Danger Alert**:
  - **Triggers**: Ambient temperature ≥ 38°C (100.4°F) or Apparent Heat Index ≥ 41°C, or UV radiation index ≥ 8.0.
  - **Display**: Intense amber alert banner, heatstroke risk level, peak hazardous exposure hours, and dehydration prevention checklist.
  - **Audio**: Warning double-beep chime.

### 3. ⚡ Alert Simulation & Diagnostic Mode (Demo Mode)
Want to test how the alerts look, sound, and advise even when local weather is calm?
Use the top simulation toolbar:
- **🟢 Live Sensors**: Shows actual real-time telemetry from Open-Meteo.
- **🌀 Simulate Cyclone Alert**: Immediately triggers Category 4 Super Cyclone warnings (145 km/h winds, 965 hPa barometric drop, storm sirens, and gale canvas animations).
- **🌊 Simulate Heavy Rain Alert**: Triggers violent cloudburst and flash flood alerts (42.5 mm/h deluge with torrential canvas rain FX).
- **🔥 Simulate High Heat Alert**: Triggers blistering 46.8°C thermal heatwave emergency with shimmering heat haze FX.

### 4. 📊 Core Atmospheric Highlights
- **🌧️ Rain Watch**: Precipitation probability (%), rainfall rate (mm/h), 24h accumulation, and relative humidity.
- **☀️ Solar & Sunny**: Real-time UV Index with risk badge (Low, Moderate, High, Extreme), cloud coverage percentage, and sunrise / sunset timings.
- **🌀 Wind & Cyclone Watch**: Sustained speed, gusts, surface pressure, Beaufort scale classification, and an **interactive 360° Compass** with dynamic needle orientation.
- **🔥 Thermal & Heat Index**: Apparent temperature, heatstroke danger indicator, and today's maximum recorded temp.
- **🍃 Air Quality Index (AQI)**: US-AQI score, health status badge, PM2.5, and PM10 concentration.

### 5. 📅 Dynamic Forecasts & Live Radar
- **24-Hour Hourly Trajectory**: Smooth horizontal scrollbar with hourly temp, condition icons, rain probabilities, and wind speeds.
- **7-Day Extended Forecast**: Interactive min-to-max temperature range sliders and precipitation metrics.
- **Realtime Precipitation Radar**: Embedded Leaflet map with RainViewer live precipitation radar tiles and pulsating location pin.

### 6. 🎨 Visual FX & Audio
- **Adaptive Canvas Engine**: Renders live falling raindrops, ground splash ripples, lightning flashes during cyclones, golden sun motes, and atmospheric heat haze waves.
- **Zero Audio Dependency**: Uses the Web Audio API to synthesize emergency sirens directly in the browser—no missing audio files or network delays!

---

## 🚀 How to Run

### Method 1: Instant Launch (Double Click)
1. Double click [`start.bat`](file:///c:/Users/USER/Documents/whether/start.bat) or open [`index.html`](file:///c:/Users/USER/Documents/whether/index.html) in your favorite web browser (Google Chrome, Microsoft Edge, Firefox, Brave, Safari).
2. That's it! Everything works directly out of the box with zero installation.

### Method 2: Via Local Web Server
If you'd like to run it over HTTP:
```bash
python -m http.server 8000
```
Then visit: `http://localhost:8000`

---

## 📁 Project Architecture
```
c:\Users\USER\Documents\whether\
├── index.html          # Semantic HTML5 command center interface
├── css/
│   └── style.css       # Glassmorphism design, alert animations, responsive grid
├── js/
│   ├── config.js       # WMO weather codes, alert thresholds, safety guidelines
│   ├── audio.js        # Web Audio API emergency siren & chime synthesizer
│   ├── weatherApi.js   # Open-Meteo live forecast & air quality API client
│   ├── alerts.js       # Cyclone, Rain, and Heatwave detection engine & demo simulator
│   ├── background.js   # Dynamic HTML5 canvas weather FX (rain, storm, lightning, sun, heat)
│   ├── map.js          # Leaflet.js live precipitation radar map
│   └── app.js          # Main controller, UI data binding, search & geolocation
├── start.bat           # 1-Click Windows launcher
└── README.md           # Documentation
```
