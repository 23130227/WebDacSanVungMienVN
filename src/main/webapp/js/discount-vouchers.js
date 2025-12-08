const urlParams = new URLSearchParams(window.location.search);
const mode = urlParams.get('mode');

if (mode === 'select') {
    document.querySelectorAll('.select-button').forEach(btn => {
        btn.style.display = 'inline-block';
    });
}