import {ADD_TO_BASKETLIST} from './types';
import {REMOVE_FROM_BASKETLIST} from './types';
import {INCREASE_PRODUCT_AMOUNT} from './types';
import {DECREASE_PRODUCT_AMOUNT} from './types';

export const addToBasketList = (product) => ({
  type: ADD_TO_BASKETLIST,
  product,
});

export const removeFromBasketList = (key) => ({
  type: REMOVE_FROM_BASKETLIST,
  key,
});

export const increaseProductAmount = (key) => ({
  type: INCREASE_PRODUCT_AMOUNT,
  key,
});

export const decreaseProductAmount = (key) => ({
  type: DECREASE_PRODUCT_AMOUNT,
  key,
});
