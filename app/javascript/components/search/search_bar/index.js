import React, { Fragment, useState } from 'react';
import { Form } from 'react-bulma-components';

const SearchBar = (props) => {

  const [query, setQuery] = useState("");

  const Search = (e) => {
    if (e.key === 'Enter') {
      props.fetchSearch(query);
    }
  }

  return (
    <Fragment>
      <Form.Field onKeyDown={Search}>
        <Form.Control iconRight>
          <Form.Input
          placeholder="Text input"
          placeholder='Pesquisar por álbuns, artistas ou músicas'
          style={ {"padding-top": "20px", "padding-bottom": "20px" } }
          value={query}
          onChange={e => setQuery(e.target.value)}
          />
        </Form.Control>
      </Form.Field>
    </Fragment>
  );
}

export default SearchBar;