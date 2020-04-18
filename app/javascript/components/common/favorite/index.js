import React, { Fragment, useState } from 'react';
import { FaRegHeart, FaHeart } from 'react-icons/fa';
import FavoritesService from '../../../services/favorites';

const Favorite = (props) => {
  const [fav, setFav] = useState(props.fav);

  let FavButton;
  if(fav)
    FavButton = <FaHeart size='25px' className='has-text-white' onClick={() => unfavorite()}/>
  else
    FavButton = <FaRegHeart size='25px' className='has-text-white' onClick={() => favorite()}/>

    async function unfavorite() {
      await FavoritesService.delete(props.kind, props.id);
      setFav(false);
    }

    async function favorite() {
      await FavoritesService.create(props.kind, props.id);
      setFav(true);
    }

    return (
      <Fragment>
        { FavButton }
      </Fragment>
    );
  }

export default Favorite;