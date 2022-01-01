import {ADD_TO_PRODUCTLIST} from './types';

const initialState = [];

export const productListReducer = (state = initialState, action) => {
  switch (action.type) {
    case ADD_TO_PRODUCTLIST:
      const found = state.find((product) => {
        product.key === action.product.key;
      });
      return found ? state : [...state, action.product];
    default: return state;
  };
};
