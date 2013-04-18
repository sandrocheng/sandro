.class public final Lcom/ijinshan/cleaner/i;
.super Ljava/lang/Thread;
.source "CacheCleanerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/CacheCleanerActivity;


# direct methods
.method public constructor <init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/ijinshan/cleaner/i;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 390
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/i;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/i;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v0, v0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/ijinshan/cleaner/i;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v1, v1, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 398
    iget-object v0, p0, Lcom/ijinshan/cleaner/i;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->b(Lcom/ijinshan/cleaner/CacheCleanerActivity;Z)Z

    .line 399
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
