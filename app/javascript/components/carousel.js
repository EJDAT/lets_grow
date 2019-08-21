import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["When you plant a seed, plant a tree, or start an edible garden, something almost magical happens.", "Put roots in the soil, and you begin a chain reaction of goodness.", "It begins with your health, spreads to your quality of life, and unfolds into the world around you.", "You could call it magic – we just call it planting something.", "It’s one of the simplest things you can do to have a measurable impact on your world."],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };

