//calc
const display = document.getElementById("display");

window.addEventListener('keydown', function(event) {
    const key = event.key;

    if ((key >= '0' && key <= '9') || key === '.') {
        appendToDisplay(key);
    }

    else if (['+', '-', '*', '/'].includes(key)) {
        appendToDisplay(key);
    }

    else if (key === 'Enter' || key === '=') {
        event.preventDefault(); 
        calculate(); 
    }

    else if (key === 'Backspace') {
        removeLastCharacter();
    }

    else if (key === 'Escape') {
        clearDisplay();
    }
});

function appendToDisplay(input){
    display.value += input;
}

function clearDisplay(){
    display.value = "";
}

function calculate(){
    try{
        display.value = eval(display.value);
    }
    catch(error){
        display.value = "Mi bombo";
    }
}

function removeLastCharacter(){
    display.value = display.value.slice(0, -1);
}

