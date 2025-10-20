# 🖼️ Screenshot OCR Shortcut Tool (Text-Extracter)

A simple and fast **Bash script** that lets you take a screenshot, extract text using **Tesseract OCR**, copy it to your clipboard, and automatically clean up temporary files — all with a single keyboard shortcut! ⚡  

---

## 🚀 Features

✅ Take a screenshot of a **selected area**  
✅ Perform **OCR (Optical Character Recognition)** using **Tesseract**  
✅ Automatically **copy extracted text** to the clipboard  
✅ Automatically **delete temporary files** (screenshot + text)  
✅ Optional **desktop notification** for success/failure  
✅ Works perfectly with **Ubuntu GNOME** (Wayland & X11)

---

## 🛠️ Requirements

Make sure these packages are installed before using the tool:

```bash
sudo apt update
sudo apt install gnome-screenshot tesseract-ocr xclip libnotify-bin
````

---

## ⚙️ Setup Instructions

### 1️⃣ Clone this repository:

```bash
git clone https://github.com/rjkrishna29/Text-Extracter.git
cd Text-Extracter
```

### 2️⃣ Make the script executable:

```bash
chmod +x tess.sh
```

### 3️⃣ (Optional) Move it to a global path:

```bash
sudo mv tess.sh /usr/local/bin/screenshot-ocr
```

### 4️⃣ Ensure your screenshots folder exists:

```bash
mkdir -p ~/Pictures/Screenshots
```

### 5️⃣ Add a custom keyboard shortcut:

* Open **Settings → Keyboard → Shortcuts → Custom Shortcuts**
* Click “➕” to add a new shortcut
* **Name:** Screenshot OCR
* **Command:** `/usr/local/bin/screenshot-ocr` *(or full path to your script)*
* **Shortcut:** Choose something like `Ctrl + Alt + S`

---

## 🧠 How It Works

1️⃣ Takes a **screenshot** of a selected area
2️⃣ Runs **Tesseract OCR** to extract text
3️⃣ Copies the extracted text to your **clipboard** using `xclip`
4️⃣ Deletes both the screenshot and text file to stay clean
5️⃣ Optionally displays a **desktop notification** confirming success ✅

---

## 🧩 Example Use Cases

📸 Perfect for quickly extracting text from:

* Error messages or popups
* Terminal or console output
* Non-selectable **PDFs** or scanned documents
* **Code snippets** during debugging

👉 After extraction, just hit **Ctrl + V** anywhere to paste the text instantly!

---

## 🧑‍💻 Author

**Ritabrato Pani**
💻 Software & Web Developer
🔗 [GitHub Profile](https://github.com/rjkrishna29)

---

## 🪪 License

This project is licensed under the **MIT License** — feel free to use, modify, and share it.

---

## ⭐ Contribute

Want to make it even better?

1. **Fork** this repository
2. Create a new branch:

   ```bash
   git checkout -b feature-name
   ```
3. **Commit** your changes
4. **Push** to your fork
5. Open a **Pull Request** 🎉

---

💡 *A simple productivity booster for developers — extract text instantly from any part of your screen!* 🚀

