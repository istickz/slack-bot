# slack-bot
Болванка для бота.
Бот готов для запуска на Heroku, Docker и на своем сервере через Foreman

# Конфигурация

Добавьте .env файл в корень проекта, а также в переменные окружения на вашем CI либо в Heroku
```
SLACK_TOKEN=...
HEROKU_API_KEY=...
HEROKU_APP_NAME=...
HEROKU_WORKER_HIGH=...
HEROKU_WORKER_LOW=...
```
Также, если вы используете бесплатный аккаунт на Heroku, то настройте время использования воркера, через Heroku Scheduler.
Например вот так:
![Scheduler settings](http://dl1.joxi.net/drive/0002/3772/188092/160310/6d0d2c1e7c.png)

## Поддержка проекта

1. Создайте форк проекта ( https://github.com/istickz/random_org_http_api/fork )
2. Создайте ветку со своими изменениями (`git checkout -b my-new-feature`)
3. Закомитьте свои изменения (`git commit -am 'Add some feature'`)
4. Запушьте изменения в свою ветку (`git push origin my-new-feature`)
5. Создайте пулл-реквест
