# Use Ruby 3.4.4 as base image
FROM ruby:3.4.4

# Install system dependencies
RUN apt-get update -qq && \
    apt-get install -y \
      build-essential \
      libpq-dev \
      nodejs \
      npm \
      postgresql-client \
      curl && \
    rm -rf /var/lib/apt/lists/*

# Install Yarn
RUN npm install -g yarn

# Set working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install Ruby dependencies
RUN bundle install

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install Node.js dependencies
RUN yarn install

# Copy the rest of the application
COPY . .

# Precompile assets (optional for development)
# RUN bundle exec rails assets:precompile

# Expose port 3000
EXPOSE 3000

# Start the Rails server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
