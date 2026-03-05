const display = document.getElementById("display") as HTMLInputElement;
const keysContainer = document.getElementById("keys");

window.addEventListener('keydown', (event: KeyboardEvent): void => {
    const key: string = event.key;

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

keysContainer?.addEventListener("click", (event: MouseEvent) => {
    const target = event.target as HTMLButtonElement;
    
    if (!target.matches("button") || target.classList.contains("invis")) return;

    const value = target.innerText;

    if (target.id === "equals-btn") {
        calculate();
    } else if (target.id === "clear-btn") {
        clearDisplay();
    } else if (target.id === "backspace-btn") {
        removeLastCharacter();
    } else {
        appendToDisplay(value);
    }
});

function appendToDisplay(input: string): void {
    if (display) display.value += input;
}

function clearDisplay(): void {
    if (display) display.value = "";
}

function calculate(): void {
    try {
        display.value = eval(display.value);
    } catch {
        display.value = "Error";
    }
}

function removeLastCharacter(): void {
    if (display) display.value = display.value.slice(0, -1);
}

(window as any).appendToDisplay = appendToDisplay;
(window as any).clearDisplay = clearDisplay;
(window as any).calculate = calculate;
(window as any).removeLastCharacter = removeLastCharacter;