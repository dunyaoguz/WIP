CREATE TABLE public.tweets (
    id SERIAL PRIMARY KEY,
    twitter_id INTEGER NOT NULL,
    created_at TIMESTAMP NOT NULL,
    full_text TEXT NULL,
    created_by TEXT NOT NULL,
    language TEXT NULL,
    retweet_count INTEGER NULL,
    favorite_count INTEGER NULL,
    in_reply_to_status_id INTEGER NULL,
    in_reply_to_user_id INTEGER NULL,
)

CREATE TABLE public.users (
    id SERIAL PRIMARY KEY,
    twitter_user_id INTEGER NOT NULL,
    name TEXT NULL,
    screen_name TEXT NULL,
    location TEXT NULL,
    description TEXT NULL,
    followers_count INTEGER NULL,
    friends_count INTEGER NULL,
    statuses_count INTEGER NULL
    created_at TIMESTAMP NOT NULL,
    verified BOOLEAN NOT NULL
)

CREATE TABLE public.covid19_stats (
    id SERIAL PRIMARY KEY,
    country TEXT NOT NULL,
    day DATE NOT NULL,
    cases INTEGER NULL,
    deaths INTEGER NULL
)

CREATE TABLE public.country_stats (
    id SERIAL PRIMARY KEY,
    country TEXT NOT NULL,
    population INTEGER NULL,
)