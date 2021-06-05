<#import "parts/common.ftl" as common>

<@common.page>
    <div class="container">
        <div class="row mt-3">
            <h1>Здравствуйте, ${common.username}!</h1>
        </div>
        <div class="row mt-3">
            <h3 class="col">Ваши автомобили</h3>
            <div class="col-3 align-self-end dropdown">
                <button type="button" class="btn btn-outline-primary dropdown-toggle" id="addCarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                    Добавить автомобиль
                </button>
                <div class="dropdown-menu">
                    <form method="post" action="/api/car" class="px-4 py-3">
                        <div class="mb-3">
                            <label for="addCarName" class="form-label">Марка и модель автомобиля</label>
                            <input type="text" class="form-control" id="addCarName" name="name">
                        </div>
                        <div class="mb-3">
                            <label for="addCarVin" class="form-label">Идентификационный номер (VIN)</label>
                            <input type="text" class="form-control" id="addCarVin" name="vin">
                        </div>
                        <div class="mb-3">
                            <label for="addCarRegistrationNumber" class="form-label">Государственный регистрационный
                                номер</label>
                            <input type="text" class="form-control" id="addCarRegistrationNumber"
                                   name="registrationNumber">
                        </div>
                        <div class="mb-3">
                            <label for="addCarIssueYear" class="form-label">Год выпуска</label>
                            <input type="number" class="form-control" id="addCarIssueYear" name="issueYear">
                        </div>
                        <div class="mb-3">
                            <label for="addCarMileage" class="form-label">Пробег</label>
                            <input type="number" class="form-control" id="addCarMileage" name="mileage">
                        </div>
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <button type="submit" class="btn btn-primary">Добавить автомобиль</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="row mt-3">
            <ul class="list-group">
                <#list user.getOwnedCars() as car>
                    <li class="list-group-item d-flex">
                        <h5 class="col">${car.name}</h5>
                        <p class="col-1">${car.issueYear}</p>
                        <p class="col-1">${car.mileage}</p>
                    </li>
                </#list>
            </ul>
            <div class="col-sm-3">
                <a href="#" class="list-group-item list-group-item-action" aria-current="true">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-2">Nissan Qashqai</h5>
                        <small>2007</small>
                    </div>
                    <p class="mb-1">Гос. номер: Б 207 АК | 52</p>
                    <P class="mb-1">Пробег: 500 426</P>
                </a>
            </div>
            <div class="col-sm-3">
                <a href="#" class="list-group-item list-group-item-action" aria-current="true">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-2">Mitsubishi Outlander</h5>
                        <small>2011</small>
                    </div>
                    <p class="mb-1">Гос. номер: Г 311 ГБ | 64</p>
                    <p class="mb-1">Пробег: 288 301</p>
                </a>
            </div>
            <div class="col-sm-3">
                <a href="#" class="list-group-item list-group-item-action" aria-current="true">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-2">Mercedes G-63</h5>
                        <small>2013</small>
                    </div>
                    <p class="mb-1">Гос. номер: П 314 ДР | 128</p>
                    <p class="mb-1">Пробег: 432 051</p>
                </a>
            </div>
        </div>
    </div>
</@common.page>