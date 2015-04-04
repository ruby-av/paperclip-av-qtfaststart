# Paperclip::Av::Qtfaststart

Fix FFmpeg MP4 video files.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'paperclip-av-qtfaststart'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paperclip-av-qtfaststart

## Usage

When FFmpeg produces mp4 files, it places the moov atom at the end which makes it unstreamable.

To fix this, use this processor to run qtfaststart after transcoding the video file using [ruby-av/paperclip-av-transcoder](https://github.com/ruby-av/paperclip-av-transcoder)

In your model:

```ruby
class Lesson < ActiveRecord::Base
  has_attached_file :video, :styles => {
    :mobile => {:geometry => "400x300", :format => 'mp4', :streaming => true}
  }, :processors => [:transcoder, :qtfaststart]
end
```

See [danielgtaylor/qtfaststart](https://github.com/danielgtaylor/qtfaststart) for instructions on how to setup qtfaststart.


## Contributing

1. Fork it ( https://github.com/ruby-av/paperclip-av-qtfaststart/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
