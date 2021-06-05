<#import "parts/common.ftl" as common>

<@common.page>
    <div class="container d-flex vh-100">
        <div class="d-flex m-auto align-items-center w-50 h-100">
            <form action="/api/user" method="post" class="w-100">
                <div class="form-group row mb-3">
                    <div class="col-sm-4">
                        <label for="fullName" class="form-label">ФИО</label>
                    </div>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="fullName" name="fullName"/>
                    </div>
                </div>
                <div class="form-group row mb-3">
                    <div class="col-sm-4">
                        <label for="login" class="form-label">Логин</label>
                    </div>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="login" name="login"/>
                    </div>
                </div>
                <div class="form-group row mb-3">
                    <div class="col-sm-4">
                        <label for="password" class="form-label">Пароль</label>
                    </div>
                    <div class="col-sm-7">
                        <input type="password" class="form-control" id="password" name="password"/>
                    </div>
                </div>
                <div class="form-group row mb-3">
                    <div class="col-sm-4">
                        <label for="email" class="form-label">E-mail</label>
                    </div>
                    <div class="col-sm-7">
                        <input type="email" class="form-control" id="email" name="email"/>
                    </div>
                </div>
                <div class="form-group row mb-3">
                    <div class="col-sm-4">
                        <label for="phoneNumber" class="form-label">Номер телефона</label>
                    </div>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="phoneNumber" name="phoneNumber"/>
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <a href="/login" class="me-2">Вернуться</a>
                <button type="submit" class="btn btn-primary">Зарегистрироваться</button>
            </form>
        </div>
    </div>
</@common.page>