# Spotify-Data-Project

The data and much of the metadata from the two Daily playlists have been saved as follows:

* Master table with the playlist information is saved in `track_df.csv`
* Some of the extra artist information is saved in `track_artists.csv`
* The audio analysis data for each song in either playlist is saved in `track_songs.csv`

### Table Schemas
<br>

#### Table: track_df

|    | Column Name        | Key      |
|----|--------------------|----------|
| 1  | MasterRow          |          |
| 2  | Playlist ID        | PK       |
| 3  | Playlist Name      |          |
| 4  | Added At           |          |
| 5  | Added By           |          |
| 6  | Album              |          |
| 7  | Album ID           | PK       |
| 8  | Album Type         |          |
| 9  | Album Release Date |          |
| 10 | Artist             |          |
| 11 | Artist ID          | PK       |
| 12 | Explicit           |          |
| 13 | ISRC               |          |
| 14 | Song ID            | PK       |
| 15 | Song Title         |          |
| 16 | Song Popularity    |          |
| 17 | Duration (ms)      |          |
| 18 | Is Playable        |          |

<br>

#### Table: track_artists

|    | Column Name       | Key      |
|----|-------------------|----------|
| 1  | MasterRow         |          |
| 2  | Artist ID         | PK       |
| 3  | Artist Name       |          |
| 4  | Artist Genre      |          |
| 5  | Artist Popularity |          |
| 6  | Artist Followers  |          |

<br>

#### Table: track_songs

|    | Column Name      | Key |
|----|------------------|-----|
| 1  | MasterRow        |     |
| 2  | Song ID          | PK  |
| 3  | Danceability     |     |
| 4  | Energy           |     |
| 5  | Key              |     |
| 6  | Loudness         |     |
| 7  | Mode             |     |
| 8  | Speechiness      |     |
| 9  | Acousticness     |     |
| 10 | Instrumentalness |     |
| 11 | Liveness         |     |
| 12 | Valence          |     |
| 13 | Tempo            |     |
| 14 | Type             |     |
| 15 | Time Signature   |     |

