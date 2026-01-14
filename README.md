# Rick and Morty Character Search (iOS)

An iOS application built using **SwiftUI** that allows users to search for characters from the **Rick and Morty API**, view detailed character information, and experience a clean, accessible UI.  
This project was developed as part of an **iOS Developer Code Challenge**.

---

## 📱 Demo Video

🎥 A demo video showcasing the app’s UI and functionality is included in this GitHub repository.  
The video demonstrates:
- Live character search
- List and detail navigation
- Image loading behavior
- Animations

---

## ✨ Features

- 🔍 **Search characters by name**
  - Results update dynamically based on user input
- 📃 **Character list view**
  - Displays character image, name, and species
- 📄 **Character detail view**
  - Full-width character image
  - Name shown as the title
  - Species
  - Status
  - Origin
  - Type (shown only if available)
  - Formatted created date
- ⏳ **Loading state handling**
- 🔁 **Animated navigation** using `NavigationStack`
- 📤 **Share functionality**
  - Share character metadata and image URL
- 🧪 **Unit testing support**
  - Architecture designed for easy testing via dependency injection

---

## 🛠️ Tech Stack & Architecture

- **Language:** Swift  
- **UI Framework:** SwiftUI  
- **Concurrency:** Swift `async/await`  
- **Architecture:** MVVM  
- **Dependency Injection:** Protocol-based DI  
- **Networking:** `URLSession`  
- **State Management:** `@Observable`, `@State`, `NavigationStack`  
- **Image Loading:** `AsyncImage`

---

## 🌐 API Used

Rick and Morty API  
