.class public final Lorg/antivirus/license/qrreader/general/LocaleManager;
.super Ljava/lang/Object;


# static fields
.field private static final COUNTRY:Ljava/lang/String; = null

.field private static final DEFAULT_COUNTRY:Ljava/lang/String; = "US"

.field private static final DEFAULT_LANGUAGE:Ljava/lang/String; = "en"

.field private static final DEFAULT_TLD:Ljava/lang/String; = "com"

.field private static final GOOGLE_BOOK_SEARCH_COUNTRY_TLD:Ljava/util/Map;

.field private static final GOOGLE_COUNTRY_TLD:Ljava/util/Map;

.field private static final GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

.field private static final LANGUAGE:Ljava/lang/String;

.field private static final TRANSLATED_HELP_ASSET_LANGUAGES:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "US"

    :goto_0
    sput-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->COUNTRY:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v0, "en"

    :goto_1
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/antivirus/license/qrreader/general/LocaleManager;->COUNTRY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sput-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->LANGUAGE:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "AR"

    const-string v2, "com.ar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "AU"

    const-string v2, "com.au"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "BR"

    const-string v2, "com.br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "BG"

    const-string v2, "bg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ca"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "CZ"

    const-string v2, "cz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "DK"

    const-string v2, "dk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "FI"

    const-string v2, "fi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "GR"

    const-string v2, "gr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "HU"

    const-string v2, "hu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "ID"

    const-string v2, "co.id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "IL"

    const-string v2, "co.il"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "co.jp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "co.kr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "NL"

    const-string v2, "nl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "PL"

    const-string v2, "pl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "PT"

    const-string v2, "pt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "RU"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "SK"

    const-string v2, "sk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "SI"

    const-string v2, "si"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "ES"

    const-string v2, "es"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "SE"

    const-string v2, "se"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "TR"

    const-string v2, "com.tr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "co.uk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "AU"

    const-string v2, "com.au"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "co.jp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "NL"

    const-string v2, "nl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    const-string v1, "ES"

    const-string v2, "es"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "co.uk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sput-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_BOOK_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "en"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->TRANSLATED_HELP_ASSET_LANGUAGES:Ljava/util/Collection;

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doGetTLD(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->COUNTRY:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "com"

    :cond_0
    return-object v0
.end method

.method private static doGetTLD(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_search_country"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->COUNTRY:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "com"

    goto :goto_0
.end method

.method public static getBookSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_BOOK_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    invoke-static {v0, p0}, Lorg/antivirus/license/qrreader/general/LocaleManager;->doGetTLD(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryTLD(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    invoke-static {v0, p0}, Lorg/antivirus/license/qrreader/general/LocaleManager;->doGetTLD(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    invoke-static {v0, p0}, Lorg/antivirus/license/qrreader/general/LocaleManager;->doGetTLD(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTranslatedAssetLanguage()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->TRANSLATED_HELP_ASSET_LANGUAGES:Ljava/util/Collection;

    sget-object v1, Lorg/antivirus/license/qrreader/general/LocaleManager;->LANGUAGE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/antivirus/license/qrreader/general/LocaleManager;->LANGUAGE:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "en"

    goto :goto_0
.end method

.method public static isBookSearchUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://google.com/books"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://books.google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
