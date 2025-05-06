# Technical Context

## Technologies Used

### Core Technologies
- **ReScript 11**: Type-safe language that compiles to JavaScript
- **React 18**: UI component library
- **@rescript/react**: ReScript bindings for React
- **@rescript/core**: Core utilities for ReScript
- **Vite 5**: Build tool and development server

### Design System
- **@vinitjuspay/design-system (v0.1.19)**: JusPay's design system components
- **@radix-ui/react-tabs**: Accessible tab components used by the design system

### Styling
- **Tailwind CSS 3**: Utility-first CSS framework
- **PostCSS**: CSS transformation tool
- **Autoprefixer**: PostCSS plugin to add vendor prefixes

## Development Setup
- ReScript compilation with watch mode (`npm run res:dev`)
- Vite development server with fast refresh (`npm run dev`)
- ES modules (ReScript code compiled to `.res.mjs` files)

## Technical Constraints
- Must maintain compatibility with the design system version
- Need to create proper ReScript bindings for JavaScript components
- Should follow ReScript best practices for type safety
- Must ensure design system components are used as intended

## Dependencies
- All JavaScript dependencies are managed through npm
- ReScript dependencies are managed through ReScript's own package manager
- The design system package is the primary external dependency
- Radix UI components are used for accessibility-focused primitives

## Project Structure
- `/src`: Main source code
  - `.res` files: ReScript source code
  - `.resi` files: ReScript interface files
  - `.res.mjs` files: Compiled JavaScript output
  - `/bindings`: ReScript bindings to JavaScript libraries
- `/public`: Static assets
- Configuration files in the project root
  - `rescript.json`: ReScript configuration
  - `vite.config.js`: Vite configuration
  - `tailwind.config.cjs`: Tailwind configuration

## Build and Deployment
- Development build with `npm run dev`
- Production build with `npm run build`
- Preview production build with `npm run preview` 