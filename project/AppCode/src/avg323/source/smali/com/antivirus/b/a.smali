.class public Lcom/antivirus/b/a;
.super Lcom/avg/toolkit/Marketing/a;


# instance fields
.field private c:Lcom/avg/toolkit/UID/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Lcom/avg/toolkit/UID/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/avg/toolkit/Marketing/a;-><init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;)V

    iput-object p3, p0, Lcom/antivirus/b/a;->c:Lcom/avg/toolkit/UID/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const/16 v0, 0x1b58

    const/16 v1, 0x1b5c

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method private c(Lcom/avg/toolkit/e/a;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/avg/toolkit/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/antivirus/c;->i()I

    move-result v0

    iget v2, p1, Lcom/avg/toolkit/e/a;->n:I

    add-int/lit8 v1, v0, 0x1

    if-ltz v1, :cond_2

    sget-object v0, Lcom/antivirus/c;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/antivirus/c;->c:[I

    aget v0, v0, v1

    if-eq v2, v0, :cond_0

    sget-object v0, Lcom/antivirus/c;->c:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/antivirus/c;->c:[I

    aget v0, v0, v1

    if-ge v2, v0, :cond_2

    sget-object v0, Lcom/antivirus/c;->c:[I

    add-int/lit8 v3, v1, 0x1

    aget v0, v0, v3

    if-lt v2, v0, :cond_2

    :cond_0
    if-ne v2, v7, :cond_3

    iget-object v0, p0, Lcom/antivirus/b/a;->a:Landroid/content/Context;

    const v3, 0x7f0901a6

    invoke-static {v0, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v3, Lcom/antivirus/c;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/antivirus/c;->c:[I

    aget v3, v3, v1

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/antivirus/c;->c:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/antivirus/c;->a(I)V

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/b/a;->a:Landroid/content/Context;

    const-class v3, Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    const-string v2, "from_notification"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/b/a;->a:Landroid/content/Context;

    invoke-static {v2, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/b/a;->a:Landroid/content/Context;

    const v3, 0x7f0901a4

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f020069

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v4, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroid/app/Notification;->defaults:I

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    iget-object v4, p0, Lcom/antivirus/b/a;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/antivirus/b/a;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/antivirus/b/a;->a:Landroid/content/Context;

    const v3, 0x7f0901a5

    invoke-static {v0, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[number]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/b/a;->a:Landroid/content/Context;

    const-class v3, Lcom/antivirus/ui/main/HandheldMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/b/a;->a:Landroid/content/Context;

    const-string v1, "category_upgrade"

    const-string v2, "antivirusPro"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/antivirus/b/a;->c:Lcom/avg/toolkit/UID/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/UID/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/purchase/dispatch?device_sn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&varCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/antivirus/b/a;->b:Lcom/avg/toolkit/e/a;

    iget v0, v0, Lcom/avg/toolkit/e/a;->o:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&fs="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/antivirus/b/a;->b:Lcom/avg/toolkit/e/a;

    iget v0, v0, Lcom/avg/toolkit/e/a;->p:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/b/a;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/b/a;->c(Lcom/avg/toolkit/e/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.browser.application_id"

    const-string v2, "com.android.browser"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Lcom/avg/toolkit/b/h;

    iget-object v2, p0, Lcom/antivirus/b/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/avg/toolkit/b/h;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/avg/toolkit/b/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/b/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.browser.application_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/antivirus/b/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    const-string p1, ""

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "__SAC2"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/avg/toolkit/Marketing/a;->b(Landroid/os/Bundle;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/antivirus/b/a;->a()V

    goto :goto_1

    :pswitch_1
    const-string v0, "__SAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/b/a;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_2
    const-string v0, "__SAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/b/a;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1b5a
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/avg/toolkit/e/a;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/antivirus/c;->a(I)V

    return-void
.end method
