app

.config(["localStorageServiceProvider", function(localStorageServiceProvider) {
    localStorageServiceProvider.setPrefix("myFuckingAwesomeProject");
}])

.config(["$translateProvider", function($translateProvider) {

    var zh_tw = {
        "Index": "首頁"
    };

    $translateProvider.translations("zh_tw", zh_tw);
    $translateProvider.translations("zh_TW", zh_tw);

    $translateProvider
    .registerAvailableLanguageKeys(["zh_tw"], {
        "zh*": "zh_tw"
    })
    .useStorage("localStorageService")
    .determinePreferredLanguage();

}])

;
