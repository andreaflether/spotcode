import React, { Fragment } from 'react';
import styled from 'styled-components';
import Song from './song';
import { Button, Columns } from 'react-bulma-components';

const PlaySequenceButton = styled(Button)`
  margin-top: -15px;
  margin-bottom: 20px;
`

const Songs = (props) => {
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
    <Song/>
     <Song/>
     <Song/>
    </Fragment>
  );
}

export default Songs;