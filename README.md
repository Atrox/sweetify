# Sweetify - SweetAlert for Rails
This gem allows you to use [SweetAlert](http://t4t5.github.io/sweetalert/) for your flash messages.
_See the examples below, to see how it looks like_

## Installation
**Note: This package does not provide the client side javascript and css files of SweetAlert. You have to provide them yourself.**

Add this line to your application's Gemfile:

```ruby
gem 'sweetify'
```

And then execute:
```bash
$ bundle
```

Next add the following line to the bottom of your application's layout file:
```html
...

<%= render 'sweetify/script' %>

</body>
</html>
```

**You have to restart your rails server after installing the gem**

## Usage
You can now easily create alerts in your controllers with any of the following methods provided by **Sweetify**:
```ruby
# Base Method, no type specified
sweetalert(text, title = '', opts = {})

# Additional methods with the type already defined
alert_info(text, title = '', opts = {})
alert_success(text, title = '', opts = {})
alert_error(text, title = '', opts = {})
alert_warning(text, title = '', opts = {})
```

## Example Usage
```ruby
# POST /resource
def create
    alert_success('Your resource is created and available.', 'Successfully created', persistent: 'Awesome!')
    redirect_to resource_path
end
```

That would look like this after the redirect:
![](http://i.imgur.com/3WMvk0y.png)


## Options
**By default, all alerts will dismiss after a sensible default number of seconds.**

Default Options set by **Sweetify**:
```ruby
{
    showConfirmButton: false,
    timer:             2000,
    allowOutsideClick: true,
    confirmButtonText: 'OK'
}
```

The following special options provided by **Sweetify** are available:
```ruby
sweetalert('Text', 'Title', button: true) # Shows an button with the default content on the alert but still closes automatically
sweetalert('Text', 'Title', button: 'Awesome!') # Same as above just with a specified text

sweetalert('Text', 'Title', persistent: true) # Shows the dialog with an button and the alert only closes if the button is pressed
sweetalert('Text', 'Title', persistent: 'Awesome!') # Same as above just with a specified text
```

You also can use any other available option that [SweetAlert accepts](http://t4t5.github.io/sweetalert/):
```ruby
alert_info('Here is a custom image', 'Sweet!', imageUrl: 'images/thumbs-up.jpg, timer: 5000)
```


## Contributing
Everyone is encouraged to help improve this project. Here are a few ways you can help:

- [Report bugs](https://github.com/atrox/sweetify/issues)
- Fix bugs and [submit pull requests](https://github.com/atrox/sweetify/pulls)
- Write, clarify, or fix documentation
- Suggest or add new features