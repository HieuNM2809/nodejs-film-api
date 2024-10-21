const express = require('express');
const filmController = require('../app/Controllers/film.controller');
const actorController = require('../app/Controllers/actor.controller');
const countryController = require('../app/Controllers/country.controller');
const episodeController = require('../app/Controllers/episode.controller');
const filmActorController = require('../app/Controllers/filmActor.controller');
const filmGenreController = require('../app/Controllers/filmGenre.controller');
const genreController = require('../app/Controllers/genre.controller');

const router = express.Router();

//actor | diễn viên
router.get('/actors/', actorController.getAllActors);
router.post('/actor/', actorController.createActor);
router.get('/actor/:id', actorController.getActorById);
router.put('/actor/:id', actorController.updateActor);
router.delete('/actor/:id', actorController.deleteActor);

//country | quốc gia
router.get('/countries/', countryController.getAllCountries);
router.post('/country/', countryController.createCountry);
router.get('/country/:id', countryController.getCountryById);
router.put('/country/:id', countryController.updateCountry);
router.delete('/country/:id', countryController.deleteCountry);

//genre | Thể loại
router.get('/genres/', genreController.getAllGenres);
router.post('/genre/', genreController.createGenre);
router.get('/genre/:id', genreController.getGenreById);
router.put('/genre/:id', genreController.updateGenre);
router.delete('/genre/:id', genreController.deleteGenre);

//episode | tập
router.get('/episodes/', episodeController.getAllEpisodes);
router.post('/episode/', episodeController.createEpisode);
router.get('/episode/:id', episodeController.getEpisodeById);
router.put('/episode/:id', episodeController.updateEpisode);
router.delete('/episode/:id', episodeController.deleteEpisode);

//filmActor | Film và diễn viên
router.get('/film-actors/', filmActorController.getAllFilmActors);
router.post('/film-actor/', filmActorController.createFilmActor);
router.get('/film-actor/:id', filmActorController.getFilmActorById);
router.put('/film-actor/:id', filmActorController.updateFilmActor);
router.delete('/film-actor/:id', filmActorController.deleteFilmActor);

//filmGenre | Film và thể loại
router.get('/film-genres/', filmGenreController.getAllFilmGenres);
router.post('/film-genre/', filmGenreController.createFilmGenre);
router.get('/film-genre/:id', filmGenreController.getFilmGenreById);
router.put('/film-genre/:id', filmGenreController.updateFilmGenre);
router.delete('/film-genre/:id', filmGenreController.deleteFilmGenre);

// film
router.get('/films', filmController.getAllFilms);
router.post('/film', filmController.createFilm);
router.get('/film/:id', filmController.getFilmById);
router.put('/film/:id', filmController.updateFilm);
router.delete('/film/:id', filmController.deleteFilm);

module.exports = router;
