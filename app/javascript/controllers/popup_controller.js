var popup = document.createElement('div');
popup.innerHTML = '<div style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0,0,0,0.5); z-index: 1000;"><div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; padding: 20px; border-radius: 5px;"><h1>Hello World</h1><p>This is a popup.</p><button onclick="document.body.removeChild(this.parentNode.parentNode);">Close</button></div></div>';
document.body.appendChild(popup);
