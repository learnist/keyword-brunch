## keyword-brunch
A [brunch](http://brunch.io) plugin to replace predefined keywords of public files after every compilation.

## Usage
### Install
Add `"keyword-brunch": "git+ssh://git@github.com:learnist/keyword-brunch.git"` to `package.json` of your brunch app.

Or install the plugin by running the following command:
```sh
npm install --save "git+ssh://git@github.com:learnist/keyword-brunch.git"
```

### Usage in your application
Usage:

```coffeescript
module.exports =
  keyword:
    # file filter
    filePattern: /\.(js|css|html)$/

    # Extra files to process which `filePattern` wouldn't match
    extraFiles: [
      "public/humans.txt"
    ]

    map:
      myDate: -> (new Date).toISOString()
      someString: "hello"
```

The plugin will replace any keyword in map surrounded with '{!' and '!}' by the result of the given associated function or with the given associated string. The functions are re-run for every replacement. So you can make some keywords for the current git repository branch, commit hash, ...
