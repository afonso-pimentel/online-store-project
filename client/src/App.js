import "./App.css";
import * as React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import { Navbar } from "./components/navbar";

export default function App() {
  return (
    <div className="App">
      <Router>
        <Navbar />
        <Routes>
          <Route path="/" />
          <Route path="/customer" />
          <Route path="/orders" />
          <Route path="/cart" />
        </Routes>
      </Router>
    </div>
  );
}
