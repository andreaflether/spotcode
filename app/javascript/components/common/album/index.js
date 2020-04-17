import React, {Fragment} from 'react';
import styled from 'styled-components';
import { Image, Heading } from 'react-bulma-components';
import { Link } from 'react-router-dom';

const divSpaced = styled.div`
  margin-top: 10px;
`

const Album = (props) => {
  return(
    <Link to={`/album/${props.id}`}>
    <Image src={props.cover_url} />
      <divSpaced>
        <Heading size={6} className='has-text-white' style={ { "margin-top": "7px" }}>{props.title}</Heading>
        <Heading size={6} className='has-text-white' subtitle>{props.artist_name}</Heading>
      </divSpaced>
    </Link>
  );
}

export default Album;