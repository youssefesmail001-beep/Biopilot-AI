# Architecture decision record — initial

- Shared application UI: Flutter/Dart with Material 3 dark navy visual identity.
- Separate feature modules for home, library, assistant, exams and settings.
- Target Android first; plan iOS as a separate native build; no iOS compatibility claim yet.
- Offline local inference candidate: llama.cpp native C++ bridge (not integrated).
- Future retrieval: SQLite full-text and vector search (not integrated).
- Future OCR: bundled, device-local text recognition (not integrated).
- No cloud AI endpoint or account required by the starter.
- 0.1.0 is a navigation-shell milestone, not a working AI assistant.
