import React, { useEffect, useState } from 'react'
import styled from 'styled-components'
import BookingItem from './BookingItem'
import Filter from './Filter'

const Div = styled.div`
  display: flex;
  flex-direction: column
`

const Row = styled.div`
  display: flex;
`

const Title = styled.div`
  font-size: 24px;
  font-weight: bold;
  padding-bottom: 10px;
`

const Button = styled.button`
  width: 100px;
  background: white;
`

// The main bookings page, containing a filterable list of bookings.
export default function BookingList() {
  const [data, setData] = useState({});
  const [filter, setFilter] = useState();
  
  useEffect(() => {
    fetch('/api/v1/bookings.json')
      .then(response => { return response.json() })
      .then(data => { setData(data) });
  }, [])

  const { bookings, spaces } = data;

  if (!bookings) return <p>Loading...</p>;

  const filteredBookings = () => {
    if (!filter) return bookings;
    return bookings.filter(b => b.space_id === parseInt(filter, 10));
  }

  return (
    <Div>
        <Title>Welcome! Look at all these bookings:</Title>
      <Row>
        <Filter setFilter={setFilter} spaces={spaces} />
        <Button onClick={() => setFilter()}>Clear filters</Button>
      </Row>
      { filteredBookings().map(booking => 
        <BookingItem key={booking.id} booking={booking} />
      )}
    </Div>
  )
}