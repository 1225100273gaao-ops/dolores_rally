#!/usr/bin/env bash
set -e

mkdir -p .respaldo
cp -r lib test pubspec.yaml analysis_options.yaml README.md .gitignore .respaldo/

flutter create --project-name dolores_rally --org mx.utng --platforms=android .

rm -rf lib test
cp -r .respaldo/lib .respaldo/test .
cp .respaldo/pubspec.yaml .respaldo/analysis_options.yaml .respaldo/README.md .respaldo/.gitignore .
rm -rf .respaldo

manifest="android/app/src/main/AndroidManifest.xml"
if ! grep -q "android.permission.CAMERA" "$manifest"; then
  sed -i 's|<application|<uses-permission android:name="android.permission.CAMERA"/>\n    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>\n    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>\n    <uses-feature android:name="android.hardware.camera" android:required="false"/>\n    <application|' "$manifest"
fi

for g in android/app/build.gradle.kts android/app/build.gradle; do
  if [ -f "$g" ]; then
    sed -i 's/minSdk = flutter.minSdkVersion/minSdk = 24/; s/minSdkVersion flutter.minSdkVersion/minSdkVersion 24/' "$g"
  fi
done

mkdir -p capturas
flutter pub get
echo "Taller listo."
