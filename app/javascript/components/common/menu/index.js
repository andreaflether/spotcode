import React, { Fragment } from 'react';
import { Navbar, Container, Columns, Button } from 'react-bulma-components';
import logoImg from '../../../assets/images/logo.png';
import styled from 'styled-components';

const ColumnsFullWidth = styled(Columns)`
  width: 100%;
  padding-top: 20px;
  padding-left: 10px;
  padding-bottom: 10px;
`
const Menu = () => {
  return (
    <Fragment>
      <Navbar color="dark">
        <Container>
   		  <ColumnsFullWidth className='is-mobile'>
            <Columns.Column desktop={{size: 2}} mobile={{size: 5}}>
              <img src={logoImg} className='image'/>
            </Columns.Column>
            <Columns.Column>
              <a href='/users/sign_in' className="is-pulled-right is-right">
                <Button outlined={true} color="white">Entrar</Button>
              </a>
            </Columns.Column>
          </ColumnsFullWidth>
        </Container>
      </Navbar>
    </Fragment>
  );
}
export default Menu;