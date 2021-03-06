---
layout: post
title: Quick fetch() cheatsheet
author: Nathan McCallum
tags: JavaScript
date: 2021-03-02
permalink: /javascript/fetch
description: For those needing a quick reminder of how the fetch() API looks
---

Make a fetch request:

```javascript
const res = await fetch('/endpoint', { method: 'GET' });
const json = await res.json();
console.log('Here is the json response', json);
```

Send some form fields:

```javascript
const params = new FormData();
params.append('first_name', 'John');
params.append('last_name', 'Smith');
const res = await fetch('/endpoint', {
  method: 'POST',
  body: params,
});
const text = await res.text();
console.log('Here is the response', text);
```

Send some json data:

```javascript
const data = { username: 'foo', password: 'secret' };
const res = await fetch('/endpoint', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify(data),
});
if (res.ok) {
  const json = await res.json();
  console.log('Our session id is', json.session_id);
}
```
