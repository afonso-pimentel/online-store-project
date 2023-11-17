import React, { useState, useEffect } from "react";

const Home = () => {
  const [error, setError] = useState(null);
  const [isLoaded, setIsLoaded] = useState(false);
  const [products, setProducts] = useState([]);

  useEffect(() => {
    fetch("http://localhost:8080/api/products")
      .then(res => res.json())
      .then(
        data => {
          setIsLoaded(true);
          setProducts(data);
        },
        error => {
          setIsLoaded(true);
          setError(error);
        }
      );
  }, []);

  if (error) {
    return <div>Error: {error.message}</div>;
  } else if (!isLoaded) {
    return <div>Loading...</div>;
  } else {
    return (
      <ul>
        {products.map(product => (
          <li key={product.id}>
            {product.imageUrl}
            {product.name}
            {product.price}
          </li>
        ))}
      </ul>
    );
  }
};

export default Home;
