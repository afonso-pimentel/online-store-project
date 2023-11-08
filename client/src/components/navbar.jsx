import React from "react";
import { Link } from "react-router-dom";
import { ShoppingCart, User, Package, House } from "phosphor-react";
import "./navbar.css";
export const Navbar = () => {
  return (
    <div className="navbar">
      <div>
        <Link to="/" className="links">
          <House size={32} />
        </Link>
        <Link to="/customer" className="links">
          <User size={32} />
        </Link>
        <Link to="/orders" className="links">
          <Package size={32} />
        </Link>
        <Link to="/cart" className="links">
          <ShoppingCart size={32} />
        </Link>
      </div>
    </div>
  );
};
