# 聲明
### 任何人都可免費使用，但嚴禁以此牟利收費。
### 尤其是蘋果地帶論壇，不可使用，[詳細見此](garbage.md)。
# LG-Gram-13z980-OpenCore
![Hackintosh](Images/os.png)
-
### 前言
基本上就是利用空閒時間進行，主要目的是學習 Hackintosh 的原理跟相關的知識。  
有任何的問題或建議都可以發 Issue 或者 pull request。
### 詳細資訊
+ 系統版本 ： macOS Catalina 10.15.5
+ OpenCore版本 : 0.5.9
+ 產品名稱 ： 13z980-A.AAS5U1
+ BIOS 版本： K22C0254 X64
+ CPU型號 ： Intel i5-8250U
+ GPU型號 ： UHD Graphics 620
+ 記憶體 ： OnBoard 4G + 4G DDR4 2400MHz
+ SSD硬碟 ： ADATA SX8200PNP NVME SSD 256G
+ 內建音效卡 ： Conexant CX8200
+ 無線網卡 ： Intel AC8265 (BCM94360CS2)

### 事前準備
+ 修改 BIOS 設定 (開機時按下F2進入 BIOS 後，Ctrl + Alt + F7 開啟 BIOS 隱藏選項， 感謝 **as695336480** 提供：[出處](https://github.com/capricornlee/LG-Gram13-Z990/issues/7#issue-624133249))   
+ 以下由 **linGinc** 整理提供，感謝！
	1. BIOS-Main-Boot Features: **CMS Support [No]**, **Fast Boot [Disabled]**
	2. BIOS-Advanced-Intel Advanced Menu-Power&Performance-CPU Power Management Control: **CFG Lock [Disabled]**
	3. BIOS-Advanced-System Agent(SA) Configuration: **VT-d [Disabled]**,  **Above 4GB MMIO BIOS assignment [Enabled]**
	4. BIOS-Advanced-System Agent(SA) Configuration-Graphics Configuration: **DVMT Pre-Allocated [64M]**
	
### 目前狀況
	這部分大概列出一些大家可能比較關心的項目，沒有特別提到的部分應該就是可以正常使用。
+ FN 快捷鍵
	1. 亮度調節 FN + F2, FN + F3 正常
	2. 睡眠開關 FN + F4 正常。
	3. 觸控板開關 FN + F5 正常，指示燈也正常。
	4. 鍵盤燈開關 FN + F8 正常
	5. 音量控制 FN + F10, FN + F11, FN + F12 正常
	6. FN + F1 設定為 F17 (自行用第三方軟體或者偏好設定為**系統偏好設定**開關)
	7.  FN + F6 設定為 F19 (自行用第三方軟體或者偏好設定為**無線網卡**開關)
	8.  FN + F7 設定為 F16 (自行用第三方軟體或者偏好設定為**多螢幕**開關)
	9.  FN + F9 設定為 F18 (自行用第三方軟體或者偏好設定為**夜覽模式**開關) 
	10. FN + PrtSc (ScrLk) 目前尚未綁定功能
	11.  PrtSc 設定為系統 F13 (自行用第三方軟體或者偏好設定為**全螢幕截圖**) 
+ 觸控板正常，使用 [VoodooI2C](https://github.com/VoodooI2C/VoodooI2C) 驅動 (自行編譯了延長Timeout時間的版本，解決偶爾開機無法正常載入問題)。
+ 觸控螢幕失效，目前嘗試屏蔽原有 ACPI 中的 TPL裝置，定製一個新的TPX裝置使用，待修復。
+ 讀卡機正常，使用 **cholonam** 修改過後 [Sinetek-rtsx](https://github.com/cholonam/Sinetek-rtsx)版本。
+ 內建藍芽可用，使用 [IntelBluetoothFirmware](https://github.com/zxystd/IntelBluetoothFirmware) ，有 [相關資訊](https://github.com/daliansky/XiaoMi-Pro-Hackintosh/wiki/Work-Around-with-Bluetooth) 指出有導致睡眠相關問題，已使用自己修正後的版本，目前[測試沒有問題](https://github.com/zxystd/IntelBluetoothFirmware/issues/127#issuecomment-648935657)。
+ 內建無線網卡失效，目前在各方都有一些對於 Intel Wifi 網卡的嘗試 ( [itlwm](https://github.com/zxystd/itlwm), [AppleIntelWifi](https://github.com/AppleIntelWifi/adapter) )，不過都還達不到可以正常使用的階段，目前建議先以第二個M2插槽轉接 BCM94360CS2 免驅卡使用。
+ 睡眠 / 喚醒，測試正常，睡眠狀況下觀察耗電量也是極低。
+ Hdmi 與耳機輸出都正常，也支援多螢幕顯示，有使用者回饋在外接解析度2k以上螢幕會有紫屏問題。
+ USB & Type-C 正常(沒有定製 USB，目前使用上似乎也沒有問題)。
+ 指紋失效，待研究。

### 參考
![CPU](Images/cpu.png)
![GPU](Images/gpu.png)

### 致謝
+ [OC-little](https://github.com/daliansky/OC-little) 提供了非常多SSDT修正的參考。
+ [OpenCore-Desktop-Guide](https://dortania.github.io/OpenCore-Desktop-Guide/) Opencore 設定相關參考。
+ [ShiningXu](https://github.com/ShiningXu/LG-Gram-macOS) LG Gram hackintosh 啟發。
+ [電池顯示修正教學](https://xstar-dev.github.io/hackintosh_advanced/Guide_For_Battery_Hotpatch.html#%E5%89%8D%E8%A8%80)
+ [Sukka](https://blog.skk.moe/post/ssdt-map-fn-shortcuts/) FN Key 修正教學。
+ 當然還有 [acidanthera](https://github.com/acidanthera) Opencore團隊。
+ 若有遺漏煩請見諒。