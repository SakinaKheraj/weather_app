
# 🌦️ Weather App (Flutter)

A simple and modern **Flutter Weather App** that fetches real-time weather data using a **Weather API** and implements **BLoC state management** for clean and scalable architecture.

---

## ✨ Features

- 🌍 Real-time weather data using REST API  
- ⏱️ Current weather & hourly forecast  
- 🔄 Refresh weather data  
- 🧠 BLoC state management  
- 📱 Clean and responsive UI  

---

## 🛠️ Tech Stack

- Flutter & Dart  
- BLoC  
- REST API  
- HTTP & Intl packages  

---

## 📂 Project Structure

```

lib/
├── bloc/
├── models/
├── presentation/
│   ├── screens/
│   └── widgets/
└── main.dart

````

---

## 🔁 State Management

The app uses **BLoC** to manage:
- Loading state  
- Successful weather fetch  
- Error handling  

---

## 🚀 Getting Started

### Clone the repo
```bash
git clone https://github.com/your-username/weather-app.git
cd weather-app
````

### Install dependencies

```bash
flutter pub get
```

### Add API key

Create a `.env` file:

```
WEATHER_API_KEY=your_api_key_here
```

### Run the app

```bash
flutter run
```

---

## 🧠 Learnings

* API integration in Flutter
* Clean architecture using BLoC
* Separation of UI and business logic

---

## 📌 Future Enhancements

* Celsius/Fahrenheit conversion
* Daily forecast
* Location-based weather

---

## 📄 License

MIT License


