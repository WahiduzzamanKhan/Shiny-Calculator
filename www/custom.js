// disabling tab key navigation
document.querySelectorAll('button').forEach(elem => {
    elem.setAttribute('tabindex', '-1')
  });

// enabling custom key bindings
Mousetrap.bind('0', function() { document.getElementById('zero').click() });
Mousetrap.bind('1', function() { document.getElementById('one').click() });
Mousetrap.bind('2', function() { document.getElementById('two').click() });
Mousetrap.bind('3', function() { document.getElementById('three').click() });
Mousetrap.bind('4', function() { document.getElementById('four').click() });
Mousetrap.bind('5', function() { document.getElementById('five').click() });
Mousetrap.bind('6', function() { document.getElementById('six').click() });
Mousetrap.bind('7', function() { document.getElementById('seven').click() });
Mousetrap.bind('8', function() { document.getElementById('eight').click() });
Mousetrap.bind('9', function() { document.getElementById('nine').click() });
Mousetrap.bind('.', function() { document.getElementById('point').click() });
Mousetrap.bind('/', function() { document.getElementById('divide').click() });
Mousetrap.bind('*', function() { document.getElementById('multiply').click() });
Mousetrap.bind('-', function() { document.getElementById('minus').click() });
Mousetrap.bind('+', function() { document.getElementById('plus').click() });
Mousetrap.bind(['=', 'enter'], function() { document.getElementById('equal').click() });
Mousetrap.bind('esc', function() { document.getElementById('ac').click() });
Mousetrap.bind(['command+shift+h', 'ctrl+shift+h'], function() { document.getElementById('historyBtn').click() });
Mousetrap.bind('left', function() { document.getElementById('historyPrev').click() });
Mousetrap.bind('right', function() { document.getElementById('historyNext').click() });
