.class public final Lorg/antivirus/core/a/r;
.super Lorg/antivirus/core/a/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/core/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 22

    const-string v11, "android"

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/a/r;->h:Lorg/antivirus/core/b/a;

    iget v1, v1, Lorg/antivirus/core/b/a;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/a/r;->h:Lorg/antivirus/core/b/a;

    iget v1, v1, Lorg/antivirus/core/b/a;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v6, ""

    const-string v4, ""

    const-string v8, ""

    new-instance v1, Lorg/antivirus/core/EngineSettings;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/antivirus/core/EngineSettings;->getSecDbVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    move-object v2, v1

    :goto_0
    const-string v7, ""

    const-string v3, ""

    const-string v5, "Version 1.5 does not have this field"

    sget-object v14, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v16, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v17, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v1, Lorg/antivirus/core/b/g;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/antivirus/core/b/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/antivirus/core/b/g;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    move-object v10, v1

    :goto_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v1, v9, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v8, v4

    move-object v9, v6

    move-object v6, v1

    :goto_2
    :try_start_1
    const-string v1, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :try_start_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    move-object v3, v4

    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "xx"

    :cond_0
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x4

    if-lt v4, v7, :cond_2

    :try_start_3
    const-class v4, Landroid/os/Build;

    const-string v7, "MANUFACTURER"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    :goto_4
    const-string v5, "eeexlfn"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    const/16 v7, 0x12

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v11, v7, v20

    const/4 v11, 0x1

    aput-object v12, v7, v11

    const/4 v11, 0x2

    aput-object v13, v7, v11

    const/4 v11, 0x3

    aput-object v10, v7, v11

    const/4 v10, 0x4

    aput-object v9, v7, v10

    const/4 v9, 0x5

    aput-object v8, v7, v9

    const/4 v8, 0x6

    aput-object v6, v7, v8

    const/4 v6, 0x7

    aput-object v2, v7, v6

    const/16 v2, 0x8

    aput-object v3, v7, v2

    const/16 v2, 0x9

    aput-object v1, v7, v2

    const/16 v1, 0xa

    aput-object v4, v7, v1

    const/16 v1, 0xb

    aput-object v14, v7, v1

    const/16 v1, 0xc

    aput-object v15, v7, v1

    const/16 v1, 0xd

    aput-object v16, v7, v1

    const/16 v1, 0xe

    aput-object v17, v7, v1

    const/16 v1, 0xf

    aput-object v18, v7, v1

    const/16 v1, 0x10

    aput-object v19, v7, v1

    const/16 v1, 0x11

    aput-object v5, v7, v1

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/antivirus/core/a/r;->f:[Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v2, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move-object v9, v6

    move-object v6, v8

    move-object v8, v4

    goto/16 :goto_2

    :catch_1
    move-exception v1

    move-object v1, v7

    :goto_5
    move-object/from16 v21, v3

    move-object v3, v1

    move-object/from16 v1, v21

    goto/16 :goto_3

    :catch_2
    move-exception v4

    invoke-static {v4}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    :cond_2
    move-object v4, v5

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v1, v4

    goto :goto_5

    :cond_3
    move-object v10, v1

    goto/16 :goto_1
.end method

.method public final a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "eeexlfn"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "eeexlfn"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Lorg/antivirus/core/a/q;
    .locals 1

    sget-object v0, Lorg/antivirus/core/a/q;->b:Lorg/antivirus/core/a/q;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x46a

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "Crash.report"

    return-object v0
.end method
