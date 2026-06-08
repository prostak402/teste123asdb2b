# B2Scan static export

Статическая локальная сборка сайта `https://b2scan.lovable.app/`.

## Запуск

Из этой папки:

```powershell
.\Start-LocalServer.ps1
```

Затем откройте:

```text
http://localhost:8080/
```

Сайт собран как SPA, поэтому `index.html` продублирован для известных маршрутов:

- `/about`
- `/blog`
- `/projects/firecat`
- `/projects/hockey`
- `/projects/pet-tracker`
- `/projects/sport-retail`
- `/projects/workwear`

## Состав

- `index.html` - чистый entrypoint без Lovable badge, GTM и аналитики.
- `assets/` - JS/CSS бандл и локальные шрифты.
- `lovable-uploads/` - локальные изображения сайта.
