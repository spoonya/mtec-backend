@extends('layouts.app')

@section('content')
    <section class="nav" style="background-image: linear-gradient(180deg, #000000 0%, rgba(0, 0, 0, 0) 17.16%), linear-gradient(180deg, rgba(0, 0, 0, 0) 47.94%, #000000 100%), url(img/abiturient-nav-bg.jpg)">
        <div class="nav__inner">
            <h2 class="nav__title">Абитуриенту</h2>
            <nav class="nav__items"><a class="nav__link" href="/">Главная</a><a class="nav__link nav__link--active" href="/abituriyentu">Абитуриенту</a></nav>
        </div>
    </section>
    <section class="abitur container">
        <h2 class="abitur__title">Наши специальности</h2>
        @if(!$specialties->isEmpty())
            <ul class="abitur__list">
                @foreach($specialties as $speciality)
                    <li class="abitur__list-item">
                        @if($speciality->isReception())
                            <a href="/specialties/{{$speciality->slug}}">- {{$speciality->name}}</a>
                        @else
                            - {{$speciality->name}} (Набор не вдётся!)
                        @endif
                    </li>
                @endforeach
            </ul>
        @endif
        <h2 class="abitur__title">Cроки приема документов и испытания</h2>
        <p class="abitur__text">Прием в колледж осуществляется на конкурсной основе в соответствии с контрольными цифрами приема на условиях оплаты подготовки юридическими (в том числе организаций потребительской кооперации) или физическими лицами.</p>
        <p class="abitur__text">Преимущественное право на зачисление по всем формам обучения при одинаковом количестве баллов, кроме лиц, указанных в Правилах приема в средние специальные учебные заведения и Правилах приема в учреждения, обеспечивающие получение профессионально-технического образования, имеют абитуриенты, имеющие направления организаций потребительской кооперации.</p>
        <table class="abitur__table">
            <caption>Уровень среднего специального образования</caption>
            <tr>
                <th></th>
                <th>На основе общего базового образования</th>
                <th>На основе общего среднего образования (профессионально-технического с общим средним образованием)</th>
            </tr>
            <tr>
                <td class="abitur__table-subtitle" colspan="3">Прием документов</td>
            </tr>
            <tr>
                <td>На платной основе</td>
                <td>С 20 июля по 14 августа</td>
                <td>С 20 июля по 16 августа</td>
            </tr>
            <tr>
                <td class="abitur__table-subtitle" colspan="3">Зачисление</td>
            </tr>
            <tr>
                <td>На платной основе</td>
                <td>По 16 августа</td>
                <td>По 17 августа</td>
            </tr>
        </table>
        <p class="table__ps">Зачисление на все формы получения образования осуществляется по конкурсу среднего балла документа об образовании.</p>
        <p class="abitur__text">Прием документов от иностранных граждан и лиц без гражданства: за счет средств бюджета или на платной основе в соответствии с международными договорами Республики Беларусь - по 3 августа; на платной основе по результатам итоговой аттестации при освоении содержания образовательной программы подготовки лиц к поступлению в учреждения образования Республики Беларусь - по 3 августа;</p>
        <p class="abitur__text">На платной основе по результатам собеседования в учреждении среднего специального образования, устанавливающего уровень владения ими языком, на котором осуществляется образовательный процесс, в объеме, достаточном для освоения содержания образовательной программы среднего специального образования, - по 15 октября.</p>
        <h2 class="abitur__title">Документы</h2>
        <ul class="abitur__list">
            <li class="abitur__list-item">Заявление на имя руководителя учреждения образования по установленной форме;</li>
            <li class="abitur__list-item">Документ об образовании (оригинал) и приложения к нему;</li>
            <li class="abitur__list-item">Медицинская справка по форме установленной Министерством здравоохранения;</li>
            <li class="abitur__list-item">6 конвертов с марками по РБ;</li>
            <li class="abitur__list-item">6 фотографий размером 3х4 см;</li>
            <li class="abitur__list-item">Выписку из трудовой книжки (для поступающих на заочную форму обучения);</li>
            <li class="abitur__list-item">Направление заказчика на подготовку абитуриента (для абитуриентов, поступающих на условиях оплаты подготовки юридическими (в том числе организациями потребительской кооперации) лицами);</li>
            <li class="abitur__list-item">Документы, подтверждающие право абитуриента на льготы при приеме на обучение;</li>
            <li class="abitur__list-item">Карта прививок (для поступающих на дневную форму получения образования);</li>
            <li class="abitur__list-item">Папка-скоросшиватель (картонная);</li>
            <li class="abitur__list-item">Абитуриент лично предоставляет паспорт или документ, который его заменяет.</li>
            <li class="abitur__list-item">Родители лично предоставляют паспорт или документ, который его заменяет для заключения договора.</li>
        </ul>
        <h2 class="abitur__title">Квалификационная характеристика специалиста</h2>
        <ul class="character__list">
            <li class="character__list-list"><a href="#">Образовательный стандарт Среднее специальное образование Специальность 2-25 01 35 Бухгалтерский учет, анализ и контроль 2015 г.</a></li>
            <li class="character__list-list"><a href="#">Образовательный стандарт Среднее специальное образование Специальность 2-40-01 01 Программное обеспечение информационных технологий 2019 г.</a></li>
            <li class="character__list-list"><a href="#">Образовательный стандарт Среднее специальное образование Специальность 2-25 01 10 Коммерческая деятельность (Экономическая деятельность и услуги) 2017 г.</a></li>
            <li class="character__list-list"><a href="#">Образовательный стандарт Среднее специальное образование Специальность 2-24 01 02 Правоведение 2016 г.</a></li>
            <li class="character__list-list"><a href="#">Образовательный стандарт Среднее специальное образование Специальность 2-25 01 01 Коммерческая деятельность (Товароведение) 2017 г.</a></li>
            <li class="character__list-list"><a href="#">Образовательный стандарт Среднее специальное образование Специальность 2-26 02 32 Операционная деятельность в логистике  2016 г.</a></li>
            <li class="character__list-list"><a href="#">Образовательный стандарт Среднее специальное образование Специальность 2-26 02 33 Визуальный мерчендайзинг 2018 г.</a></li>
        </ul>
        <h2 class="abitur__title">График работы приемной комиссии</h2>
        <p class="table__ps">Приемная комиссия работает: понедельник - суббота с 9:00 до 18:00</p>
        <p class="abitur__subtitle">Сроки приёма документов:</p>
        <p class="abitur__term">Уровень среднего специального образования</p>
        <p>на основе общего базового образования - с 20 июля по 14 августа(включительно).</p>
        <p>на основе общего среднего образования - с 20 июля по 16 августа(включительно).</p>
        <p class="abitur__subtitle">Открытое зачисление абитуриентов в число учащихся:</p>
        <p class="abitur__term">Уровень среднего специального образования</p>
        <p>на основе общего базового образования - 16 августа 2019 года в 12-00 (актовый зал колледжа).</p>
        <p>на основе общего среднего образования - 17 августа 2019 года в 12-00 (актовый зал колледжа).</p>
    </section>
@endsection
