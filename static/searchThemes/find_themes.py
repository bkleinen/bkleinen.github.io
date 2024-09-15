import sys


# new in python 3.11, use other library for pyscript:
# import tomllib
import tomlkit

toml_lib = tomlkit
tags = ["minimal", "blog", "bootstrap"]
tags_themes_file = './theme_tags.toml'



def find_tags(tags):
    if len(tags) == 0:
        return []
    tags_themes = read_list()
    theme_lists = [tags_themes.get(tag, default=[]) for tag in tags]
    theme_sets = [set(theme_list) for theme_list in theme_lists]

    head = theme_sets[0]
    tail = theme_sets[1:]
    result = head.intersection(*tail)
    return list(result)


def read_list(file=tags_themes_file):
    with open(file, "r+b") as f:
        tags_themes = toml_lib.load(f)
        return tags_themes


def find_themes_with_tags_impl(tag_str):
    c = "," if tag_str.find(",") > -1 else " "
    tags = [t.strip() for t in tag_str.split(c)]
    result = find_tags(tags)
    result_urls = [f'https://{l}' for l in result]
    return result_urls
    # return "\n".join(result_urls)


if __name__ == '__main__':
    #r = find_themes_with_tags_impl("bootstrap, blog, minimal")
    r = find_themes_with_tags_impl("blog")
    print(f'found {len(r)}')
    print(r)

