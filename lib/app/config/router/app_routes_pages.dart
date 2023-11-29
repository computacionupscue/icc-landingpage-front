enum PAGES {
  loading,
  login,
  home,
  formulario,
  directiva,
  malla,
  asu,
  proyectos,
  perfilColab
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
      case PAGES.formulario:
        return "/formulario";
      case PAGES.directiva:
        return "/directiva";
      case PAGES.malla:
        return "/malla";
      case PAGES.asu:
        return "/asu";
      case PAGES.proyectos:
        return "/proyectos";
      case PAGES.perfilColab:
        return "/perfilColaboradores";
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
      case PAGES.formulario:
        return "formulario";
      case PAGES.directiva:
        return "directiva";
      case PAGES.malla:
        return "malla";
      case PAGES.asu:
        return "asu";
      case PAGES.proyectos:
        return "proyectos";
      case PAGES.perfilColab:
        return "perfilColaboradores";
    }
  }
}
