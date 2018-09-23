# Layback Automatic Subtitles Downloader RubyGem

[![Build Status](https://secure.travis-ci.org/evandrojr/layback.png)](http://travis-ci.org/evandrojr/layback)
[![Gem Version](https://badge.fury.io/rb/layback.svg)](https://badge.fury.io/rb/layback)

Layback will watch a folder for movie downloads. After a movie is downloaded `Layback` will search and download its subtitles automatically.

<p>If you like this, why not buy me a beer: <a rel="nofollow" href="https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=evandrojr%40gmail%2ecom&lc=US&item_name=evandro%2eorg&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted"><img src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif" alt="Donate"></a><br>
<br></p>

<center>
<img  src="https://raw.github.com/evandrojr/layback/master/media/logo.jpg" height="500" />
</center>
<BR>

## Installation

The easiest way to install it as your user:

```
sudo apt install build-essential
sudo gem install layback
```

### Download subtitles in English and Portuguese for all the movies  

    $ crawl4subs "folder-with-movies/" pob eng por

Example:    

    $ crawl4subs ~/Downloads/ pob eng por


##  <span style="color:red">Important add a '/' at the end of the path, otherwise it will not work!!! </span>



In order to run layback after boot do the following steps: 

run as your own user: 

```
crontab -e
```


```
@reboot layback_loader ~/Downloads
```

Change ~/Downloads to the directory you use for your movie downloads.



In case you are using [rbenv](https://github.com/rbenv/rbenv):

1. Download layback_start_with_rbenv.sh that is at the github repository to ~/bin or any place you prefer.
1. add to your crontab:

```
@reboot ~/bin/layback_start_with_rbenv.sh
```

Is has not been tested with RVM but it should work if you load RVM before you run layback_loader

see [RVM installtion](https://rvm.io/rvm/install)


## Standalone Tools

There are 4 tools at the moment:



## crawl4subs:
 Will download the subtitles of the movies inside a parent folder recursively.

example:

```
crawl4subs ["foldername" + /] eng por 
```

watch4subs: Watches a folder for new movies and downloads the subtitles as soon
as the movie finishes downloading.

lang4subs: Change the default language of
all the movies in a parent folder recursively.

layback remote app: Android remote control.
[Download at:]( https://github.com/evandrojr/layback/blob/master/Android_installer/layback_app.apk?raw=true)

<center>
<img  src="https://raw.github.com/evandrojr/layback/master/media/remote_control_screenshot.jpg" height="300" />
</center>
<BR>

LIMITATION: It is mandatory to keep your movies files in the directory "~/Downloads" otherwise the Android Remote won't work.

## Usage

### Download subtitles in English and Portuguese for all the movies  

    $ crawl4subs "folder-with-movies/" pob eng por
    
##  <span style="color:red">Important add a '/' at the end of the path, otherwise it will not work!!! </span>

You can pass as many languages as you like as parameters. The first language available for the movie will be set as the default language for the movie.

Default languages are: eng por spa ger on this sequence of priority. [Sub language ISO 639-2](https://github.com/byroot/ruby-osdb/blob/master/lib/osdb/language.rb) code like pob (Brazilian Portuguese), fre or eng.



### Change the languages of the subtitles

    $ lang4subs "folder-with-movies" spa por

Bug reports and pull requests are welcome on GitHub at https://github.com/evandrojr/layback. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Thanks

### Subtitles service powered by www.OpenSubtitles.org
