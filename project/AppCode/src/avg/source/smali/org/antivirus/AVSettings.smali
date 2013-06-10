.class public Lorg/antivirus/AVSettings;
.super Ljava/lang/Object;


# static fields
.field public static final APP_ICON:I = 0x7f020051

.field public static final BUY_ALARM_TIMEOUT:I = 0x2710

.field public static final INTERVAL_TRAFFIC_COUNTER:I = 0xea60

.field public static final IS_DISABLE_CENTRAL_SEND_LOC:Z = false

.field public static LICENSE_BUY_NOTIFICATION_TIME:[I = null

.field public static final PARTNER_LOGO:I = 0x7f0200f4

.field public static final TAG_APPLOCKER_PREFERENCES_FILE:Ljava/lang/String; = "noel"

.field public static final UI_TIMEOUT:J = 0x3a98L

.field private static a:Landroid/content/SharedPreferences;

.field private static b:Landroid/content/SharedPreferences$Editor;

.field private static c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

.field private static d:Z

.field public static isPasswordApproved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lorg/antivirus/AVSettings;->isPasswordApproved:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/antivirus/AVSettings;->LICENSE_BUY_NOTIFICATION_TIME:[I

    sput-boolean v1, Lorg/antivirus/AVSettings;->d:Z

    return-void

    :array_0
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "av"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    const-string v0, "pref is null"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v2, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v3, "first_use"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "tatzpinbekalut"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    new-instance v1, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v2, "noel"

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    sput-object v1, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    :try_start_1
    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Lorg/antivirus/AVSettings$1;

    invoke-direct {v1, p0}, Lorg/antivirus/AVSettings$1;-><init>(Lorg/antivirus/AVSettings;)V

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {p1}, Lorg/antivirus/AVSettings;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/antivirus/AVSettings;->c(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v2, "tatzpinbekalut"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v0, "got null"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_1

    aget-byte v2, v3, v0

    xor-int/lit8 v2, v2, 0xc

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, ""

    move-object v2, v0

    move v0, v1

    :goto_2
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/a/a/a/a/a;->a([BZ)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a()V
    .locals 0

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lorg/antivirus/AVSettings;->d:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v2, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v3, "version"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0}, Lorg/antivirus/AVSettings;->b(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v2, v3, :cond_1

    :goto_1
    sput-boolean v1, Lorg/antivirus/AVSettings;->d:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method private static b()Landroid/content/SharedPreferences$Editor;
    .locals 1

    sget-object v0, Lorg/antivirus/AVSettings;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lorg/antivirus/AVSettings;->b:Landroid/content/SharedPreferences$Editor;

    :cond_0
    sget-object v0, Lorg/antivirus/AVSettings;->b:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x5

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const-string v0, "got null"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_0

    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v5, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    move v0, v1

    :goto_2
    array-length v1, v2

    if-ge v0, v1, :cond_4

    aget-byte v1, v2, v0

    xor-int/lit8 v1, v1, 0xc

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 12

    const/16 v5, 0x1434

    const/16 v4, 0xc09

    const/16 v3, 0xa42

    const/4 v11, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    :try_start_0
    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "version"

    const/4 v7, 0x0

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    invoke-static {v6}, Lorg/antivirus/AVSettings;->b(Landroid/content/Context;)I

    move-result v0

    sget-object v7, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "version"

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    sub-long/2addr v7, v9

    new-instance v1, Lorg/antivirus/core/EngineSettings;

    invoke-direct {v1, v6}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7, v8}, Lorg/antivirus/core/EngineSettings;->setNextSecurityUpdate(J)V

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/a/a;->a(Ljava/io/File;)V

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/Android/data/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/files/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/antivirus/a/a;->a(Ljava/io/File;)V

    :cond_0
    const-string v1, "eeexlfn"

    invoke-virtual {v6, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "eeexlfnl"

    invoke-virtual {v6, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    if-gt v0, v3, :cond_3

    move v0, v3

    :cond_2
    :goto_1
    sparse-switch v0, :sswitch_data_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    move v1, v2

    :goto_3
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0

    :cond_3
    if-gt v0, v4, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    if-gt v0, v5, :cond_5

    move v0, v5

    goto :goto_1

    :cond_5
    const v1, 0x29334

    if-gt v0, v1, :cond_6

    const v0, 0x29334

    goto :goto_1

    :cond_6
    const v1, 0x29a2a

    if-gt v0, v1, :cond_7

    const v0, 0x29a2a

    goto :goto_1

    :cond_7
    const v1, 0x29eb6

    if-gt v0, v1, :cond_8

    const v0, 0x29eb6

    goto :goto_1

    :cond_8
    const v1, 0x2a046

    if-gt v0, v1, :cond_9

    const v0, 0x2a046

    goto :goto_1

    :cond_9
    const v1, 0x2a472

    if-gt v0, v1, :cond_a

    const v0, 0x2a472

    goto :goto_1

    :cond_a
    const v1, 0x2a892

    if-gt v0, v1, :cond_2

    const v0, 0x2a892

    goto :goto_1

    :sswitch_0
    sget-object v0, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "noel"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    sput-object v0, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    :cond_b
    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "applocker_user_password"

    sget-object v1, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    sget-object v3, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v3, "xx1"

    invoke-virtual {v0, v3, v1}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_c
    const-string v0, "applocker_email_password_entered"

    sget-object v1, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v3, "xx3"

    sget-object v4, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->putUnObfuscatedBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v1, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_d
    const-string v0, "unlock_pass"

    sget-object v1, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    sget-object v3, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "xx4"

    invoke-static {v1}, Lorg/antivirus/AVSettings;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_e
    const-string v0, "loxxer_pass"

    sget-object v1, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    sget-object v3, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "xx5"

    invoke-static {v1}, Lorg/antivirus/AVSettings;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_f
    const-string v0, "findR_user"

    sget-object v1, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    sget-object v3, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "xx6"

    invoke-static {v1}, Lorg/antivirus/AVSettings;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_10
    :sswitch_1
    const-string v0, "lang"

    sget-object v1, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    sget-object v3, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v1}, Lorg/antivirus/Strings;->updateTo2_9(Ljava/lang/String;)V

    :cond_11
    :try_start_2
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    const-string v0, ""

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setApplockerUserPassword(Ljava/lang/String;)V

    new-instance v0, Lorg/antivirus/applocker/a;

    invoke-direct {v0}, Lorg/antivirus/applocker/a;-><init>()V

    invoke-static {v6, v11}, Lorg/antivirus/applocker/a;->a(Landroid/content/Context;[Ljava/lang/String;)V

    :sswitch_2
    const-string v0, "ads_keywords"

    sget-object v1, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    sget-object v1, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_12
    :sswitch_3
    const-string v0, "use_jni_Scan"

    sget-object v1, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    sget-object v1, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_13
    :sswitch_4
    const-string v0, "finder_mail"

    invoke-virtual {v6, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "finder_mail"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    new-instance v3, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v4, "XX8R"

    const/4 v5, 0x1

    invoke-direct {v3, v6, v4, v2, v5}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    const-string v2, "XX8R"

    invoke-virtual {v3, v2, v1}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v3}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "finder_mail"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_14
    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/shared_prefs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "finder_mail.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :sswitch_5
    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/shared_prefs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :sswitch_6
    sget-object v0, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "pass_recover_mail_addr"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    sget-object v1, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v2, "doarxahazala_tajlei"

    invoke-virtual {v1, v2, v0}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_15
    sget-object v0, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "pass_recover_mail_addr"

    invoke-virtual {v0, v1}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->remove(Ljava/lang/String;)Z

    sget-object v0, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    invoke-virtual {v0}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->commit()Z

    :sswitch_7
    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ScanResult.obj"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :sswitch_8
    new-instance v0, Lorg/antivirus/core/c/b;

    invoke-direct {v0}, Lorg/antivirus/core/c/b;-><init>()V

    invoke-virtual {v0, v6}, Lorg/antivirus/core/c/b;->b(Landroid/content/Context;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto/16 :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0xa42 -> :sswitch_0
        0xc09 -> :sswitch_1
        0x1434 -> :sswitch_2
        0x29334 -> :sswitch_3
        0x29a2a -> :sswitch_4
        0x29eb6 -> :sswitch_5
        0x2a046 -> :sswitch_6
        0x2a472 -> :sswitch_7
        0x2a892 -> :sswitch_8
    .end sparse-switch
.end method

.method public static commGetValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "commManager_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPTY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static commRmValue(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "commManager_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static commSetValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "commManager_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static commit()V
    .locals 1

    sget-object v0, Lorg/antivirus/AVSettings;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/antivirus/AVSettings;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    sput-object v0, Lorg/antivirus/AVSettings;->b:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public static decryptit(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x5

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const-string v0, "got null"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_0

    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v5, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    move v0, v1

    :goto_2
    array-length v1, v2

    if-ge v0, v1, :cond_4

    aget-byte v1, v2, v0

    xor-int/lit8 v1, v1, 0xb

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static disableBlockedWaring()V
    .locals 3

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_blocked_warning"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static disableTrustedWaring()V
    .locals 3

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_trusted_warning"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static encryptit(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v0, "got null"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_1

    aget-byte v2, v3, v0

    xor-int/lit8 v2, v2, 0xb

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, ""

    move-object v2, v0

    move v0, v1

    :goto_2
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/a/a/a/a/a;->a([BZ)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAcceptLicenseReminderTime()J
    .locals 4

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "accept_license_reminder"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAppLockerPassRecoveryMailAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "doarxahazala_tajlei"

    invoke-static {p0}, Lorg/antivirus/tools/MailUtils;->getMainMailAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppUnlockPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/antivirus/AVSettings;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/antivirus/AVSettings;->c(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "xx4"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/AVSettings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApplockerUserPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/antivirus/AVSettings;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/antivirus/AVSettings;->c(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "xx1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuyNotificationyShownIdx()I
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "buy_notification"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getC2dmToken()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "c2dm_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataCycleUnits()I
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_cycle_units"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDataCycleValues()I
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_cycle_value"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDataPlanBillingDate()J
    .locals 4

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "billing_date"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDataPlanNotificationThreshold()I
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_notification_threshold"

    const/16 v2, 0x5a

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDataQuota()I
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_quota"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDataQuotaBytes()J
    .locals 4

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_quota_bytes"

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDataQuotaUnits()I
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "data_plan_quota_units"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDataRefreshRate()I
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "refresh_rate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDefaultAutoRejectMessage()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "default_auto_reject_message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFindRUser(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/antivirus/AVSettings;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/antivirus/AVSettings;->c(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "xx6"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/AVSettings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastBackupTime()J
    .locals 4

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_backup_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastBatteryThreshold()I
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_battery_threshold"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLastUsedVersionName()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_used_version_name"

    const-string v2, "1.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogExceptions()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "le"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLogToFile()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "ltf"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLogUpdateTimeStamp()J
    .locals 4

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "log_update_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLostMsg()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "updated_lost_msg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMainMailAccount()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "main_mail_account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermLock()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "loxxer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPowerSavingModeThreshold()I
    .locals 4

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "notify_on_low_battery_threshold"

    sget-object v2, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->c:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPremPass(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/antivirus/AVSettings;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/antivirus/AVSettings;->c(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "xx5"

    const-string v2, "1234"

    invoke-static {v2}, Lorg/antivirus/AVSettings;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/AVSettings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQuotaUsageWarningId()I
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "quota_usage_notified_warning_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUrlFilter()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "url_filter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getVersionUpdateNotificationLastTime()J
    .locals 4

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "version_update_last_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isApplockerEmailEntered(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lorg/antivirus/AVSettings;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/antivirus/AVSettings;->c(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "xx3"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->getUnObfuscatedBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoScanApp()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "auto_scan_app"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDataCountRestart()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "restart_data_count"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFlashLightOn()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "flash_light_on"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPowerSavingMode()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "notify_on_low_battery"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isQuotaOngoingNotification()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "quota_ongoing_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isQuotaWarningNotificationOn()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "notify_on_data_plan_threshold"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTrafficCounterOn()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "traffic_counter_on"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUrlAntiPhishingEnabled()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "url_anti_phishing_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static markAsUsed()V
    .locals 3

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_use"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setAcceptLicenseReminderTime(J)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accept_license_reminder"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setAppLockerPassRecoveryMailAddr(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "doarxahazala_tajlei"

    invoke-virtual {v0, v1, p0}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setAppUnlockPassword(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "xx4"

    invoke-static {p0}, Lorg/antivirus/AVSettings;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setApplockerEmailEntered(Z)V
    .locals 2

    sget-object v0, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "xx3"

    invoke-virtual {v0, v1, p0}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->putUnObfuscatedBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setApplockerUserPassword(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/antivirus/AVSettings;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "xx1"

    invoke-virtual {v0, v1, p0}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setAutoScanApp(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_scan_app"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setBuyNotificationyShownIdx(I)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "buy_notification"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setC2dmToken(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "c2dm_token"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setDataCountRestart(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "restart_data_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setDataCycleUnits(I)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_plan_cycle_units"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setDataCycleValues(I)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_plan_cycle_value"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setDataPlanBillingDate(J)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "billing_date"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setDataPlanNotificationThreshold(I)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_plan_notification_threshold"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setDataQuota(I)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_plan_quota"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setDataQuotaBytes(J)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_plan_quota_bytes"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setDataQuotaUnits(I)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_plan_quota_units"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setDataRefreshRate(I)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refresh_rate"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setDefaultAutoRejectMessage(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_auto_reject_message"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setFindRUser(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "xx6"

    invoke-static {p0}, Lorg/antivirus/AVSettings;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setFlashLightOn(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "flash_light_on"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setLastBackupTime(J)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_backup_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setLastBatteryThreshold(I)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_battery_threshold"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setLastUsedVersionName(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_used_version_name"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setLogExceptions(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "le"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setLogToFile(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ltf"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setLogUpdateTimeStamp(J)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "log_update_timestamp"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setLostMsg(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "updated_lost_msg"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setMainMailAccount(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "main_mail_account"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setPermLock(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "loxxer"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setPowerSavingMode(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_on_low_battery"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setPowerSavingThreshold(I)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_on_low_battery_threshold"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setPremPass(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "xx5"

    invoke-static {p0}, Lorg/antivirus/AVSettings;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setProScamAndSpamUrlFilter(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "url_filter"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setQuotaOngoingNotification(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "quota_ongoing_notification"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setQuotaUsageWarningId(I)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "quota_usage_notified_warning_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setQuotaWarningNotificationOn(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_on_data_plan_threshold"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setSendLocation(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "send_location"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setShowActivationScreen(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_tutorial"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static setTrafficCounterOn(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "traffic_counter_on"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setUrlAntiPhishing(Z)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "url_anti_phishing_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static setVersionUpdateNotificationLastTime(J)V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version_update_last_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    return-void
.end method

.method public static shouldSendLocation()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "send_location"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldShowActivationScreen()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "show_tutorial"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showBlockedWarning()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "show_blocked_warning"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showTrustedWarning()Z
    .locals 3

    sget-object v0, Lorg/antivirus/AVSettings;->a:Landroid/content/SharedPreferences;

    const-string v1, "show_trusted_warning"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
