# iiifc-theme

## Installation

Add the following to your Jekyll project's `Gemfile`:
```
gem 'iiifc-theme', github: 'mnyrop/iiifc-them', branch: 'main'
```

And enable the theme in your `_config.yml`:

```
theme: iiifc-theme
```

## Using the Theme

```
TO DO
```

## Contributing

### Prerequisites

- `Ruby 2.7.2`
- `Bundler`
- `Node >= 16` with `Yarn >= 1.22`

### Steps

1. Clone this repo and `cd` into it:
  ```sh
  git clone https://github.com/mnyrop/iiifc-theme.git && cd iiifc-theme
  ```
2. Install the Ruby dependencies
  ```sh
  bundle install
  ```
3. Install CSS and JS vendor dependencies
  ```sh
  yarn install
  ```
4. Make changes using your favorite text editor and preview them with
  ```sh
  bundle exec jekyll serve
  ```

### Norms
- Follow semantic versioning
- Create namespaced branches, e.g., `feature/my-feature`, `chore/my-chore`
- Whenever possible, submit feature documentation with the feature itself
