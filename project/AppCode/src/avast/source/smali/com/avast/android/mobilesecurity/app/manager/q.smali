.class Lcom/avast/android/mobilesecurity/app/manager/q;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ManagerPagerFragment.java"


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/content/Context;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 375
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 376
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/q;->b:Landroid/content/Context;

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/q;->a:Ljava/util/List;

    .line 379
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    const-string v1, "list_type"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    const-string v1, "order_by"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/q;->a:Ljava/util/List;

    const-class v2, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    const-string v1, "list_type"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    const-string v1, "order_by"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/q;->a:Ljava/util/List;

    const-class v2, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    new-array v0, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/q;->b:Landroid/content/Context;

    const v2, 0x7f0c02ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/q;->b:Landroid/content/Context;

    const v2, 0x7f0c02cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/q;->c:[Ljava/lang/String;

    .line 393
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 407
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/q;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
