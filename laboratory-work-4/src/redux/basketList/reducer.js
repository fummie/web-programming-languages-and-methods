import {ADD_TO_BASKETLIST} from './types';
import {REMOVE_FROM_BASKETLIST} from './types';
import {INCREASE_PRODUCT_AMOUNT} from './types';
import {DECREASE_PRODUCT_AMOUNT} from './types';

const initialState = [];

export const basketListReducer = (state = initialState, action) => {
  switch (action.type) {
    case ADD_TO_BASKETLIST: {
      const newState = [...state];
      const addedProduct = {
        ...action.product,
        amount: 1,
        totalCost: action.product.cost,
      };
      const found = newState.find(({key}) => key === addedProduct.key);
      if (found) {
        found.amount++;
        found.totalCost = found.cost * found.amount;
      }
      return found ? newState : [...state, addedProduct];
    }

    case REMOVE_FROM_BASKETLIST: {
      const newState = [...state];
      const foundIndex = newState.findIndex(({key}) => key === action.key);
      if (foundIndex !== -1) {
        newState.splice(foundIndex, 1);
      };
      return newState;
    }

    case INCREASE_PRODUCT_AMOUNT: {
      const newState = [...state];
      const found = newState.find(({key}) => key === action.key);
      if (found) {
        found.amount++;
        found.totalCost = found.cost * found.amount;
      }
      return newState;
    }

    case DECREASE_PRODUCT_AMOUNT: {
      const newState = [...state];
      const foundIndex = newState.findIndex(({key}) => key === action.key);
      if (foundIndex !== -1) {
        if (newState[foundIndex].amount > 1) {
          newState[foundIndex].amount--;
          newState[foundIndex].totalCost = newState[foundIndex].cost * newState[foundIndex].amount;
        } else {
          newState.splice(foundIndex, 1);
        }
      }
      return newState;
    }

    default: return state;
  };
};
