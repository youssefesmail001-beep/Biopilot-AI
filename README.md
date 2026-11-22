# BioPilot AI — Phase 1 starter

**Status:** Functional Flutter navigation shell and GitHub Actions Android debug APK workflow. **No local model, RAG, OCR, document import or persistent library is implemented yet.** No online AI API is used.

## Repository layout

- `lib/main.dart` — app entry point
- `lib/src/app` — theme and five-tab navigation
- `lib/src/features` — independent feature modules
- `lib/src/shared` — common data
- `test` — first UI test
- `.github/workflows/android-debug.yml` — free-tier cloud Android debug build
- `docs` — technical decisions and next milestones

## Setup using GitHub only (no Android Studio)

1. Sign in to GitHub and create an **empty private** repository named `biopilot-ai`. Do not add a README or license from GitHub.
2. On your computer extract the downloaded starter ZIP. Open the repository on GitHub, choose **uploading an existing file**, and drag all extracted files/folders into the upload area. Important: some operating systems do not upload hidden `.github` folders through drag-and-drop reliably; check `.github/workflows/android-debug.yml` exists in GitHub after upload. If not, create that file via GitHub's **Add file > Create new file**, entering `.github/workflows/android-debug.yml` as the filename and pasting the supplied YAML.
3. Commit changes to `main`.
4. Open **Actions > Android Debug APK > Run workflow > Run workflow**. If Actions are disabled, enable them for this repository.
5. Once the workflow reports success, open that run's **Artifacts**, download **BioPilot-AI-Android-Debug** (ZIP), extract `app-debug.apk`, and install it on your own Android phone.
6. Confirm five tabs work. This build does **not** answer questions yet.

## Workflow technical note

To support GitHub-only onboarding, CI runs `flutter create --platforms=android ... .` to generate a temporary native Android project on the runner. The native `android/` tree is **not** yet source-controlled; before adding native AI bindings, generate, review and commit the platform folders and lock down Flutter/toolchain versions. iOS is a separate later build and requires macOS + Apple signing/testing.

## Safety and signing

Debug APK is for personal testing, **not** Play Store distribution. Do not upload personal model files or private lecture data into a public repository. Add release signing only as protected GitHub Secrets when ready.

## Next gates

1. Cloud build passes and APK installs on Samsung Galaxy S22 Ultra.
2. Native llama.cpp proof of concept runs in airplane mode.
3. Measure tokens/sec, RAM, heat and stability before choosing model.
4. Add persistent document library, OCR, local embeddings/RAG and grounded citations.
