var url = '/app/themes/gaz-v1/dist/themes/gaz/js/quicklink.umd.js';

function loadScript(src) {
    return new Promise(function (resolve, reject) {
        var s;
        s = document.createElement('script');
        s.src = src;
        s.async = true;
        s.onload = resolve;
        s.onerror = reject;
        document.head.appendChild(s);
    });
}

window.addEventListener('load', () =>{
    loadScript(url).then(function () {

        quicklink.listen({
            ignores: [function (uri, elem) {
                const type = elem.getAttribute('type');
                if(type !== 'branded' && type !== null){
                    return false;
                }
                return true
            }]
        });

    });
});
