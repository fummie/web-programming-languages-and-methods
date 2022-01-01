import React from 'react';
import './ProductList.css';

import {useSelector, useDispatch} from 'react-redux';
import {addToBasketList as addAction} from '../../redux/basketList/actions';

import {Table, Button, Typography, Space} from 'antd';

const ProductList = () => {
  const data = useSelector((state) => state.productList);
  const dispatch = useDispatch();

  const addToBasketList = ({key, name, cost}) => {
    dispatch(addAction({key, name, cost}));
  };

  const columns = [
    {
      title: 'Название',
      dataIndex: 'name',
      key: 'name',
      ellipsis: true,
      render: (text, record) => (
        <Space>
          <Button
            onClick={() => addToBasketList(record)}
            size="small"
          >
            +
          </Button>
          <Typography.Text>{text}</Typography.Text>
        </Space>
      ),
    },
    {
      title: 'Цена',
      dataIndex: 'cost',
      key: 'cost',
    },
  ];

  return (
    <div className="product-list">
      <Table
        columns={columns}
        dataSource={data}
        bordered={true}
        tableLayout={'fixed'}
      />
    </div>
  );
};

export default ProductList;
