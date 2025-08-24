# BookMyShow Database Design

**Author:** Abhishek Shah

---

## Entities with Attributes

### 1. Theatre

**Attributes:**
- `theatre_id` (PK)
- `name`
- `location`

**Sample Data:**

| theatre_id | name         | location  |
|------------|--------------|-----------|
| 1          | PVR Cinemas  | Bangalore |
| 2          | INOX         | Mumbai    |
| 3          | Cinepolis    | Delhi     |

---

### 2. Screen

**Attributes:**
- `screen_id` (PK)
- `theatre_id` (FK)
- `screen_name`

**Sample Data:**

| screen_id | theatre_id | screen_name |
|-----------|------------|--------------|
| 1         | 1          | Screen 1    |
| 2         | 1          | Screen 2    |
| 3         | 2          | Screen 1    |
| 4         | 3          | Screen 1    |

---

### 3. Movie

**Attributes:**
- `movie_id` (PK)
- `title`
- `duration_minutes`
- `genre`
- `language`

**Sample Data:**

| movie_id | title          | duration_minutes | genre   | language |
|----------|----------------|------------------|---------|----------|
| 1        | Inception      | 148              | Sci-Fi  | English  |
| 2        | KGF Chapter 2  | 168              | Action  | Kannada  |
| 3        | Oppenheimer    | 180              | Drama   | English  |
| 4        | 3 Idiots       | 170              | Comedy  | Hindi    |

---

### 4. ShowDetails

**Attributes:**
- `show_id` (PK)
- `screen_id` (FK)
- `movie_id` (FK)
- `show_date` (DATE)
- `show_time` (TIME)

**Sample Data:**

| show_id | screen_id | movie_id | show_date  | show_time |
|---------|-----------|----------|------------|-----------|
| 1       | 1         | 1        | 2025-08-24 | 10:00:00  |
| 2       | 1         | 2        | 2025-08-24 | 14:00:00  |
| 3       | 2         | 3        | 2025-08-24 | 18:00:00  |
| 4       | 3         | 2        | 2025-08-25 | 12:30:00  |
| 5       | 4         | 4        | 2025-08-25 | 15:00:00  |

---
