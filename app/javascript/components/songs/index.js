import React, { Fragment, useState, useEffect, useRef } from 'react';
import styled from 'styled-components';
import Song from './song';
import { Button, Columns } from 'react-bulma-components';
import RecentlyPlayedService from '../../services/recently_played';

const PlaySequenceButton = styled(Button)`
  margin-top: -15px;
  margin-bottom: 20px;
`
const Songs = (props) => {
  const [songs, setSongs] = useState([]);
  const [playing, setPlaying] = useState([]);
  const AudioRef = useRef();
  const [playRandom, setPlayRandom] = useState(false);

  const NextSong = () => {
    if(playRandom) {
      let index = Math.floor(Math.random() * props.songs.length);
      setPlaying(props.songs[index]);
   } else
      setPlaying([]);
  }

  const SwitchRandom = () => {
    if(playRandom) {
      setPlayRandom(false);
      setPlaying([]);
   } else
      setPlayRandom(true);
  }

  useEffect(() => {
    if(playRandom)
      NextSong();
  }, [playRandom]);

  useEffect(() => {
    if (AudioRef.current !== null) {
      AudioRef.current.pause();
      AudioRef.current.load();
      if(playing.id) {
        AudioRef.current.play();
        RecentlyPlayedService.create(playing.album_id);
     }
   }
  }, [playing]);

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
           outlined
           onClick={() => SwitchRandom()}>
            {playRandom == true ? 'Parar de tocar' : 'Modo aleatório'}
         </PlaySequenceButton>
         <audio controls ref={AudioRef} onEnded={() => NextSong} className='is-hidden'>
           <source src={playing.file_url} />
         </audio>
       </Columns.Column>
     </Columns>
    {/* Songs :) */}
    { songs }
    </Fragment>
  );
}

export default Songs;