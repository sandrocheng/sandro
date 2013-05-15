.class Lcom/avast/android/generic/app/account/n;
.super Landroid/content/BroadcastReceiver;
.source "AccountFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/m;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/m;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/avast/android/generic/app/account/n;->a:Lcom/avast/android/generic/app/account/m;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 528
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 530
    const-string v1, "registration_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    const-string v2, "error"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 532
    const-string v1, "AvastComms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C2DM registration received C2DM registration error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/generic/app/account/n;->a:Lcom/avast/android/generic/app/account/m;

    invoke-static {v3}, Lcom/avast/android/generic/app/account/m;->a(Lcom/avast/android/generic/app/account/m;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/avast/android/generic/app/account/n;->a:Lcom/avast/android/generic/app/account/m;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/m;->b(Lcom/avast/android/generic/app/account/m;)V

    .line 537
    iget-object v0, p0, Lcom/avast/android/generic/app/account/n;->a:Lcom/avast/android/generic/app/account/m;

    const-string v1, "error"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/account/m;->a(Lcom/avast/android/generic/app/account/m;Ljava/lang/String;)Ljava/lang/String;

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    const-string v2, "unregistered"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 539
    const-string v1, "AvastComms"

    const-string v2, "C2DM registration received C2DM unregistered event"

    invoke-static {v1, v0, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_2
    if-eqz v1, :cond_0

    .line 542
    const-string v2, "AvastComms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C2DM registration detected successful registration (ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/avast/android/generic/app/account/n;->a:Lcom/avast/android/generic/app/account/m;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/m;->b(Lcom/avast/android/generic/app/account/m;)V

    .line 547
    iget-object v0, p0, Lcom/avast/android/generic/app/account/n;->a:Lcom/avast/android/generic/app/account/m;

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/account/m;->b(Lcom/avast/android/generic/app/account/m;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 521
    iget-object v0, p0, Lcom/avast/android/generic/app/account/n;->a:Lcom/avast/android/generic/app/account/m;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/avast/android/generic/app/account/n;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
