# Qp

Qp is a simple ruby gem for inline code debugging

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'qp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install qp

## Usage

Q.p is a call-inclusive log message

```ruby
  name = "Doug"
  Q.p [name, 'band', 3]

  # prints `Q.p Q.p [name, 'band', 3] -> ["Doug","band",3]`
```

T.p is a benchmark trace point, showing difference since last call (keeps state via IVar)

```ruby
  T.p
  sleep 1
  T.p
```

```
15:54:21,263 Track Place 1 /Code/qp/spec/t_spec.rb:6:in `block (2 levels) in <top (required)>' {} +0.00ms (d+)
15:54:21,375 Track Place 2 /Code/qp/spec/t_spec.rb:8:in `block (2 levels) in <top (required)>' {} +100.99ms (d+100.99ms)
```

T.p can also accept maps which will show in output `T.p {extra: "information"}` and a "threshold" parameter

```ruby
  T.p {extra: "information"}
  sleep 2
  T.p {threshold: 100} # Since longer than 100 ms from last tp, will raise an exception
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/qp/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
