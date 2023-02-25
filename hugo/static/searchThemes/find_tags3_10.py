#-------
# define the task template that will be use to render new templates to the page
import find_themes
from  find_themes import find_themes_with_tags_impl

child_template = Element("child-template").select(".wrapper", from_content=True)
themes_template = Element("theme-template").select(".theme", from_content=True)
theme_list_container = Element("list-themes-container")
tags_text_input = Element("tags-input")
status = Element("status")
result_header = Element("result-header")
def find_themes_with_tags(*ags, **kws):
    # ignore empty task
    if not tags_text_input.element.value:
        return None

    # search themes
    tags_string = tags_text_input.element.value
    status.element.innerText = tags_string
    themes_list = find_themes_with_tags_impl(tags_string)
    status.element.innerText = "Done"
    result_header.element.innerText = f'{len(themes_list)} Themes with tags: {tags_string}'
    # task_id = f"task-{len(tasks)}"

    # tags_text_input.clear()

    wrapper = Element("child-container").element
    theme_list_container.element.removeChild(wrapper)
    new_wrapper = child_template.clone("child-container")
    theme_list_container.element.appendChild(new_wrapper.element)
    # status.element.innerText = themes_list
    # add the task element to the page as new node in the list by cloning from a
    # template
    for i, theme_name in enumerate(themes_list):
        theme_id = f"theme-{i}"
        theme_html = themes_template.clone(theme_id)
        theme_html_content = theme_html.select("p")
        theme_html_anchor = theme_html.select("a")
        theme_html_content.element.innerText = theme_name
        theme_html_anchor.element.href = theme_name
        new_wrapper.element.appendChild(theme_html.element)


def find_themes_event(e):
    if e.key == "Enter":
        find_themes_with_tags("bootstrap, blog, minimal")


tags_text_input.element.onkeypress = find_themes_event
