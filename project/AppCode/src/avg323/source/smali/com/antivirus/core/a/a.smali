.class public Lcom/antivirus/core/a/a;
.super Lcom/avg/toolkit/b/g;

# interfaces
.implements Lcom/avg/toolkit/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/toolkit/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/avg/toolkit/b/e;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/b/e;->b:Lcom/avg/toolkit/b/e;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    const-class v0, Lcom/antivirus/core/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)Z
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

.method public a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 1

    const-string v0, "should not be called"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)Z
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

.method public b()I
    .locals 1

    const/16 v0, 0x3a98

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 22

    const-string v1, "android"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/antivirus/core/a/a;->h:Lcom/avg/toolkit/e/a;

    iget v1, v1, Lcom/avg/toolkit/e/a;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/antivirus/core/a/a;->h:Lcom/avg/toolkit/e/a;

    iget v1, v1, Lcom/avg/toolkit/e/a;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string v7, ""

    const-string v5, ""

    const-string v9, ""

    new-instance v1, Lcom/antivirus/core/b;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/antivirus/core/b;->u()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    move-object v2, v1

    :goto_0
    const-string v8, ""

    const-string v4, ""

    const-string v6, "Version 1.5 does not have this field"

    sget-object v13, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v16, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v1, Lcom/avg/toolkit/e/g;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/avg/toolkit/e/g;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/avg/toolkit/e/g;->c()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_4

    const-string v1, ""

    move-object v3, v1

    :goto_2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v1, v10, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v9, v5

    move-object v10, v7

    move-object v7, v1

    :goto_3
    :try_start_1
    const-string v1, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :try_start_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    move-object v4, v5

    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "xx"

    :cond_0
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x4

    if-lt v5, v8, :cond_3

    :try_start_3
    const-class v5, Landroid/os/Build;

    const-string v8, "MANUFACTURER"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    :goto_5
    const-string v6, "eeexlfn"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    const/16 v8, 0x12

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v19, 0x0

    const-string v20, "android"

    aput-object v20, v8, v19

    const/16 v19, 0x1

    aput-object v11, v8, v19

    const/4 v11, 0x2

    aput-object v12, v8, v11

    const/4 v11, 0x3

    aput-object v3, v8, v11

    const/4 v3, 0x4

    aput-object v10, v8, v3

    const/4 v3, 0x5

    aput-object v9, v8, v3

    const/4 v3, 0x6

    aput-object v7, v8, v3

    const/4 v3, 0x7

    aput-object v2, v8, v3

    const/16 v2, 0x8

    aput-object v4, v8, v2

    const/16 v2, 0x9

    aput-object v1, v8, v2

    const/16 v1, 0xa

    aput-object v5, v8, v1

    const/16 v1, 0xb

    aput-object v13, v8, v1

    const/16 v1, 0xc

    aput-object v14, v8, v1

    const/16 v1, 0xd

    aput-object v15, v8, v1

    const/16 v1, 0xe

    aput-object v16, v8, v1

    const/16 v1, 0xf

    aput-object v17, v8, v1

    const/16 v1, 0x10

    aput-object v18, v8, v1

    const/16 v1, 0x11

    aput-object v6, v8, v1

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/antivirus/core/a/a;->f:[Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v2, v1

    goto/16 :goto_0

    :cond_2
    const-string v1, ""

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move-object v10, v7

    move-object v7, v9

    move-object v9, v5

    goto/16 :goto_3

    :catch_1
    move-exception v1

    move-object v1, v8

    :goto_6
    move-object/from16 v21, v4

    move-object v4, v1

    move-object/from16 v1, v21

    goto/16 :goto_4

    :catch_2
    move-exception v5

    invoke-static {v5}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    :cond_3
    move-object v5, v6

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v1, v5

    goto :goto_6

    :cond_4
    move-object v3, v1

    goto/16 :goto_2
.end method

.method public b_()I
    .locals 1

    const/16 v0, 0x3a99

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "Crash.report"

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
