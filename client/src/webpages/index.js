import * as React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import { Navbar } from "../components/navbar";

import Home from "./home";
import Product from "./product";

const Webpages = () => {
  return (
    <Router>
      <Navbar />
      <Routes>
        <Route exact path="/" element={<Home />} />
        <Route path="/product" element={<Product />} />
        <Route path="/orders" />
        <Route path="/cart" />
        <Route path="/customer" />
      </Routes>
    </Router>
  );
};

export default Webpages;
