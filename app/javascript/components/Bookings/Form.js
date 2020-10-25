import React, { useState } from 'react'

export default function Form({ setFilter, spaces }) {
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
        {spaces.map(({id, name}) => <option key={id} value={id}>{name}</option>)}       
      </select>
     <button>Submit</button>
    </form>
  )
}