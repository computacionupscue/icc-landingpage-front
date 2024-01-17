enum PAGES {
  loading,
  login,
  home,
  formulario,
  directiva,
  malla,
  asu,
  proyectos,
  perfilColab,
  admin,
  listProyectos,
  listRegistros,
  addProyectos
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
        return "perfilColab/:id";
      case PAGES.admin:
        return "/admin";
      case PAGES.listProyectos:
        return "listProyectos";
      case PAGES.listRegistros:
        return "listRegistros";
      case PAGES.addProyectos:
        return "addProyectos";
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
      case PAGES.admin:
        return "admin";
      case PAGES.listProyectos:
        return "listProyectos";
      case PAGES.listRegistros:
        return "listRegistros";
      case PAGES.addProyectos:
        return "addProyectos";
    }
  }
}
