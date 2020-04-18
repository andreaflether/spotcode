import Api from './api';

const RecentlyPlayedService = {
 create: (id) => Api.post(`/albums/${id}/recently_played`),
}

export default RecentlyPlayedService;