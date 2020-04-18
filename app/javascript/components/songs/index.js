import React, { Fragment, useState, useEffect } from 'react';
import styled from 'styled-components';
import Song from './song';
import { Button, Columns } from 'react-bulma-components';

const PlaySequenceButton = styled(Button)`
  margin-top: -15px;
  margin-bottom: 20px;
`
const Songs = (props) => {
  const [songs, setSongs] = useState([]);
  const [playing, setPlaying] = useState([]);

  useEffect(() => {
    setSongs(props.songs.map((song, key) =>
     <Song
       song={song}
       playing={playing.id == song.id}
       setPlaying={setPlaying}
       key={key}
     />
  ));
  }, [props.songs, playing])

  return(
    <Fragment>
      <Columns className='is-mobile is-centered'>
       <Columns.Column desktop={{size: 3}} mobile={{size: 12}} className='has-text-centered'>
         <PlaySequenceButton
           className='is-medium'
           color='success'
           outlined>
            Ordem aleatória
         </PlaySequenceButton>
       </Columns.Column>
     </Columns>
    {/* Songs :) */}
    { songs }
    </Fragment>
  );
}

export default Songs;