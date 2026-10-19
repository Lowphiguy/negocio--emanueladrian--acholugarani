// app.js - Buscador de Pokémon con PokeAPI

const input = document.getElementById('pokemon-input');
const boton = document.getElementById('buscar-btn');
const mensaje = document.getElementById('mensaje');
const resultado = document.getElementById('resultado');
const nombre = document.getElementById('nombre');
const imagen = document.getElementById('imagen');
const tipos = document.getElementById('tipos');
const peso = document.getElementById('peso');
const altura = document.getElementById('altura');

boton.addEventListener('click', buscarPokemon);

input.addEventListener('keydown', (e) => {
  if (e.key === 'Enter') buscarPokemon();
});

async function buscarPokemon() {
  const busqueda = input.value.trim().toLowerCase();

  // Limpiar el estado anterior
  mensaje.textContent = '';
  mensaje.classList.remove('error');
  resultado.hidden = true;

  // Validar que se escribió algo
  if (busqueda === '') {
    mensaje.textContent = 'Escribe el nombre de un pokémon.';
    mensaje.classList.add('error');
    return;
  }

  mensaje.textContent = 'Cargando...';

  try {
    const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${busqueda}`);

    if (!response.ok) {
      if (response.status === 404) {
        throw new Error(`No se encontró el pokémon "${busqueda}".`);
      }
      throw new Error(`Error en la petición (código ${response.status}).`);
    }

    const data = await response.json();

    nombre.textContent = data.name;
    imagen.src = data.sprites.front_default;
    imagen.alt = data.name;

    mensaje.textContent = '';
    resultado.hidden = false;
  } catch (error) {
    mensaje.classList.add('error');
    if (error instanceof TypeError) {
      mensaje.textContent = 'No se pudo conectar. Revisa tu conexión a internet.';
    } else {
      mensaje.textContent = error.message;
    }
  }
}