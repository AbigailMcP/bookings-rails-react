import React from 'react'
import styled from 'styled-components'

const Header = styled.div`
  font-size: 18px;
  color: blue;
`

const Div = styled.div`
  display: flex;
  flex-direction: column;
  border: solid 1px blue;
  padding: 5px;
  margin: 5px;
`

const Text = styled.div`
  font-size: 13px;
`

// An individual bookings card, containing information about the booking.
export default function BookingItem(
  { booking: { id, description, start_date, end_date } }
) {
  return (
    <Div key={id}>
      <Header>{description}</Header>
      <Text>Start date: {start_date}</Text>
      <Text>End date: {end_date}</Text>
    </Div>
  )
}