const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-white');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
      }
    });
  }
}

const initUpdateNavbarOnScrolllink = () => {
  const navbar = document.querySelectorAll('.nav-link');
  navbar.forEach((navbar) => {
    if (navbar) {
      window.addEventListener('scroll', () => {
        if (window.scrollY >= window.innerHeight) {
          navbar.classList.add('nav-link-black');
        } else {
          navbar.classList.remove('nav-link-black');
        }
      });
    }
  });
}



const initUpdateNavbarOnScrollmenu = () => {
  const navbar = document.querySelector('.dropdown-menu');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('dropdown-menu-white');
      } else {
        navbar.classList.remove('dropdown-menu-white');
      }
    });
  }
}



export { initUpdateNavbarOnScroll };
export { initUpdateNavbarOnScrolllink };
export { initUpdateNavbarOnScrollmenu };

