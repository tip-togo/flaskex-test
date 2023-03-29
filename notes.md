# При запуске приложения возникла такая ошибка:

```bash
Traceback (most recent call last):
  File "app.py", line 4, in <module>
    from scripts import forms
  File "/app/scripts/forms.py", line 6, in <module>
    class LoginForm(Form):
  File "/app/scripts/forms.py", line 7, in LoginForm
    username = StringField('Username:', validators=[validators.required(), validators.Length(min=1, max=30)])
AttributeError: module 'wtforms.validators' has no attribute 'required'
```

Очевидно, что проблема в том, что версия пакета wtforms не соответствует той, что использовалась при разработке flaskex.

Решений вижу два:
1. Указать версию wtforms 1.0.1 в requrements.txt
2. Изменить в модуле forms.py передаваемый валидатор validators.required() на validators.InputRequired()

Так как проект фактически пустой и тщательное тестирование не требуется, я выбрал второе.