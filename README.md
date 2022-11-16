# **Go-pocket-bot** - это MVP клиент-серверного приложения, реализованное в виде telegram бота
## Приложение позволяет вам сохранять закладки в сервисе pocket 
---
# Installation
---
### 1) Clone this repository
```bash
git clone https://github.com/Vlvdik/poncho-remastered 
```
### 2) Configurate your main.yml file
```bash
cd configs/
cat > main.yml
```
```yaml
db_file: "your path to db"

bot_url: "https://t.me/Your bot name"

messages:
    #Your values
```

---
#### Example from **this** project
```yaml
db_file: "bot.db"

bot_url: "https://t.me/Save_the_information_bot"

messages:
  responses:
    start: "Hello! Please, for correctly working, authorize here: %s"
    already_authorized: "You already authorized. Send me the link and i save her"
    saved_successfully: "The link is successfully saved"
    unknown_command: "Invalid command"
  errors:
    default: "An unknown error has occurred"
    invalid_url: "Invalid link"
    unauthorized: "You are not authorized. Use /start"
    unable_to_save: "Sorry... Cant save the link. Try again later :)"
```
---
# Using
---

### 1) Create your telegram bot (BotFather wiil help you) and get access token
### 2) Register for the ![Pocket](https://getpocket.com/) service *(if you haven't done it before)*
### 3) Go to the bot you created and go through the authentication process on the pocket site

---
# Done! Now when you send the bot a link, it will automatically save it to the service.
