# Desqueezer

**Desqueezer** is a Lightroom plugin that batch-applies an anamorphic desqueeze factor to selected DNG files by modifying their metadata using `exiftool`.

**❗Please note: This plugin irreversibly changes the metadata. Please backup your photos before use.**

**❗FORKED NOTE: There's no implemented checks. Sh version cut out. Logs are enabled to write in scripts directory (file recreates at every run)**

![Animated logotype](https://raw.githubusercontent.com/adriankulik/Desqueezer/aacdfea07d6af846b4a4357e2cb841df042e3236/assets/Desqueezer_logo.gif)

---

## ⚙️ Prerequisites

Before running the plugin, make sure the following setup steps are completed:

### 1. Install `exiftool`

This plugin uses `exiftool` to modify DNG metadata.  
Install it via winget:

```cmd
winget install exiftool
```

### 2. Use DNG Files Only

This plugin only works on DNG files.
If your camera does not shoot in DNG format, export your photos to DNG:

1. Create a subfolder
2. Export the images as DNG

## 🧩 Installing the Plugin in Lightroom

To install **Desqueezer** in Lightroom Classic:

0. Download the newest release of this Plugin.
1. Locate or create your **Lightroom Plugins folder**. This is usually located in:
   - **Windows:** `C:\Users\<YourName>\AppData\Roaming\Adobe\Lightroom\Modules\`
2. Copy the entire `Desqueezer.lrdevplugin` folder (including all its contents) into that `Modules` directory.
3. Open Lightroom Classic.
4. Go to: `File → Plug-in Manager...`
5. Click **"Add"** (or **"Reload Plug-in"** if updating), then navigate to the `Desqueezer.lrdevplugin` folder.

6. Click **Done** when the plugin is successfully loaded.

You should now see **"Adrian Kulik Anamorphic Utilities → Desqueezer"** as an option under:

- `Library → Plug-in Extras`
- `File → Plug-in Extras`

> 💡 If you make changes to the plugin code, you can simply reload it from the Plug-in Manager.

## 🏃 Running the Plugin

![Plugin Interface showcase](https://raw.githubusercontent.com/adriankulik/Desqueezer/aacdfea07d6af846b4a4357e2cb841df042e3236/assets/Desqueezer_ui.gif)
1. Select the photos you want to desqueeze.
2. Run **"Adrian Kulik Anamorphic Utilities → Desqueezer"** by clicking one of the following options:
   - `Library → Plug-in Extras`.
   - `File → Plug-in Extras`.
3. Choose:
   - Your squeeze factor.
   - Whether the photo is shot as vertical anamorphic or not.
4. Click `Ok` and wait for the plugin to finish.
5. In the `Library` tab, navigate to `Metadata → Read Metadata from Files`.
6. Photos in the `Develop` tab are now desqueezed.

## 🚧 Next Steps / Roadmap

- [ ] **Update to the main**  
       Impliment the original repo features
       _(Currently hardcoded to `1.5x`, suitable for lenses like Blazar Remus and Atlas Mercury.)_

- [ ] **Checks**  
       Yep. It's unsafe now.  

- [ ] **Automaticaly convert RAWs into DNGs**  
       Someday definitely.

## 📄 License

Licensed under the MIT License.
Please retain original author attribution in any distributions or derivatives.

© 2025 Adrian Kulik, 2026 aninterlude
