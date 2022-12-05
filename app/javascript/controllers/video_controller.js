import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="video"
export default class extends Controller {
  connect() {

// Change "{}" to your options:
// https://github.com/sampotts/plyr/#options
const player = new Plyr('#player', {});

// Expose player so it can be used from the console
window.player = player;

// pour le bouton pause
function pause() {
  player.pause();
}

// pour le play
function play() {
  player.play();
}

// ça c'est pour le full screen button

function setupPlyr() {

	const vid = document.createElement('div');
	vid.setAttribute('id', 'youtubeVideo');
	vid.dataset.plyrProvider = 'youtube';
	vid.dataset.plyrEmbedId = '<%= @solution.videourl %>';
	document.body.appendChild(vid);

	player.play();
	player.fullscreen.enter();
}
//

  }
}
