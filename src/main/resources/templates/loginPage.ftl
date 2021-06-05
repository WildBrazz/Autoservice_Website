<#import "parts/common.ftl" as common>

<@common.page>
    <div class="container d-flex vh-100">
        <div class="d-flex m-auto align-items-center w-50 h-100">
            <form action="/login" method="post" class="w-100">
                <div class="form-group row mb-3">
                    <div class="col-sm-4">
                        <label for="login" class="form-label">Логин</label>
                    </div>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="login" name="username">
                    </div>
                </div>
                <div class="form-group row mb-3">
                    <div class="col-sm-4">
                        <label for="password" class="form-label">Пароль</label>
                    </div>
                    <div class="col-sm-7">
                        <input type="password" class="form-control" id="password" name="password">
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <a href="/registration" class="me-2">Зарегистрироваться</a>
                <button type="submit" class="btn btn-primary">Войти</button>
            </form>
        </div>
    </div>
</@common.page>