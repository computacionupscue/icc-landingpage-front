enum PAGES {
  loading,
  login,
  home,
}

extension AppPageExtension on PAGES {
  String get pagePath {
    switch (this) {
      case PAGES.loading:
        return "/";
      case PAGES.login:
        return "/login";
      case PAGES.home:
        return "/home";
    }
  }

  String get pageName {
    switch (this) {
      case PAGES.loading:
        return "loading";
      case PAGES.login:
        return "login";
      case PAGES.home:
        return "home";
    }
  }
}
