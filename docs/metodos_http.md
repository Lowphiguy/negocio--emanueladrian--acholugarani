# Métodos HTTP

Pruebas hechas con `fetch` desde la consola del navegador sobre la API pública
`https://jsonplaceholder.typicode.com/posts`.

## GET

**Para qué sirve:** pedir (leer) datos al servidor sin modificar nada.

**Cómo se usa:** se indica la URL del recurso. No lleva body.

- URL: `https://jsonplaceholder.typicode.com/posts/1`
- Body: no lleva
- Código de estado: **200 OK**

```javascript
const r = await fetch('https://jsonplaceholder.typicode.com/posts/1');
const data = await r.json();
```

## POST

**Para qué sirve:** crear un recurso nuevo.

**Cómo se usa:** se envía el contenido del nuevo recurso en el body, en formato JSON.

- URL: `https://jsonplaceholder.typicode.com/posts`
- Body:

```json
{ "title": "Mi post", "body": "Contenido de prueba", "userId": 1 }
```

- Código de estado: **201 Created** (el servidor devolvió el objeto con `id: 101`)

```javascript
const r = await fetch('https://jsonplaceholder.typicode.com/posts', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json; charset=UTF-8' },
  body: JSON.stringify({ title: 'Mi post', body: 'Contenido de prueba', userId: 1 })
});
```

## PUT

**Para qué sirve:** reemplazar un recurso completo por una versión nueva.

**Cómo se usa:** se envía el objeto completo en el body, con todos sus campos.

- URL: `https://jsonplaceholder.typicode.com/posts/1`
- Body:

```json
{ "id": 1, "title": "Titulo nuevo", "body": "Cuerpo nuevo", "userId": 1 }
```

- Código de estado: **200 OK**

```javascript
const r = await fetch('https://jsonplaceholder.typicode.com/posts/1', {
  method: 'PUT',
  headers: { 'Content-Type': 'application/json; charset=UTF-8' },
  body: JSON.stringify({ id: 1, title: 'Titulo nuevo', body: 'Cuerpo nuevo', userId: 1 })
});
```

## PATCH

**Para qué sirve:** modificar solo una parte de un recurso.

**Cómo se usa:** se envía en el body únicamente el campo (o campos) que se quiere cambiar.

- URL: `https://jsonplaceholder.typicode.com/posts/1`
- Body:

```json
{ "title": "Solo cambio el titulo" }
```

- Código de estado: **200 OK** (el resto de los campos se mantuvo igual)

```javascript
const r = await fetch('https://jsonplaceholder.typicode.com/posts/1', {
  method: 'PATCH',
  headers: { 'Content-Type': 'application/json; charset=UTF-8' },
  body: JSON.stringify({ title: 'Solo cambio el titulo' })
});
```

## DELETE

**Para qué sirve:** eliminar un recurso.

**Cómo se usa:** se indica la URL del recurso a borrar. No lleva body.

- URL: `https://jsonplaceholder.typicode.com/posts/1`
- Body: no lleva
- Código de estado: **200 OK** (respuesta con un objeto vacío `{}`)

```javascript
const r = await fetch('https://jsonplaceholder.typicode.com/posts/1', {
  method: 'DELETE'
});
```

## Diferencia entre PUT y PATCH

PUT reemplaza el recurso completo: hay que mandar todos los campos, y si falta
alguno, el recurso queda sin ese dato. PATCH solo modifica los campos que se
envían y deja el resto como estaba. Por ejemplo, para cambiar solo el título
de un post uso PATCH con `{ "title": "..." }`; con PUT tendría que mandar
también el cuerpo y el usuario.

## Nota

JSONPlaceholder simula los cambios pero no los guarda de verdad, así que un GET
posterior no muestra lo que se creó, modificó o eliminó.