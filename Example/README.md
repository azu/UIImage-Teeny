# UIImage-Teeny

Provide method for UIImage to be able to load images with the -568h postfix.

## Installation

```
pod 'UIImage-Teeny'
```

## Usage

You should prepare images.

1. MyImage.png 
2. MyImage@2x.png 
3. MyImage-568h@2x.png

``` objc
[UIImage teenyImagedNamed:@"MyImage.png"];
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT