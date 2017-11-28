Device configuration for the Samsung Galaxy J7-Pro 2017

Copyright (C) 2017 The LineageOS Project
Copyright (C) 2017 Valera Chigir <valera1978@tut.by>
Copyright (C) 2017 Yukick1117 <github.com/yukick1117>

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

------------------------------------------------------------------

* Description

  This repository is for LineageOS on Samsung Galaxy J7-Pro 2017 (j7y17lte)

* How To Build LineageOS for Samsung Galaxy J7-Pro 2017

  - Make a workspace

mkdir cm14
cd cm14

  - Do repo init & sync

repo init -u git://github.com/LineageOS/android.git -b cm-14.1

  - Create .repo/local_manifests/roomservice.xml with the following content:

```
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="LineageOS/android_external_stlport" path="external/stlport" remote="github" />
  <project name="LineageOS/android_hardware_samsung" path="hardware/samsung" remote="github" />
  <project name="LineageOS/android_hardware_samsung_slsi-cm_exynos5" path="hardware/samsung_slsi-cm/exynos5" remote="github" />
  <project name="LineageOS/android_hardware_samsung_slsi-cm_openmax" path="hardware/samsung_slsi-cm/openmax" remote="github" />
</manifest>
```

repo sync

  - Copy proprietary vendor files

  There are two options to to that. Connect your device with adb enabled and run:

./extract-files.sh

  Or if you have the system image unpacked on your disk, then simply run:

    STOCK_ROM_DIR=/path/to/system ./extract-files.sh

  - Setup environment

. build/envsetup.sh

  - Build cm14

brunch j7y17lte
