.class public Lcom/avg/ui/general/d/h;
.super Lcom/avg/toolkit/b/g;

# interfaces
.implements Lcom/avg/toolkit/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/toolkit/b/g;-><init>()V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isUI"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0xfa0

    const/16 v2, 0x36b1

    invoke-static {p0, v1, v2, v0}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/avg/toolkit/b/e;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

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

    invoke-virtual {p0}, Lcom/avg/ui/general/d/h;->e()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "inAppIntentFilterScreen"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mobile/contact.jsp?requestID="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/avg/toolkit/b/h;

    invoke-direct {v3, p1}, Lcom/avg/toolkit/b/h;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/avg/toolkit/b/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "result"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v0

    :cond_0
    const-string v0, "result"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v0, v1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x36b0

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
    .locals 23

    const-string v10, "android"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avg/ui/general/d/h;->h:Lcom/avg/toolkit/e/a;

    iget v1, v1, Lcom/avg/toolkit/e/a;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avg/ui/general/d/h;->h:Lcom/avg/toolkit/e/a;

    iget v1, v1, Lcom/avg/toolkit/e/a;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avg/ui/general/d/h;->h:Lcom/avg/toolkit/e/a;

    invoke-virtual {v1}, Lcom/avg/toolkit/e/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avg/ui/general/d/h;->h:Lcom/avg/toolkit/e/a;

    iget-boolean v1, v1, Lcom/avg/toolkit/e/a;->m:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    const-string v6, ""

    const-string v4, ""

    const-string v8, ""

    invoke-virtual/range {p0 .. p1}, Lcom/avg/ui/general/d/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const-string v7, ""

    const-string v3, ""

    const-string v1, ""

    const-string v5, "Version 1.5 does not have this field"

    sget-object v15, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v17, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v18, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v1, Lcom/avg/toolkit/e/g;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/avg/toolkit/e/g;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/avg/toolkit/e/g;->c()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_4

    const-string v1, ""

    move-object v2, v1

    :goto_2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v21, 0x0

    move/from16 v0, v21

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

    move-result-object v4

    :try_start_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    move-object v3, v4

    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "xx"

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/avg/ui/general/d/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v21, 0x4

    move/from16 v0, v21

    if-lt v4, v0, :cond_3

    :try_start_3
    const-class v4, Landroid/os/Build;

    const-string v21, "MANUFACTURER"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    :goto_5
    const/16 v5, 0x13

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v10, v5, v21

    const/4 v10, 0x1

    aput-object v11, v5, v10

    const/4 v10, 0x2

    aput-object v12, v5, v10

    const/4 v10, 0x3

    aput-object v2, v5, v10

    const/4 v2, 0x4

    aput-object v13, v5, v2

    const/4 v2, 0x5

    aput-object v9, v5, v2

    const/4 v2, 0x6

    aput-object v8, v5, v2

    const/4 v2, 0x7

    aput-object v6, v5, v2

    const/16 v2, 0x8

    aput-object v14, v5, v2

    const/16 v2, 0x9

    aput-object v3, v5, v2

    const/16 v2, 0xa

    aput-object v1, v5, v2

    const/16 v1, 0xb

    aput-object v7, v5, v1

    const/16 v1, 0xc

    aput-object v4, v5, v1

    const/16 v1, 0xd

    aput-object v15, v5, v1

    const/16 v1, 0xe

    aput-object v16, v5, v1

    const/16 v1, 0xf

    aput-object v17, v5, v1

    const/16 v1, 0x10

    aput-object v18, v5, v1

    const/16 v1, 0x11

    aput-object v19, v5, v1

    const/16 v1, 0x12

    aput-object v20, v5, v1

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/avg/ui/general/d/h;->f:[Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    const-string v1, ""

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move-object v9, v6

    move-object v6, v8

    move-object v8, v4

    goto/16 :goto_3

    :catch_1
    move-exception v1

    move-object v1, v7

    :goto_6
    move-object/from16 v22, v3

    move-object v3, v1

    move-object/from16 v1, v22

    goto/16 :goto_4

    :catch_2
    move-exception v4

    invoke-static {v4}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    :cond_3
    move-object v4, v5

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v1, v4

    goto :goto_6

    :cond_4
    move-object v2, v1

    goto/16 :goto_2
.end method

.method public b(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "inAppIntentFilterScreen"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v2
.end method

.method public b_()I
    .locals 1

    const/16 v0, 0x36b1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "Support.create2"

    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public e()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/avg/ui/general/d/h;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
