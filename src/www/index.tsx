import React from "react";
import { createRoot } from 'react-dom/client'

const container = document.getElementById('app-root')
if (container) {
  const root = createRoot(container)
  root.render(<p>This is just a test</p>,)
}