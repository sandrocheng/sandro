.class public final Lorg/antivirus/core/a/u;
.super Lorg/antivirus/core/a/v;


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/core/a/v;-><init>()V

    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v8, Lorg/antivirus/core/telephony/TelephonyInfo;

    invoke-direct {v8, p1}, Lorg/antivirus/core/telephony/TelephonyInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, p1}, Lorg/antivirus/core/telephony/TelephonyInfo;->grabLineAndSimNumbers(Landroid/content/Context;)Z

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, ""

    const-string v6, ""

    const-string v5, ""

    :try_start_0
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    move-object v7, v1

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v4, v1

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move-object v1, v0

    :goto_2
    :try_start_3
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":Antivirus Pro 3.0.3.174757"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, ""

    :try_start_4
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v5, v9, :cond_1

    const-class v5, Landroid/os/Build;

    const-string v6, "MANUFACTURER"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    :cond_1
    :goto_4
    new-instance v5, Lorg/antivirus/core/b/g;

    invoke-direct {v5, p1}, Lorg/antivirus/core/b/g;-><init>(Landroid/content/Context;)V

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v8}, Lorg/antivirus/core/telephony/TelephonyInfo;->getSimNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-static {v7}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x2

    invoke-static {v0}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    const/4 v0, 0x4

    invoke-static {v1}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lorg/antivirus/core/a/u;->h:Lorg/antivirus/core/b/a;

    iget v1, v1, Lorg/antivirus/core/b/a;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x6

    const-string v1, "3.0.3"

    invoke-static {v1}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x7

    const-string v1, "174757"

    invoke-static {v1}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x8

    invoke-virtual {v5}, Lorg/antivirus/core/b/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lorg/antivirus/core/a/u;->h:Lorg/antivirus/core/b/a;

    iget v1, v1, Lorg/antivirus/core/b/a;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v1, 0xa

    iget-object v0, p0, Lorg/antivirus/core/a/u;->h:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "PRO"

    :goto_5
    invoke-static {v0}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const/16 v0, 0xb

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    iput-object v6, p0, Lorg/antivirus/core/a/u;->f:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/antivirus/core/a/u;->f:[Ljava/lang/Object;

    array-length v5, v4

    move v0, v2

    :goto_6
    if-ge v0, v5, :cond_4

    aget-object v6, v4, v0

    const/16 v7, 0x7c

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_0
    move-exception v4

    invoke-static {v4}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move-object v7, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move-object v4, v6

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move-object v1, v5

    goto/16 :goto_2

    :cond_2
    :try_start_5
    const-string v0, "noversion"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    const-string v0, "emptyversion"

    goto/16 :goto_3

    :cond_3
    const-string v0, "FREE"

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/a/u;->a:Ljava/lang/String;

    iget-object v0, p0, Lorg/antivirus/core/a/u;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getDeviceRegisterLastParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/antivirus/core/a/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_7
    return v0

    :cond_5
    iget-object v0, p0, Lorg/antivirus/core/a/u;->i:Lorg/antivirus/core/EngineSettings;

    iget-object v0, v0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/core/a/u;->i:Lorg/antivirus/core/EngineSettings;

    const-string v4, ""

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Lorg/antivirus/core/EngineSettings;->setDeviceRegisterLastParams(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/Boolean;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v3

    goto :goto_7

    :catch_4
    move-exception v5

    goto/16 :goto_4
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/a/u;->f:[Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/antivirus/core/a/u;->c(Landroid/content/Context;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/antivirus/core/a/u;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lorg/antivirus/core/a/u;->i:Lorg/antivirus/core/EngineSettings;

    iget-object v0, v0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/core/a/u;->i:Lorg/antivirus/core/EngineSettings;

    iget-object v2, p0, Lorg/antivirus/core/a/u;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lorg/antivirus/core/EngineSettings;->setDeviceRegisterLastParams(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/Boolean;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lorg/antivirus/core/a/q;
    .locals 1

    sget-object v0, Lorg/antivirus/core/a/q;->c:Lorg/antivirus/core/a/q;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x3e9

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "Device.update5"

    return-object v0
.end method
