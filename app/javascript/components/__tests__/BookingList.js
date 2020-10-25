import React from 'react';
import renderer from 'react-test-renderer';
import BookingList from '../BookingList';

it('renders correctly', () => {
  const tree = renderer.create(<BookingList />).toJSON();
  expect(tree).toMatchSnapshot();
});