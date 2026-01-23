# Practical Flutter Development Task

A Flutter application demonstrating energy monitoring and data visualization with a clean, modern UI design.

## 📱 Project Overview

This is a multi-page Flutter application built with GetX state management, featuring:
- Splash screen with animated login form
- Home page (1st Page) with energy statistics and monitoring
- Data visualization page (2nd Page) with interactive charts and scrollable data views
- Responsive design using flutter_screenutil
- Custom icons and assets
- Clean architecture with modular structure

## 🏗️ Architecture

The project follows **GetX MVC Pattern** with a modular structure:

```
lib/
├── app/
│   ├── core/                    # Core utilities and constants
│   │   ├── constants/           # App-wide constants
│   │   │   ├── app_assets.dart  # Asset paths
│   │   │   └── app_constants.dart
│   │   ├── theme/               # App theming
│   │   │   ├── app_colors.dart
│   │   │   └── app_theme.dart
│   │   ├── utils/               # Helper utilities
│   │   │   └── helpers.dart
│   │   └── values/              # App values
│   │       └── app_strings.dart
│   │
│   ├── modules/                 # Feature modules
│   │   ├── splash/              # Splash screen module
│   │   │   ├── bindings/        # Dependency injection
│   │   │   ├── controllers/     # Business logic
│   │   │   └── views/           # UI components
│   │   │
│   │   ├── home/                # Home page module
│   │   │   ├── bindings/
│   │   │   ├── controllers/
│   │   │   └── views/
│   │   │       └── widgets/     # Reusable widgets
│   │   │
│   │   └── second_page/         # Data visualization module
│   │       ├── bindings/
│   │       ├── controllers/
│   │       └── views/
│   │           └── widgets/
│   │
│   └── routes/                  # Navigation
│       ├── app_pages.dart       # Route definitions
│       └── app_routes.dart      # Route constants
│
└── main.dart                    # App entry point
```

## 🎨 Features

### Splash Screen
- Animated logo display
- Slide-up login form animation
- Smooth transitions

### Home Page (1st Page)
- **Navigation Button**: Navigate to 2nd page
- **Statistics Cards**: 
  - Live AC Power
  - Plant Generation
  - Live PR
  - Cumulative PR
  - Return (PV in hours)
  - Total Energy
- **Weather Card**: Current weather information
- **Data Table**: Energy data visualization
- **Info Cards**: System specifications
- **Inverter Cards**: Real-time inverter monitoring

### Second Page (Data Visualization)
- **Tab Navigation**: Summary, SLD, Data tabs
- **Electricity Chart**: 
  - Circular progress indicator
  - Total power display (5.53 kw)
  - Visual representation with gradient colors
- **Source/Load Toggle**: Switch between data views
- **Scrollable Data Views**:
  - Custom scrollbar with blue gradient
  - Three data cards (Data View, Data Type 2, Data Type 3)
  - Active/Inactive status indicators
  - Gradient backgrounds
  - Real-time data display
- **Action Buttons**:
  - Analysis Pro
  - G. Generator
  - Plant Summary
  - Natural Gas
  - D. Generator
  - Water Process

## 🛠️ Technologies & Packages

### Core Dependencies
- **Flutter SDK**: ^3.10.0
- **GetX** (^4.6.6): State management, routing, and dependency injection
- **flutter_screenutil** (^5.9.3): Responsive UI design

### Key Features
- **State Management**: GetX reactive programming
- **Navigation**: GetX named routes
- **Responsive Design**: Adaptive layouts for all screen sizes
- **Custom Widgets**: Reusable, modular components
- **Asset Management**: Organized icons and images

## 📦 Project Structure Details

### Modules

#### 1. Splash Module
- **Controller**: Manages login form animation state
- **View**: Splash screen with animated login form
- **Widgets**: 
  - `splash_logo_section.dart`: Logo display
  - `login_form_widget.dart`: Animated login form

#### 2. Home Module
- **Controller**: Manages home page state
- **View**: Main dashboard with statistics
- **Widgets**:
  - `stat_card.dart`: Statistics display cards
  - `weather_card.dart`: Weather information
  - `data_table_widget.dart`: Data table
  - `info_card.dart`: Information cards
  - `inverter_card.dart`: Inverter monitoring cards

#### 3. Second Page Module
- **Controller**: Manages tab selection and data state
- **View**: Data visualization page
- **Widgets**:
  - `navigate_button_widget.dart`: Navigation button
  - `tab_bar_widget.dart`: Custom tab bar (Summary/SLD/Data)
  - `electricity_chart_widget.dart`: Circular chart
  - `source_load_tabs_widget.dart`: Source/Load toggle
  - `electricity_section_widget.dart`: Complete electricity section
  - `data_view_card.dart`: Individual data card with gradient
  - `data_views_section_widget.dart`: Scrollable data section
  - `action_button_widget.dart`: Action button with icon
  - `action_buttons_section_widget.dart`: Grid of action buttons

