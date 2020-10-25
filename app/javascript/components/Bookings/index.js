import React, { useEffect, useState } from 'react'

import Form from './Form'

export default function Bookings() {
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

  const renderBooking = ({ id, description, start_date, end_date }) => {
    return (
      <div key={id}>
        <h1>{description}</h1>
        <p>{start_date}</p>
        <p>{end_date}</p>
      </div>
    )
  }

  return (
    <>
      <h1>Welcome! Look at all these bookings:</h1>
      <Form setFilter={setFilter} spaces={spaces} />
      <button onClick={() => setFilter()}>Clear filters</button>
      { filteredBookings().map(booking => renderBooking(booking)) }
    </>
  )
}