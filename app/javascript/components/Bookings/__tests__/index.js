import React from 'react';
import renderer from 'react-test-renderer';
import Bookings from '../';

it('renders correctly', () => {
  const tree = renderer.create(<Bookings />).toJSON();
  expect(tree).toMatchSnapshot();
});