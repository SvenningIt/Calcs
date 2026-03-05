const display = document.getElementById("display");
const keysContainer = document.getElementById("keys");
window.addEventListener('keydown', (event) => {
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
keysContainer?.addEventListener("click", (event) => {
    const target = event.target;
    if (!target.matches("button") || target.classList.contains("invis"))
        return;
    const value = target.innerText;
    if (target.id === "equals-btn") {
        calculate();
    }
    else if (target.id === "clear-btn") {
        clearDisplay();
    }
    else if (target.id === "backspace-btn") {
        removeLastCharacter();
    }
    else {
        appendToDisplay(value);
    }
});
function appendToDisplay(input) {
    if (display)
        display.value += input;
}
function clearDisplay() {
    if (display)
        display.value = "";
}
function calculate() {
    try {
        display.value = eval(display.value);
    }
    catch {
        display.value = "Error";
    }
}
function removeLastCharacter() {
    if (display)
        display.value = display.value.slice(0, -1);
}
window.appendToDisplay = appendToDisplay;
window.clearDisplay = clearDisplay;
window.calculate = calculate;
window.removeLastCharacter = removeLastCharacter;
export {};
//# sourceMappingURL=calc.js.map