## 🎯 Design Patterns

### 1. **MVC Pattern with GetX**
- **Model**: Data structures (implicit in controllers)
- **View**: UI components (StatelessWidget/StatefulWidget)
- **Controller**: Business logic (GetxController)

### 2. **Dependency Injection**
- Bindings for each module
- Lazy loading of controllers
- Automatic disposal

### 3. **Widget Composition**
- Small, reusable widgets
- Single responsibility principle
- Easy to test and maintain

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.10.0 or higher)
- Dart SDK (3.10.0 or higher)
- Android Studio / VS Code
- Android SDK / Xcode (for iOS)

### Installation

1. **Clone the repository**
```bash
git clone <repository-url>
cd practical_flutter_development_task
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run the app**
```bash
flutter run
```

### Using FVM (Flutter Version Management)

If you're using FVM:

```bash
# Install FVM version
fvm install 3.38.5

# Use FVM version
fvm use 3.38.5

# Run with FVM
fvm flutter pub get
fvm flutter run
```

## 📱 Supported Platforms

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 🎨 UI/UX Features

### Design Elements
- **Color Scheme**: 
  - Primary: Cyan (#00BCD4)
  - Background: Light Grey (#F5F5F5)
  - Cards: White with gradients
  - Text: Black87, Grey shades

### Responsive Design
- Adaptive layouts using flutter_screenutil
- Design size: 375x812 (iPhone X)
- Scales proportionally on all devices

### Animations
- Smooth page transitions (Fade)
- Animated login form (Slide up)
- Tab switching animations
- Scroll animations

### Custom Components
- Gradient backgrounds on cards
- Custom scrollbar with blue thumb
- Rounded corners and shadows
- Icon-text combinations
- Status indicators (Active/Inactive)

## 📂 Assets

### Icons
Located in `assets/icons/`:
- Data view icons (data_view.png, data_type_2.png, data_type_3.png)
- Action button icons (analysis_pro.png, g.generator.png, etc.)
- Statistics icons (power.png, plant.png, live_pr.png, etc.)

### Images
Located in `assets/images/`:
- Additional images as needed

## 🔧 Configuration

### Theme Configuration
- Light theme with custom colors
- Dark theme support
- System theme mode detection

### Screen Util Configuration
```dart
ScreenUtilInit(
  designSize: const Size(375, 812),
  minTextAdapt: true,
  splitScreenMode: true,
  ...
)
```

## 🧪 Testing

Run tests:
```bash
flutter test
```

## 📝 Code Quality

### Linting
- Uses `flutter_lints: ^6.0.0`
- Follows Flutter style guide
- Clean code principles

### Best Practices
- Null safety enabled
- Const constructors where possible
- Proper widget disposal
- Memory leak prevention

## 🔄 State Management Flow

```
User Action → Controller Method → Update State → UI Rebuilds
```

Example:
```dart
// User taps tab
onTap: () => controller.changeTab('Summary')

// Controller updates state
void changeTab(String tab) {
  selectedTab.value = tab; // Reactive update
}

// UI automatically rebuilds
Obx(() => Text(controller.selectedTab.value))
```

## 🌐 Navigation Flow

```
Splash Screen → Home Page ⇄ Second Page
```

- Initial route: `/splash`
- Named routes with GetX
- Smooth transitions

## 📊 Data Flow

### Second Page Data Flow
1. User selects tab (Summary/SLD/Data)
2. Controller updates selected tab
3. UI shows corresponding content
4. User toggles Source/Load
5. Data view updates accordingly
6. Scrollable list shows filtered data

## 🎯 Key Learnings

This project demonstrates:
- ✅ Clean architecture with GetX
- ✅ Modular code organization
- ✅ Responsive UI design
- ✅ Custom widget creation
- ✅ State management best practices
- ✅ Navigation patterns
- ✅ Asset management
- ✅ Theme configuration
- ✅ Code reusability

## 🤝 Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is created for practical Flutter development demonstration purposes.

## 👨‍💻 Developer Notes

### Performance Optimizations
- Lazy loading of controllers
- Const constructors for static widgets
- Efficient state updates with GetX
- Image caching
- Widget tree optimization

### Future Enhancements
- [ ] Add API integration
- [ ] Implement real-time data updates
- [ ] Add more chart types
- [ ] Implement data filtering
- [ ] Add user authentication
- [ ] Implement offline mode
- [ ] Add unit tests
- [ ] Add integration tests

## 📞 Support

For issues and questions, please create an issue in the repository.

---

**Built with ❤️ using Flutter & GetX**
