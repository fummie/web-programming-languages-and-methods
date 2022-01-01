import React from 'react';
import './Title.css';

import {Typography, Row, Col} from 'antd';

const Title = ({offset, level, text}) => {
  return (
    <Row>
      <Col offset={offset}>
        <Typography.Title level={level}>
          {text}
        </Typography.Title>
      </Col>
    </Row>
  );
};

export default Title;
