# Cleen Beets

Cleen Beets is a small ruby program I wrote for myself in order to make my life easier whenever I want to edit ID3 tags for my audio files.

Properly formatted data is pulled from iTunes, which is then used to edit the ID3 Tags and the filename.

### To currently run the file:

Before you can bundle install the taglib-ruby gem, you first need to install taglib, the C++ library for meta-data.

```bash
brew install taglib

bundle install

ruby driver.rb filename.mp3
```


### MVP v1 (current sprint)
* ~~Edit ID3 Tags of audio file~~
* ~~Rename audio file with accurate information~~
* Rename Directory of album with accurate information
* ~~Pull correct data for audio file from an API (iTunes for now)~~

### MVP v2
* Convert program into a gem
* add menu so users have control over audio file format
* integrate Beatport for more data
* Edit ID3 Tags for an album in one command


