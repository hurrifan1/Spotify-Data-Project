# Spotify-Data-Project

To grab your Spotify library and save it as a .csv file, do the following:

1. Go to [rstudio.cloud](rstudio.cloud) and sign up or log in.
2. Start a new project (it may take a few seconds to load up).
3. When it loads up, in the top-left, click 'File,' then 'New File,' then 'R Script.'
4. In a new tab, go to the [library script](https://raw.githubusercontent.com/hurrifan1/Spotify-Data-Project/master/get_spotify_library_script.R), copy everything, and then paste it on line 1 of the new R Script in the RStudio tab.
5. In a new tab, go to https://developer.spotify.com/ and login.
6. Go to the Developer documentation for the Library API [here](https://developer.spotify.com/documentation/web-api/reference/library/check-users-saved-tracks/) and then scroll down and click 'TRY IT.'
7. Click on 'GET TOKEN' and then select the first checkbox, labelled 'user-library-read,' and then click 'REQUEST TOKEN.'
8. When the page reloads, scroll down and copy everything in the 'OAuth Token' box.
9. In the RStudio tab, replace 'replace_me' on line 5 with your token. It will look similar to this:

`auth = "BQC0myVJdzycX_Wmn0CnvaC00Xsx5KyJrIsRntHBWUO0oNen0wnu-EPMR7aw0OrN9LClAVVj7h7IeHFRmH61fFA23yR0lKniDNynmBBt-1wQ6MeOhlobG0WmtzdIFdIQy9XXJLzsVtGRixl5UWHj6WRXOBxzv3p-H2SbFH6NSntDOgWy37ZjTg"`

10. Then on line 7, replace 'replace_me' with your spotify username. If you can't remember it, just open the Spotify app on your phone, tap 'Your Library' on the bottom, then tap the outline of a bald dude in the very top-left of the screen. For me, line 7 looks like this:

`your_username = "aspives"`

11. At the top of the RStudio tab, click 'Code,' then 'Run Region,' then 'Run All.'
12. After about 5-10 seconds, a .csv file should show up in the bottom-right panel. It will be called `df_library_username.csv`. Just select the box to the left of it, then click 'More' (a little bit above and to the right), then click 'Export.'
13. Download the file and send it to my email: holafake1@gmail.com.

Thanks fellas



The data and much of the metadata from the two Daily playlists have been saved as follows:

* Master table with the playlist information is saved in `track_df.csv`
* Some of the extra artist information is saved in `track_artists.csv`
* The audio analysis data for each song in either playlist is saved in `track_songs.csv`

Descriptions of each column can be found [here](https://developer.spotify.com/documentation/web-api/reference/).  

Possible data infusions:

* Weather data (Boston, Austin, Raleigh, Wilmington, ...King's Mountain?)
* Netflix watch history
* Squad reunion days


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

