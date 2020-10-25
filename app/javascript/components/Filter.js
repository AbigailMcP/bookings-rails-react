import React, { useState } from 'react'
import styled from 'styled-components'

const Submit = styled.button`
  width: 100px;
  background: white;
`

// A select dropdown used to filter the booking list by space name.
export default function Filter({ setFilter, spaces }) {
  const [value, setValue] = useState();

  const handleChange = (event) => {
    setValue(event.target.value);
  }

  const handleSubmit = (event) => {
    event.preventDefault();
    setFilter(value);
  }

  return (
    <form onSubmit={handleSubmit}>
      <select value={value} onChange={handleChange}>
        {spaces.map(({ id, name }) =>
          <option key={id} value={id}>{name}</option>
        )}
      </select>
     <Submit>Submit</Submit>
    </form>
  )
}