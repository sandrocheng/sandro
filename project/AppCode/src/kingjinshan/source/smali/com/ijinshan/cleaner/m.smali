.class final Lcom/ijinshan/cleaner/m;
.super Landroid/content/pm/e;
.source "CacheCleanerActivity.java"


# instance fields
.field final synthetic b:Lcom/ijinshan/cleaner/CacheCleanerActivity;

.field private c:Lcom/ijinshan/cleaner/a/a;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;Lcom/ijinshan/cleaner/a/a;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/ijinshan/cleaner/m;->b:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {p0}, Landroid/content/pm/e;-><init>()V

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/cleaner/m;->c:Lcom/ijinshan/cleaner/a/a;

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/cleaner/m;->d:Z

    .line 560
    iput-object p2, p0, Lcom/ijinshan/cleaner/m;->c:Lcom/ijinshan/cleaner/a/a;

    .line 561
    iput-boolean p3, p0, Lcom/ijinshan/cleaner/m;->d:Z

    .line 562
    return-void
.end method


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 565
    iget-object v0, p0, Lcom/ijinshan/cleaner/m;->b:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->n(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/m;->b:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 569
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 570
    const-string v2, "PackageStats"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 571
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 572
    iget-object v1, p0, Lcom/ijinshan/cleaner/m;->c:Lcom/ijinshan/cleaner/a/a;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 573
    iget-object v1, p0, Lcom/ijinshan/cleaner/m;->b:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 574
    iget-boolean v0, p0, Lcom/ijinshan/cleaner/m;->d:Z

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/ijinshan/cleaner/m;->b:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/ijinshan/cleaner/m;->b:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
