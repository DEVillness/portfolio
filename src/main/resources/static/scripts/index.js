const headerIcons = document.querySelectorAll("body > header > ul > li > img");
const sections = document.querySelectorAll("body > main > section.splash");

for (let i = 0; i < headerIcons.length; i++) {
    headerIcons[i].onclick = () => {
        window.scrollTo({top: sections[i].offsetTop, left: 0, behavior: 'smooth'});
    };
}

document.getElementById('github').onclick = () => {
    window.open('https://github.com/Devillness');
};