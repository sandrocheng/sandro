.class public Lcom/antivirus/core/d/a/e;
.super Lcom/avg/toolkit/b/g;


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/toolkit/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/avg/toolkit/b/e;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/core/d/a/e;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 4

    new-instance v0, Lcom/antivirus/core/b;

    invoke-direct {v0, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/antivirus/core/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/core/d/a/e;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/antivirus/core/b;->a(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/Boolean;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/antivirus/core/d/a/e;->f:[Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/antivirus/core/d/a/e;->c(Landroid/content/Context;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b_()I
    .locals 1

    const/16 v0, 0x7d8

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "Device.update6"

    return-object v0
.end method

.method protected c(Landroid/content/Context;)Z
    .locals 14

    const/4 v13, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v10, Lcom/antivirus/core/f/d;

    invoke-direct {v10}, Lcom/antivirus/core/f/d;-><init>()V

    invoke-virtual {v10, p1}, Lcom/antivirus/core/f/d;->a(Landroid/content/Context;)Z

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, ""

    const-string v6, ""

    const-string v5, ""

    const-string v2, ""

    :try_start_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    move-object v9, v1

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v8, v1

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    move-object v7, v1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Antivirus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, ""

    :try_start_5
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v13, :cond_1

    const-class v2, Landroid/os/Build;

    const-string v5, "MANUFACTURER"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move-result-object v1

    :cond_1
    :goto_4
    new-instance v12, Lcom/avg/toolkit/e/g;

    invoke-direct {v12, p1}, Lcom/avg/toolkit/e/g;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    const-string v6, ""

    :try_start_6
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_5
    move-object v5, v2

    :goto_6
    :try_start_7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_8
    const-string v0, ""
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :cond_2
    :goto_7
    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/antivirus/core/f/d;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/avg/toolkit/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v9}, Lcom/avg/toolkit/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v6, 0x2

    invoke-static {v1}, Lcom/avg/toolkit/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v8}, Lcom/avg/toolkit/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v13

    const/4 v1, 0x4

    invoke-static {v7}, Lcom/avg/toolkit/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const/4 v1, 0x5

    iget-object v6, p0, Lcom/antivirus/core/d/a/e;->h:Lcom/avg/toolkit/e/a;

    iget v6, v6, Lcom/avg/toolkit/e/a;->o:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/avg/toolkit/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const/4 v1, 0x6

    iget-object v6, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v6}, Lcom/avg/toolkit/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const/4 v1, 0x7

    iget v6, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/avg/toolkit/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const/16 v1, 0x8

    invoke-virtual {v12}, Lcom/avg/toolkit/e/g;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/avg/toolkit/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const/16 v1, 0x9

    iget-object v6, p0, Lcom/antivirus/core/d/a/e;->h:Lcom/avg/toolkit/e/a;

    iget v6, v6, Lcom/avg/toolkit/e/a;->p:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/avg/toolkit/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const/16 v6, 0xa

    iget-object v1, p0, Lcom/antivirus/core/d/a/e;->h:Lcom/avg/toolkit/e/a;

    invoke-virtual {v1}, Lcom/avg/toolkit/e/a;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "PRO"

    :goto_8
    invoke-static {v1}, Lcom/avg/toolkit/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    const/16 v1, 0xb

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v6}, Lcom/avg/toolkit/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const/16 v1, 0xc

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const/16 v1, 0xd

    aput-object v5, v2, v1

    const/16 v1, 0xe

    aput-object v0, v2, v1

    iput-object v2, p0, Lcom/antivirus/core/d/a/e;->f:[Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/antivirus/core/d/a/e;->f:[Ljava/lang/Object;

    array-length v6, v5

    move v1, v3

    :goto_9
    if-ge v1, v6, :cond_6

    aget-object v0, v5, v1

    const/16 v7, 0x7c

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move-object v9, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move-object v8, v6

    goto/16 :goto_1

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move-object v7, v5

    goto/16 :goto_2

    :cond_3
    :try_start_9
    const-string v1, "noversion"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v1

    const-string v1, "emptyversion"

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move v0, v3

    :goto_b
    return v0

    :pswitch_0
    :try_start_a
    const-string v2, "GSM"

    goto/16 :goto_5

    :pswitch_1
    const-string v2, "CDMA"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_5

    :catch_5
    move-exception v5

    invoke-static {v5}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move-object v5, v2

    goto/16 :goto_6

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v0, v6

    :goto_c
    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto/16 :goto_7

    :cond_4
    const-string v1, "FREE"

    goto/16 :goto_8

    :cond_5
    const-string v0, ""

    goto :goto_a

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/core/d/a/e;->a:Ljava/lang/String;

    new-instance v0, Lcom/antivirus/core/b;

    invoke-direct {v0, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/antivirus/core/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/antivirus/core/d/a/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v3

    goto :goto_b

    :cond_7
    iget-object v1, v0, Lcom/antivirus/core/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, ""

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/antivirus/core/b;->a(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/Boolean;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v4

    goto :goto_b

    :catch_7
    move-exception v2

    goto :goto_c

    :catch_8
    move-exception v2

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
