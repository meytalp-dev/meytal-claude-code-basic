# meytal-claude-code-basic

חבילת בסיס ל-Claude Code בעברית - כל מה שצריך כדי להתחיל לעבוד.

## מה כלול?

### סקילס מקומיים (מותקנים אוטומטית)

| סקיל | מה עושה |
|-------|---------|
| `hebrew-content-writer` | כתיבה מקצועית בעברית - שיווק, UX, מאמרים, מיילים |
| `hebrew-rtl-best-practices` | RTL תקין בכל תוצר HTML |

### Plugins מומלצים להתקנה מהמרקטפלייס

#### חובה (claude-plugins-official)

| Plugin | מה עושה | התקנה |
|--------|---------|-------|
| `superpowers` | תכנון, brainstorm, דיבוג, code review | `/install superpowers` |
| `frontend-design` | עיצוב HTML מרשים | `/install frontend-design` |
| `skill-creator` | יצירת סקילס חדשים | `/install skill-creator` |
| `github` | פרסום ושיתוף ב-GitHub | `/install github` |

#### מומלץ (mamad-skills)

ראשית, הוסיפו את המרקטפלייס:
```
/marketplace add https://github.com/RanNahmany/mamad-challenge-skills.git mamad-skills
```

ואז התקינו:

| Plugin | מה עושה | התקנה |
|--------|---------|-------|
| `ui-ux-pro-max` | 50+ סגנונות עיצוב מקיפים | `/install ui-ux-pro-max from mamad-skills` |
| `excalidraw-diagram-generator` | דיאגרמות, מפות חשיבה, flowcharts | `/install excalidraw-diagram-generator from mamad-skills` |
| `presentation-builder` | מצגות בסגנון Apple | `/install presentation-builder from mamad-skills` |
| `writing-linkedin-posts` | כתיבת פוסטים ללינקדאין | `/install writing-linkedin-posts from mamad-skills` |

## התקנה

### אפשרות א: הורדת ZIP (מומלץ)
1. לחצו על **Code** > **Download ZIP** בדף הריפו
2. חלצו את הקובץ
3. העתיקו את תיקיית `.claude/` לתוך תיקיית הפרויקט שלכם
4. העתיקו את `CLAUDE.md` לשורש הפרויקט

### אפשרות ב: שימוש בסקריפט
```powershell
.\setup.ps1 -ProjectPath "C:\path\to\your\project"
```

### אפשרות ג: Clone
```bash
git clone https://github.com/meytalp-dev/meytal-claude-code-basic.git
```

## התאמה אישית

ערכו את `CLAUDE.md` בפרויקט שלכם והוסיפו:
- שם הארגון/בית הספר
- קהל היעד
- הנחיות ספציפיות לפרויקט

## דרישות מקדימות

- [VS Code](https://code.visualstudio.com/) (חינם)
- [Claude Pro](https://claude.ai/) ($20/חודש)
- תוסף Claude Code ל-VS Code

## קישורים

- [קבוצת וואטסאפ](https://chat.whatsapp.com/HhAL8L2I2jCH1CW1Iehr4J)
- [קבוצת פייסבוק "לרני"](https://www.facebook.com/share/g/1DfNai3EEv/)
- [זום (קישור קבוע)](https://edu-il.zoom.us/j/7543577500?pwd=TzI3WDJhYlYwWXFzL2V0MUdOTExIQT09)
