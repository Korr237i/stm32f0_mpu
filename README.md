# STM32F0 MPU
### STM32F0 project based on [DREC course](https://github.com/edosedgar/stm32f0_ARM).
The idea of the project is to get data from MPU9255 IMU and use [Sebastian Madgwick's algorithm](http://x-io.co.uk/res/doc/madgwick_internal_report.pdf) with quaternions to plot device's orientation.

## Folders
Source folder includes needed files for stm32f0 and source code of the project.

GCS folder - ground control system that allows you to plot graphs and device's orientation (made by [dll31](https://github.com/dll31)).

## GCS installation in PyCharm.
1. Move to gcs folder
2. Make `pip install -r requirements.txt`
3. Make gcs directory "source root" (PyCharm)
4. Open `main.py` and run it
1111
