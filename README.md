# Scaffold for social media app with Ruby on Rails

> This repo includes intial code for social media app with basic styling. Its purpose is to be a starting point for Microverse students.

<div align="center">
  <img src="01_timeline.png?raw=true" width="auto" height="auto"/>
</div>

<div align="center">
  <img src="02_all_users.png?raw=true" width="auto" height="auto"/>
</div>

<div align="center">
  <img src="03_connections.png?raw=true" width="auto" height="auto"/>
</div>

<div align="center">
  <img src="04_profile.png?raw=true" width="auto" height="auto"/>
</div>

## Built With

- Ruby 2.7.1
- Ruby on Rails 6.1.1
- VS code
- Linters

## Live Demo

TBA

## Here is a description of business requirements for the app:

As a guest user:


    I want to be able to create account/log in.

    I can see only “Sign in” and “Sign out” page.


As a logged-in user:


    I want to be able to see all users list.

    I want to be able to see selected user page with their user name and all posts written by them (the most recent posts on the top).

    I want to be able to send a friendship invitation.

    I want to see a button “Invite to friendship” next to the name of user who is not my friend yet - on both users’ list and single user page.

    I want to be able to see pending friendship invitations sent to me from other users.

    I want to be able to accept or reject friendships invitation.

    I want to be able to create new posts (text only).

    I want to be able to like/dislike posts (but I can like single post only once).

    I want to be able to add comments to posts.

    I want to be able to see “Timeline” page with posts (with number of likes and comments) written by me and all my friends (the most recent posts on the top).

    Timeline page should be the root page of the app.



## Getting Started

To get a local copy up and running follow these simple example steps.

- On the project GitHub page, navigate to the main page of the repository [this page](https://github.com/SarvarKh/ror-social-scaffold).
- Under the repository name, locate and click on a green button named `Code`.
- Copy the project URL as displayed.
- If you're running Windows Operating System, open your command prompt. On Linux, Open your terminal.
- Change the current working directory to the location where you want the cloned directory to be made. Leave as it is if the current location is where you want the project to be.
- Type `git clone`, and then paste the URL you copied in Step 3.<br>
  `$ git clone https://github.com/SarvarKh/ror-social-scaffold` <em>Press Enter key</em><br>
- Press Enter. Your local copy will be created.

Please Note that you must have Git installed on your PC, this can be done [here](https://gist.github.com/derhuerst/1b15ff4652a867391f03).


### Prerequisites

Ruby: 2.7.1
Rails: 6.1.1
Postgres: >=9.5

### Setup

Instal gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Github Actions

To make sure the linters' checks using Github Actions work properly, you should follow the next steps:

1. On your recently forked repo, enable the GitHub Actions in the Actions tab.
2. Create the `feature/branch` and push.
3. Start working on your milestone as usual.
4. Open a PR from the `feature/branch` when your work is done.


### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rpsec --format documentation
```

> Tests will be added by Microverse students. There are no tests for initial features in order to make sure that students write all tests from scratch.

### Deployment

TBA

## Authors

👤 **Sarvar Khalimov**

- GitHub: [SarvarKh](https://github.com/SarvarKh)
- Twitter: [KhalimovSarvar](https://twitter.com/KhalimovSarvar)
- LinkedIn: [Sarvar-Khalimov](https://www.linkedin.com/in/sarvar-khalimov/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/SarvarKh/Private-Events-practice/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse

## 📝 License

This project is [MIT](https://en.wikipedia.org/wiki/MIT_License) licensed.
