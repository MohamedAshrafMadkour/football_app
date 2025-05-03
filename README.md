# ⚽ Football App

**Football App** is a feature-rich sports application that provides the latest football news, live match coverage, player search, and detailed match statistics. The app is designed with smooth navigation, persistent state handling, and a polished user interface.

---

## 📱 Key Features

- 📰 **Football News**: Get the latest football news from trusted sources.
- 🔍 **Search for Players**: Instantly search for football players by name and view their info.
- 📺 **Live Match Coverage**: Real-time updates for ongoing football matches.
- 📊 **Match Statistics**: Detailed data including goals, substitutions, and cards.
- 📅 **Past & Upcoming Matches**: 
  - View results from past matches.
  - Check future match schedules.
- 🌐 **Open News in Browser**:
  - Launch full news articles in the default browser using `url_launcher`.
- 🌗 **Theme Support**:
  - Toggle between Light and Dark Modes.
  - Theme preference is saved using `SharedPreferences` and restored on next launch.
- 🎬 **Animated Splash Screen**: 
  - Smooth intro animations using Flutter's animation system.
- ✨ **Shimmer Loading**:
  - Placeholder loading UI for enhanced user experience during data fetch.

---

## 🧱 Architecture

Built using **MVVM (Model - View - ViewModel)** pattern to separate logic from UI and keep code maintainable and scalable.

---

## 🧠 State Management

- Uses **Cubit** (`flutter_bloc`) for state management.
- Ensures responsive and reactive UI.

---

## 🌐 Data & Integration

- **RESTful APIs** are used to fetch news, players, and match data.
- Uses `url_launcher` to open full news articles externally.
- Uses `SharedPreferences` to persist settings and preferences locally.

---
