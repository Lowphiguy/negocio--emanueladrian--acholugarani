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
  console.log('Buscando:', input.value);
}