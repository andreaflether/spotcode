import React, { Fragment } from 'react';
import Album from '../album';
import styled from 'styled-components';
import { Columns, Heading } from 'react-bulma-components';

const DivSpaced = styled.div`
  margin-top: 50px; 
`

const Discovery = () => {
  
  const albums_mock = [
    { id: 1, title: "Dona de Mim (Single)", artist_name: "IZA", cover_url:"/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBEdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--97f8c2eb525759fca411ebeeef5a75acadbf6203/dona_de_mim.jpg"},
    { id: 2, title: "Meu Talismã", artist_name: "IZA", cover_url: "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBFUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9d4eb9b2c21b52b40a8c5c0968a0763b0da6c01b/meu_talisma.jpg"},
    { id: 3, title: "LM5 (Deluxe)", artist_name: "Little Mix", cover_url: "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBGQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b418c9a3ee26d9053e14f3c0a4df837c864071c9/lm5.jpg"},
    { id: 7, title: "Cuz I Love You", artist_name: "Lizzo", cover_url: "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBNUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ebb14cb934f783ab813900b9127275c104d985ee/cuz_i_love_you.png"},
    { id: 11, title: "Sweet Talker", artist_name: "Jessie J", cover_url: "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBQUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--13a5d4e9e9410f0439f8e861b3289155ff63b819/sweet_talker.jpg"},
    { id: 12, title: "Lover", artist_name: "Taylor Swift", cover_url: "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBRQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--4b44d1ee97fc8514e6bec40fc993446b732089bc/lover.jpg"}
  ]

  const albums = albums_mock.map((album, key) =>
    <Columns.Column desktop={{ size: 2 }} mobile={{ size: 6 }} key={key}>
      <Album artist_name={album.artist_name} title={album.title} cover_url={album.cover_url} id={album.id}/>
    </Columns.Column>
  );

  return (
    <Fragment>
      <div>
        <Heading className='has-text-white' size={4}>
        	Tocadas recentemente
        </Heading>
        <Columns className='is-mobile'>
          {albums}
        </Columns>
      </div>
 
  	<DivSpaced>
        <Heading className='has-text-white' size={4}>
            Recomendadas
        </Heading>
        <Columns className='is-mobile'>
          {albums}
        </Columns>
    </DivSpaced>
    </Fragment>
  );
}
export default Discovery;