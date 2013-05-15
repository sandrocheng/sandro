.class public Lcom/avast/android/generic/notification/AvastNotificationActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "AvastNotificationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    .line 82
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/avast/android/generic/notification/AvastNotificationActivity;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 48
    :goto_0
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/avast/android/generic/notification/AvastNotificationActivity;->finish()V

    .line 51
    :cond_0
    return-void

    .line 43
    :catch_0
    move-exception v1

    .line 44
    const-string v2, "Can not count notifications"

    invoke-static {v2, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 60
    const-class v0, Lcom/avast/android/generic/notification/j;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    .line 63
    invoke-virtual {v0}, Lcom/avast/android/generic/notification/j;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    move v0, v1

    .line 87
    :goto_0
    return v0

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/avast/android/generic/notification/j;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 67
    invoke-virtual {v0, p0}, Lcom/avast/android/generic/notification/j;->a(Landroid/content/Context;)V

    move v0, v2

    .line 68
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v0}, Lcom/avast/android/generic/notification/j;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/notification/a;

    iget-object v1, v1, Lcom/avast/android/generic/notification/a;->g:Lcom/avast/android/generic/notification/AvastPendingIntent;

    .line 73
    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {v1, p0}, Lcom/avast/android/generic/notification/AvastPendingIntent;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 75
    if-eqz v3, :cond_2

    .line 76
    sget-object v4, Lcom/avast/android/generic/notification/b;->a:[I

    invoke-virtual {v1}, Lcom/avast/android/generic/notification/AvastPendingIntent;->b()Lcom/avast/android/generic/notification/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/generic/notification/s;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 81
    invoke-virtual {v0, p0, v3}, Lcom/avast/android/generic/notification/j;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    :goto_1
    move v0, v2

    .line 87
    goto :goto_0

    .line 78
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/avast/android/generic/notification/AvastNotificationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static call(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/generic/notification/AvastNotificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/avast/android/generic/notification/AvastNotificationFragment;

    invoke-direct {v0}, Lcom/avast/android/generic/notification/AvastNotificationFragment;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/notification/AvastNotificationActivity;->e:Z

    .line 29
    invoke-direct {p0}, Lcom/avast/android/generic/notification/AvastNotificationActivity;->a()V

    .line 30
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/notification/AvastNotificationActivity;->setIntent(Landroid/content/Intent;)V

    .line 36
    invoke-direct {p0}, Lcom/avast/android/generic/notification/AvastNotificationActivity;->a()V

    .line 37
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/avast/android/generic/notification/AvastNotificationActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->b()V

    .line 100
    return-void
.end method
