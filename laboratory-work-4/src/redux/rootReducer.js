import {combineReducers} from 'redux';
import {productListReducer} from './productList/reducer';
import {basketListReducer} from './basketList/reducer';

export const rootReducer = combineReducers({
  productList: productListReducer,
  basketList: basketListReducer,
});
