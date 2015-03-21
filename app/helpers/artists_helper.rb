module ArtistsHelper
  def album_artwork(artist, album)
    artist = URI.escape(artist)
    album = URI.escape(album)
    @request = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=#{ENV['LAST_FM_API']}&artist=#{artist}&album=#{album}&format=json")
    @album = JSON.parse(@request.body)
    
    if @album['error'] == 6
      return "http://static.last.fm/flatness/catalogue/noimage/noalbum_g3.png"
    else
      if @album['album']['image'][4]['#text'].blank?
        return "http://static.last.fm/flatness/catalogue/noimage/noalbum_g3.png"
      else
        return @album['album']['image'][4]['#text']
      end
    end
  end
end
