import React, { Fragment } from 'react';
import { Navbar, Container, Columns, Button, Dropdown } from 'react-bulma-components';
import logoImg from '../../../assets/images/logo.png';
import styled from 'styled-components';
import { useLocation } from 'react-router-dom';
import { FaUserCircle } from 'react-icons/fa';

const ColumnsFullWidth = styled(Columns)`
  width: 100%;
  padding-top: 20px;
  padding-left: 10px;
  padding-bottom: 10px;
`
const Menu = () => {

  let actionButton;

  if(useLocation().pathname == '/') {
    actionButton = <a href='/users/sign_in' className="is-pulled-right is-right">
                     <Button outlined={true} color="white">Entrar</Button>
                   </a>
  } else {
    actionButton = <Dropdown className='is-pulled-right is-right' color='dark' 
                             label={<FaUserCircle size="2em" 
                             style={{ "margin-top": 5, "padding-top": 3, "margin-right": -2,
                             "padding-bottom": 3, "padding-right": 0 }} />}>
                     <Dropdown.Item value="Editar">
                       <a href='/users/edit'>
                         Editar informações
                       </a>
                     </Dropdown.Item>
                     <Dropdown.Item value="Logout">
                       <a href='/users/sign_out'>
                         Sair
                       </a>
                     </Dropdown.Item>
                   </Dropdown>
  }

  return (
    <Fragment>
      <Navbar color="dark">
        <Container>
   		  <ColumnsFullWidth className='is-mobile'>
            <Columns.Column desktop={{size: 2}} mobile={{size: 5}}>
              <img src={logoImg} className='image'/>
            </Columns.Column>
            <Columns.Column>
              {actionButton}
            </Columns.Column>
          </ColumnsFullWidth>
        </Container>
      </Navbar>
    </Fragment>
  );
}
export default Menu;