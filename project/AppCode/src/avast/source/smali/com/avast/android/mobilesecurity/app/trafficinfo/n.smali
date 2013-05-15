.class Lcom/avast/android/mobilesecurity/app/trafficinfo/n;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "TrafficInfoPagerFragment.java"


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/content/Context;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 374
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 375
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->b:Landroid/content/Context;

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->a:Ljava/util/List;

    .line 378
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->b:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/avast/android/generic/util/u;->a(Landroid/content/Context;Z)Z

    move-result v0

    .line 379
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 380
    if-eqz v0, :cond_0

    .line 381
    const-string v2, "argument_order"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->a:Ljava/util/List;

    const-class v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 387
    const-string v2, "argument_order"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->a:Ljava/util/List;

    const-class v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    if-eqz v0, :cond_1

    .line 392
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 393
    const-string v2, "argument_order"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->a:Ljava/util/List;

    const-class v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 398
    const-string v2, "argument_order"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->a:Ljava/util/List;

    const-class v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_1
    if-eqz v0, :cond_2

    .line 404
    new-array v0, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->b:Landroid/content/Context;

    const v2, 0x7f0c036a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->b:Landroid/content/Context;

    const v2, 0x7f0c036b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->b:Landroid/content/Context;

    const v2, 0x7f0c036c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->b:Landroid/content/Context;

    const v2, 0x7f0c0369

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->c:[Ljava/lang/String;

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->b:Landroid/content/Context;

    const v2, 0x7f0c036b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->c:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/n;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
