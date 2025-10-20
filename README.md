
# 🖼️ Screenshot OCR Shortcut Tool

A simple and fast **Bash script** that lets you **take a screenshot**, **extract text using OCR (Tesseract)**, **copy it to your clipboard**, and **auto-clean temporary files** — all with a single keyboard shortcut! ⚡

---

## 🚀 Features

✅ Take a screenshot of a selected area  
✅ Perform **OCR (Optical Character Recognition)** using **Tesseract**  
✅ Automatically **copy extracted text to the clipboard**  
✅ Automatically **delete temporary files** (screenshot + text)  
✅ Optional **desktop notification** for confirmation  
✅ Works perfectly with **Ubuntu GNOME** and **Wayland/X11**

---

## 🛠️ Requirements

Make sure the following are installed:

```bash
sudo apt update
sudo apt install gnome-screenshot tesseract-ocr xclip libnotify-bin
````

---

## ⚙️ Setup Instructions

1. **Clone this repository:**

   ```bash
   git clone https://github.com/<your-username>/screenshot-ocr-shortcut.git
   cd screenshot-ocr-shortcut
   ```

2. **Make the script executable:**

   ```bash
   chmod +x screenshot_ocr.sh
   ```

3. **Move it to a global path (optional):**

   ```bash
   sudo mv screenshot_ocr.sh /usr/local/bin/screenshot-ocr
   ```

4. **Create a folder for screenshots (if not auto-created):**

   ```bash
   mkdir -p ~/Pictures/Screenshots
   ```

5. **Add a keyboard shortcut:**

   * Open **Settings → Keyboard → Shortcuts → Custom Shortcuts**
   * Click **“+”** to add a new shortcut
   * **Name:** Screenshot OCR
   * **Command:** `/usr/local/bin/screenshot-ocr` (or full path to your script)
   * **Shortcut:** Choose something like `Ctrl + Alt + S`

---

## 🧠 How It Works

1. Takes a screenshot of a **selected area**
2. Runs **Tesseract OCR** to extract text
3. Copies the text directly to your clipboard using **xclip**
4. Deletes both the screenshot and text file
5. Optionally, shows a desktop notification confirming success ✅

---

## 🧩 Example Use Case

📸 Take a screenshot of:

* Error messages
* Console output
* Code snippets
* PDF sections that aren’t selectable

👉 Instantly paste the extracted text anywhere (`Ctrl + V`).

---

## 🧑‍💻 Author

**Ritabrato Pani**
💻 Software & Web Developer
🔗 [GitHub Profile](https://github.com/rjkrishna29)

---

## 🪪 License

This project is licensed under the **MIT License** — you are free to use, modify, and share it.

---

## ⭐ Contribute

If you’d like to improve or extend this tool:

1. Fork the repo
2. Create a feature branch (`git checkout -b feature-name`)
3. Commit your changes
4. Push to your fork and open a Pull Request 🎉

---

> 💡 *A productivity booster for developers — extract text instantly from any screen!*

```

---

Would you like me to **add a GitHub-style badge section** at the top (like “Made with Bash”, “License: MIT”, etc.) to make it look even more polished?
```
