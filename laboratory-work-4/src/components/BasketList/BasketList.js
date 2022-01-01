import React, {useState, useEffect} from 'react';
import './BasketList.css';

import {useSelector, useDispatch} from 'react-redux';

import {Typography, Table, Space, Button} from 'antd';
import {
  removeFromBasketList as removeAction,
  increaseProductAmount as increaseAction,
  decreaseProductAmount as decreaseAction,
} from '../../redux/basketList/actions';

const BasketList = () => {
  const [height, setHeight] = useState(0);
  useEffect(() => {
    setHeight(document.getElementsByClassName('basket-list')[0].clientHeight);
  });
  const data = useSelector((state) => state.basketList);
  const dispatch = useDispatch();

  const increaseProductAmount = ({key}) => {
    dispatch(increaseAction(key));
  };

  const decreaseProductAmount = ({key}) => {
    dispatch(decreaseAction(key));
  };

  const removeFromBasketList = ({key}) => {
    dispatch(removeAction(key));
  };

  const columns = [
    {
      title: 'Название',
      dataIndex: 'name',
      key: 'name',
      ellipsis: true,
    },
    {
      title: 'Цена за штуку',
      dataIndex: 'cost',
      key: 'cost',
      fixed: 'right',
    },
    {
      title: 'Итоговая цена',
      dataIndex: 'totalCost',
      key: 'totalCost',
      fixed: 'right',
    },
    {
      title: 'Количество',
      dataIndex: 'amount',
      key: 'amount',
      fixed: 'right',
    },
    {
      title: 'Действия',
      dataIndex: 'action',
      key: 'action',
      fixed: 'right',
      render: (text, record) => (
        <Space>
          <Button
            onClick={() => increaseProductAmount(record)}
            size="small"
          >
            +
          </Button>
          <Button
            onClick={() => decreaseProductAmount(record)}
            size="small"
          >
            -
          </Button>
          <Button
            onClick={() => removeFromBasketList(record)}
            size="small"
          >
            Удалить
          </Button>
        </Space>
      ),
    },
  ];

  return (
    <div className="basket-list">
      <Table
        columns={columns}
        dataSource={data}
        bordered={true}
        pagination={false}
        scroll={{y: height - 147}}
        summary={(pageData) => {
          let orderCost = 0;
          pageData.forEach(({totalCost}) => {
            orderCost += +totalCost;
          });
          return (
            <Table.Summary fixed>
              <Table.Summary.Row>
                <Table.Summary.Cell>Сумма заказа</Table.Summary.Cell>
                <Table.Summary.Cell>
                  <Typography.Text type="danger">{orderCost}</Typography.Text>
                </Table.Summary.Cell>
              </Table.Summary.Row>
            </Table.Summary>
          );
        }}
      />
    </div>
  );
};

export default BasketList;
