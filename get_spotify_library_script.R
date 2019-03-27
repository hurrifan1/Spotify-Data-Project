# You only need to change two variables, `auth` and `your_username`.

library(httr)

auth = "replace_me"

your_username = "replace_me"


track_library = data.frame("MasterRow" = integer(), "user" = character(), "Added At" = character(), "Album" = character(), "Album ID" = character(), "Album Type" = character(), "Album Release Date" = character(), "Artist" = character(), "Artist ID" = character(), "Explicit" = character(), "ISRC" = character(), "Song ID" = character(), "Song Title" = character(), "Song Popularity" = character(), "Duration (ms)" = character(), "Is Playable" = character(), stringsAsFactors = FALSE)

offset = 0
stop = 0

while (stop == 0) {
  
  url = paste0("https://api.spotify.com/v1/me/tracks?market=US&limit=50&offset=0", offset)
  r = GET(url, add_headers("Authorization" = paste0("Bearer ", auth)))
  body = content(r, as = "parsed")
  
  for ( x in 1:length(body[["items"]]) ) {
    for (a in 1:length(body[["items"]][[x]][["track"]][["artists"]])) {
      track_library[nrow(track_library)+1,] = c(
        # MasterRow
        nrow(track_library)+1,
        # user
        your_username,
        # Added At
        body[["items"]][[x]][["added_at"]],
        # Added By
        body[["items"]][[x]][["added_by"]][["id"]],
        # Album
        body[["items"]][[x]][["track"]][["album"]][["name"]],
        # Album ID
        body[["items"]][[x]][["track"]][["album"]][["id"]],
        # Album Type
        body[["items"]][[x]][["track"]][["album"]][["album_type"]],
        # Album Release Date
        body[["items"]][[x]][["track"]][["album"]][["release_date"]],
        # Artist
        body[["items"]][[x]][["track"]][["artists"]][[a]][["name"]],
        # Artist ID
        body[["items"]][[x]][["track"]][["artists"]][[a]][["id"]],
        # Explicit
        body[["items"]][[x]][["track"]][["explicit"]],
        # ISRC
        body[["items"]][[x]][["track"]][["external_ids"]][["isrc"]],
        # Song ID
        body[["items"]][[x]][["track"]][["id"]],
        # Song Title
        body[["items"]][[x]][["track"]][["name"]],
        # Song Popularity
        body[["items"]][[x]][["track"]][["popularity"]],
        # Duration (ms)
        body[["items"]][[x]][["track"]][["duration_ms"]],
        # Is Playable
        body[["items"]][[x]][["track"]][["is_playable"]]
      )
    }
  }
  
  
  if (  !is.null(body[["next"]])){ 
    offset = offset + 50
  } else {
    stop = 1
  }
}

write.csv2(track_library, paste0(getwd(), '/df_library_', your_username, '.csv'))






