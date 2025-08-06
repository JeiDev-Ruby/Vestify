/**
 * This function adds or removes the "has-value" class to inputs inside the form.
 * If the input has a value, the "has-value" class is added to keep the label above.
 * If the input is empty, the class is removed so the label behaves like a placeholder.
 * This enables a "floating label" effect without complex JavaScript.
 */
function handleInputLabelPosition(){
    Array.from(document.querySelectorAll(".auth_form_block input") || []).forEach(input => {
        input.addEventListener("keyup", () => {
            input.addEventListener("blur", () => {
                const parent = input.parentElement
                const label = parent.querySelector("span")
                if (input.value.trim() === "") {
                    label.classList.remove("has-value")
                    input.classList.remove("has-value")
                } else {
                    label.classList.add("has-value")
                    input.classList.add("has-value")
                }
            });
        })
    })
}

export {
    handleInputLabelPosition
}