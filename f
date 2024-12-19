<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auto Clicker</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        button {
            font-size: 20px;
            padding: 10px 20px;
            margin: 10px;
        }
    </style>
</head>
<body>
    <h1>Auto Clicker</h1>
    <button id="target-button">Click Me!</button>
    <p>Click count: <span id="click-count">0</span></p>
    <button id="start-button">Start Auto Clicker</button>
    <button id="stop-button">Stop Auto Clicker</button>

    <!-- Button to trigger download -->
    <button id="download-button">Download HTML File</button>

    <script>
        let clickCount = 0;
        let autoClickerInterval;

        // Update click count
        const updateClickCount = () => {
            clickCount++;
            document.getElementById("click-count").textContent = clickCount;
        };

        // Start auto-clicker
        document.getElementById("start-button").addEventListener("click", () => {
            if (!autoClickerInterval) {
                autoClickerInterval = setInterval(() => {
                    document.getElementById("target-button").click();
                }, 10); // 10ms between clicks
            }
        });

        // Stop auto-clicker
        document.getElementById("stop-button").addEventListener("click", () => {
            clearInterval(autoClickerInterval);
            autoClickerInterval = null;
        });

        // Simulate button click
        document.getElementById("target-button").addEventListener("click", updateClickCount);

        // Trigger download of HTML file
        document.getElementById("download-button").addEventListener("click", () => {
            const htmlContent = `
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auto Clicker</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        button {
            font-size: 20px;
            padding: 10px 20px;
            margin: 10px;
        }
    </style>
</head>
<body>
    <h1>Auto Clicker</h1>
    <button id="target-button">Click Me!</button>
    <p>Click count: <span id="click-count">0</span></p>
    <button id="start-button">Start Auto Clicker</button>
    <button id="stop-button">Stop Auto Clicker</button>

    <script>
        let clickCount = 0;
        let autoClickerInterval;

        const updateClickCount = () => {
            clickCount++;
            document.getElementById("click-count").textContent = clickCount;
        };

        document.getElementById("start-button").addEventListener("click", () => {
            if (!autoClickerInterval) {
                autoClickerInterval = setInterval(() => {
                    document.getElementById("target-button").click();
                }, 10);
            }
        });

        document.getElementById("stop-button").addEventListener("click", () => {
            clearInterval(autoClickerInterval);
            autoClickerInterval = null;
        });

        document.getElementById("target-button").addEventListener("click", updateClickCount);
    </script>
</body>
</html>
            `;

            // Create a Blob from the HTML content
            const blob = new Blob([htmlContent], { type: 'text/html' });

            // Create an anchor element
            const link = document.createElement("a");

            // Create a URL for the Blob and set it as the href for the anchor
            link.href = URL.createObjectURL(blob);

            // Set the name of the file that will be downloaded
            link.download = "auto_clicker.html";

            // Programmatically click the link to trigger the download
            link.click();
        });
    </script>
</body>
</html>
