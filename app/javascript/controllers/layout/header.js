/**
 * This function handles the showing and hiding of contextual menus or submenus
 * with the CSS class ".layout_application_group_menu".
 *
 * When a user clicks on the menu, the "visible" class is added to it, making
 * it appear.
 * If the user clicks anywhere else on the page, the "visible" class is
 * removed, thereby hiding the menu.
 * This allows for an intuitive management of element visibility without the
 * need for complex state management logic.
 */
function showAndHiddenSubmenu() {
    Array.from(document.querySelectorAll(".layout_application_group_menu") || []).forEach(nav => {
        nav.addEventListener("click", () => {
            nav.classList.add("visible")
        })

        document.addEventListener('click', function (event) {
            if (!nav.contains(event.target) && event.target !== nav) {
                nav.classList.remove("visible")
            }
        });
    })

}

export {
    showAndHiddenSubmenu
}