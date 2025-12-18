# pylint: disable=C0111
c = c  # noqa: F821 pylint: disable=E0602,C0103
config = config  # noqa: F821 pylint: disable=E0602,C0103
# pylint settings included to disable linting errors

config.load_autoconfig() # load settings done via the gui

# c.statusbar.show = "always"
c.tabs.show = "multiple"

c.url.start_pages = "about:blank"
# c.url.default_page = ""

c.tabs.title.format = "{audio}{index}:{current_title}"
c.fonts.web.size.default = 18

c.url.searchengines = {
        # note - if you use duckduckgo, you can make use of its built in bangs, of which there are many! https://duckduckgo.com/bangs
        'DEFAULT': 'https://duckduckgo.com/?q={}',
        '!aw': 'https://wiki.archlinux.org/?search={}',
        '!apkg': 'https://archlinux.org/packages/?sort=&q={}&maintainer=&flagged=',
        '!gh': 'https://github.com/search?o=desc&q={}&s=stars',
        '!yt': 'https://www.youtube.com/results?search_query={}',
        '!wk': 'https://en.wikipedia.org/w/index.php?search={}'
        }

c.completion.open_categories = ['searchengines', 'quickmarks', 'bookmarks', 'history', 'filesystem']

c.auto_save.session = False 

# keybinding changes
config.bind('cs', 'config-source')
config.bind('tH', 'config-cycle tabs.show multiple never')
config.bind('sH', 'config-cycle statusbar.show always never')
config.bind('pP', 'open -- {primary}')
config.bind('pp', 'open -- {clipboard}')
config.bind('pt', 'open -t -- {clipboard}')
config.bind('qm', 'macro-record')
config.bind('<ctrl-y>', 'spawn --userscript ytdl.sh')
config.bind('tT', 'config-cycle tabs.position top left')
config.bind('gJ', 'tab-move +')
config.bind('gK', 'tab-move -')
config.bind('gm', 'tab-move')
config.bind('gi', 'hint inputs')
config.bind('<ctrl-n>', 'completion-item-focus --history next', mode='command')
config.bind('<ctrl-p>', 'completion-item-focus --history prev', mode='command')
# qute-pass bindings
config.bind(',p', 'spawn --userscript qute-pass -d \'fuzzel --dmenu\'')
config.bind(',up', 'spawn --userscript qute-pass --username-only -d \'fuzzel --dmenu\'')
config.bind(',op', 'spawn --userscript qute-pass --password-only -d \'fuzzel --dmenu\'')
config.bind(',ot', 'spawn --userscript qute-pass --otp-only -d \'fuzzel --dmenu\'')

config.bind(',m', 'spawn mpv {url}')
config.bind(',M', 'hint links spawn mpv {hint-url}')

# dark mode setup
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
c.colors.webpage.darkmode.policy.images = 'never'
config.set('colors.webpage.darkmode.enabled', False, 'file://*')

# styles, cosmetics
# c.content.user_stylesheets = ["~/.config/qutebrowser/styles/youtube-tweaks.css"]
c.tabs.padding = {'top': 5, 'bottom': 5, 'left': 9, 'right': 9}
c.tabs.indicator.width = 0 # no tab indicators
# c.window.transparent = True # apparently not needed
c.tabs.width = '7%'

# fonts
c.fonts.default_family = []
c.fonts.default_size = '11pt'
c.fonts.web.family.fixed = 'JetBrainsMono Nerd Font'
c.fonts.web.family.sans_serif = 'JetBrainsMono Nerd Font'
c.fonts.web.family.serif = 'JetBrainsMono Nerd Font'
c.fonts.web.family.standard = 'JetBrainsMono Nerd Font'

# privacy - adjust these settings based on your preference
# config.set("completion.cmd_history_max_items", 0)
# config.set("content.private_browsing", True)
config.set("content.webgl", False, "*")
config.set("content.canvas_reading", False)
config.set("content.geolocation", False)
config.set("content.webrtc_ip_handling_policy", "default-public-interface-only")
config.set("content.cookies.accept", "all")
config.set("content.cookies.store", True)
config.set("tabs.position", "left")
# config.set("content.javascript.enabled", False) # tsh keybind to toggle

# Adblocking 
c.content.blocking.enabled = True
c.content.blocking.method = 'adblock' # uncomment this if you install python-adblock
c.content.blocking.adblock.lists = [
        "https://easylist.to/easylist/easylist.txt",
        "https://easylist.to/easylist/easyprivacy.txt",
        "https://easylist-downloads.adblockplus.org/easylistdutch.txt",
        "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt",
        "https://www.i-dont-care-about-cookies.eu/abp/",
        "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/legacy.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2021.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2022.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2023.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2024.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badware.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances-cookies.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances-others.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/quick-fixes.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt"
]

config.source('qutewal.py')
