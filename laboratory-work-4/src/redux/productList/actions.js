import {ADD_TO_PRODUCTLIST} from './types';

export const addToProductList = (product) => ({
  type: ADD_TO_PRODUCTLIST,
  product,
});
