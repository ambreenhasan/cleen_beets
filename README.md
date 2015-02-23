# Cleen Beets

Cleen Beets is a small ruby program I wrote for myself in order to make my life easier whenever I want to edit ID3 tags for my audio files.

Properly formatted data is pulled from the iTunesSearch API, which is then used to edit the ID3 Tags and the filename.

### To currently run the file:

Before you can bundle install the taglib-ruby gem, you first need to install taglib, the C++ library for meta-data.

```bash
brew install taglib

bundle install

ruby driver.rb filename.mp3
```


### MVP v1
* ~~Edit ID3 Tags of a single audio file~~
* ~~Rename audio file with accurate information~~
* ~~Pull correct data for audio file from an API (iTunes for now)~~

### MVP v2 (current sprint)
* Convert program into a gem
* Add menu so users have control over audio file format
* Integrate Beatport for more data
* Edit ID3 Tags for an album
* Rename Directory of album with accurate information


