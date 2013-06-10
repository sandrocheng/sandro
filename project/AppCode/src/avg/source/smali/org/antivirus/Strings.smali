.class public Lorg/antivirus/Strings;
.super Ljava/lang/Object;


# static fields
.field public static final APPLICATION_DEFAULT_LANG:Ljava/lang/String; = "English"

.field public static final ARABIC:Ljava/lang/String; = "Arabic"

.field public static final CHINESE:Ljava/lang/String; = "Chinese Simplified"

.field public static final CHINESE_TRADITIONAL:Ljava/lang/String; = "Chinese Traditional"

.field public static final CZECH:Ljava/lang/String; = "Czech"

.field public static final DUTCH:Ljava/lang/String; = "Dutch"

.field public static final ENGLISH:Ljava/lang/String; = "English"

.field public static final FRENCH:Ljava/lang/String; = "French"

.field public static final GERMAN:Ljava/lang/String; = "German"

.field public static final HEBREW:Ljava/lang/String; = "Hebrew"

.field public static final ITALIAN:Ljava/lang/String; = "Italian"

.field public static final JAPANESE:Ljava/lang/String; = "Japanese"

.field public static final KOREAN:Ljava/lang/String; = "Korean"

.field public static final LANGSETTING:Ljava/lang/String; = "langsetting"

.field public static final OVERRIDE_DEFAULT_LANG:Z = false

.field public static final PLACEHOLDER_APPNAME:Ljava/lang/String; = "[appname]"

.field public static final PLACEHOLDER_CATEGORY:Ljava/lang/String; = "[category]"

.field public static final PLACEHOLDER_DATE1:Ljava/lang/String; = "[date1]"

.field public static final PLACEHOLDER_DATE2:Ljava/lang/String; = "[date2]"

.field public static final PLACEHOLDER_NUMBER:Ljava/lang/String; = "[number]"

.field public static final PLACEHOLDER_PWD:Ljava/lang/String; = "[password]"

.field public static final PLACEHOLDER_TOTAL:Ljava/lang/String; = "[total]"

.field public static final PLACEHOLDER_URL:Ljava/lang/String; = "[url]"

.field public static final PLACEHOLDER_USED:Ljava/lang/String; = "[used]"

.field public static final POLISH:Ljava/lang/String; = "Polish"

.field public static final PORTUGUESE:Ljava/lang/String; = "Portuguese"

.field public static final RUSSIAN:Ljava/lang/String; = "Russian"

.field public static final SPANISH:Ljava/lang/String; = "Spanish"

.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static final c:Ljava/util/HashMap;

.field private static final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    sput-object v0, Lorg/antivirus/Strings;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "English"

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "Hebrew"

    const-string v2, "iw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "Spanish"

    const-string v2, "es"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "Japanese"

    const-string v2, "ja"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "French"

    const-string v2, "fr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "Dutch"

    const-string v2, "nl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "German"

    const-string v2, "de"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "Chinese Simplified"

    const-string v2, "zh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "Chinese Traditional"

    const-string v2, "zh_TW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "Russian"

    const-string v2, "ru"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "Korean"

    const-string v2, "ko"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "Italian"

    const-string v2, "it"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "Polish"

    const-string v2, "pl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "Portuguese"

    const-string v2, "pt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "Arabic"

    const-string v2, "ar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "Czech"

    const-string v2, "cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "en"

    const-string v2, "English"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "he"

    const-string v2, "Hebrew"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "iw"

    const-string v2, "Hebrew"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "es"

    const-string v2, "Spanish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "jp"

    const-string v2, "Japanese"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "ja"

    const-string v2, "Japanese"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "fr"

    const-string v2, "French"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "nl"

    const-string v2, "Dutch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "de"

    const-string v2, "German"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "cn"

    const-string v2, "Chinese Simplified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "zh"

    const-string v2, "Chinese Simplified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "zh_TW"

    const-string v2, "Chinese Traditional"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "ru"

    const-string v2, "Russian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "ko"

    const-string v2, "Korean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "it"

    const-string v2, "Italian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "pl"

    const-string v2, "Polish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "pt"

    const-string v2, "Portuguese"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "ar"

    const-string v2, "Arabic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    const-string v1, "cs"

    const-string v2, "Czech"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "locale"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "langsetting"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "langsetting"

    const-string v2, "English"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lorg/antivirus/Strings;->setLanguage(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lorg/antivirus/Strings;->setLanguage(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_1
    const-string v0, "English"

    invoke-static {p0, v0, v1}, Lorg/antivirus/Strings;->setLanguage(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private static a()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Lorg/antivirus/AvApplication;->getInstance()Lorg/antivirus/AvApplication;

    move-result-object v1

    sput-object v1, Lorg/antivirus/Strings;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v1, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    if-eqz v1, :cond_2

    sget-object v1, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/antivirus/Strings;->a(Landroid/content/Context;)V

    :cond_2
    sget-object v1, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2d

    if-eq v0, p0, :cond_1

    const/16 v0, 0x3a

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/antivirus/Strings;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    sget-object v1, Lorg/antivirus/Strings;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 8

    const/16 v6, 0x7e

    const-string v0, "empty"

    :try_start_0
    invoke-static {}, Lorg/antivirus/Strings;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_7

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_7

    const-string v0, "~"

    const-string v2, " "

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    move-object v0, v1

    :goto_0
    :try_start_2
    sget-object v1, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Resource == null"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "Configuration == null"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v1, :cond_3

    const-string v1, "locale == null"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/antivirus/Strings;->getLocale()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    sget-object v4, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/antivirus/Strings;->b:Ljava/lang/String;

    sget-object v5, Lorg/antivirus/Strings;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "zh_TW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    :try_start_4
    new-instance v1, Landroid/content/res/Configuration;

    sget-object v2, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    const-string v2, "zh_TW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :goto_3
    sget-object v2, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_0

    const-string v1, "~"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_5
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto/16 :goto_2

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static getStringArray(I)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "empty"

    aput-object v2, v0, v1

    :try_start_0
    invoke-static {}, Lorg/antivirus/Strings;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static reverseDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/antivirus/Strings;->a(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move v5, v1

    move v1, v0

    move v0, v5

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-static {v0}, Lorg/antivirus/Strings;->a(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setLangLocale()V
    .locals 3

    invoke-static {}, Lorg/antivirus/Strings;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/antivirus/Strings;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/antivirus/Strings;->a(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lorg/antivirus/Strings;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    sget-object v1, Lorg/antivirus/Strings;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "localeId is null, searched for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/antivirus/Strings;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    const-string v0, "en"

    :cond_1
    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    :goto_0
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance v1, Landroid/content/res/Configuration;

    sget-object v2, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v0, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static setLanguage(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "locale"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_0

    sput-object p1, Lorg/antivirus/Strings;->b:Ljava/lang/String;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "langsetting"

    sget-object v2, Lorg/antivirus/Strings;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static updateTo2_9(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lorg/antivirus/Strings;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/antivirus/Strings;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/antivirus/Strings;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/antivirus/Strings;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/antivirus/Strings;->setLanguage(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method
