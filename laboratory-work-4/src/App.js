import React from 'react';
import './App.css';

import Title from './components/UI/Title';
import AddProduct from './components/AddProduct';
import ProductList from './components/ProductList';
import BasketList from './components/BasketList/BasketList';

const App = () => {
  return (
    <div className="app">
      <div className="product-list-panel">
        <Title offset={5} level={5} text={'Добавить товар:'} />
        <AddProduct />
        <ProductList />
      </div>
      <div className="basket-list-panel">
        <Title offset={0} level={5} text={'Корзина:'} />
        <BasketList />
      </div>
    </div>
  );
};

export default App;
