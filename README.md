# Práctica 1 - Programación Web III

## Datos del estudiante

- Apellidos: Acho Lugarani
- Nombres: Emanuel Adrian
- Paralelo: B
- CI: 12895989
- Fecha: 18-10-2026

## Descripción


Proyecto de un negocio con base de datos SQL y un buscador de pokémon, hecho para la práctica de Programación Web III.


## Estructura

- `db/`: schema.sql, seed.sql y consultas.sql
- `frontend/`: buscador de pokémon con fetch a la PokeAPI
- `docs/`: documentación, métodos HTTP y capturas


## Conflicto controlado

Creé dos ramas desde main (feature/10-conflicto-a y feature/11-conflicto-b) y en cada una edité la misma línea de la descripción del README con un texto distinto.
Mergeé primero la rama A; al abrir el pull request de la rama B, GitHub marcó el conflicto porque Git no podía decidir cuál de las dos versiones de esa línea conservar.
Lo resolví en el editor de GitHub: borré los marcadores (<<<<<<<, ======= y >>>>>>>), dejé una sola línea que combina ambas ideas, y mergeé el pull request.