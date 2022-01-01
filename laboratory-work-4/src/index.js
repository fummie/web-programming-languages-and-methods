import React from 'react';
import {render} from 'react-dom';
import {store} from './redux/store.js';
import {Provider} from 'react-redux';
import 'antd/dist/antd.css';
import './index.css';
import App from './App';

render(
    <React.StrictMode>
      <Provider store={store}>
        <App />
      </Provider>
    </React.StrictMode>,
    document.getElementById('root'),
);
