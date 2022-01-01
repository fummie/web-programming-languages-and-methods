import React from 'react';
import './AddProduct.css';

import {useDispatch} from 'react-redux';
import {addToProductList} from '../../redux/productList/actions';

import {Form, Input, Button, InputNumber} from 'antd';

const AddProduct = () => {
  const dispatch = useDispatch();

  const leftSpan = 5;
  const rightSpan = 24 - leftSpan;

  const generateKey = (name, cost) => {
    return `${name}_${cost}`;
  };

  const onFinish = ({name, cost}) => {
    const key = generateKey(name, cost);
    dispatch(addToProductList({key, name, cost}));
  };

  const onFinishFailed = (errorInfo) => {
    console.warn(errorInfo);
  };

  return (
    <div className="add-product">
      <Form
        name="basic"
        labelCol={{
          span: leftSpan,
        }}
        wrapperCol={{
          span: rightSpan,
        }}
        initialValues={{
          remember: true,
        }}
        onFinish={onFinish}
        onFinishFailed={onFinishFailed}
        autoComplete="off"
      >

        <Form.Item
          label="Название"
          name="name"
          rules={[
            {
              required: true,
              message: 'Введите название товара!',
            },
          ]}
        >
          <Input />
        </Form.Item>

        <Form.Item
          label="Цена"
          name="cost"
          rules={[
            {
              required: true,
              message: 'Введите цену товара!',
            },
          ]}
        >
          <InputNumber
            style={{width: '100%'}}
            type="number"
            min={0}
          />
        </Form.Item>

        <Form.Item
          wrapperCol={{
            offset: leftSpan,
            span: rightSpan,
          }}
        >
          <Button type="primary" htmlType="submit">
            Добавить
          </Button>
        </Form.Item>
      </Form>
    </div>
  );
};

export default AddProduct;
