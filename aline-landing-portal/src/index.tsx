import React from "react";
import { createRoot } from "react-dom/client"; // Import createRoot
import "./index.sass";
import App from "./App";
import reportWebVitals from "./reportWebVitals";

// Use createRoot to create a root container instance
const container = document.getElementById("root"); // Ensure 'root' exists in your HTML
const root = createRoot(container!); // Create a root.

// Initial render: Render your app to the root.
root.render(
    <React.StrictMode>
        <App />
    </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
