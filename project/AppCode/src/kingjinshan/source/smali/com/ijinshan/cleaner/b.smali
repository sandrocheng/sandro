.class final Lcom/ijinshan/cleaner/b;
.super Landroid/os/Handler;
.source "CacheCleanerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/CacheCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/ijinshan/cleaner/b;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 270
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PackageStats"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageStats;

    .line 272
    if-eqz v0, :cond_0

    .line 274
    iget-wide v1, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 275
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/ijinshan/cleaner/a/a;

    .line 276
    iget-wide v2, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/cleaner/a/a;->a(J)V

    .line 277
    iget-object v0, p0, Lcom/ijinshan/cleaner/b;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v0, v0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 279
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 280
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Lcom/ijinshan/cleaner/b;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v1, v1, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 286
    :pswitch_2
    iget-object v0, p0, Lcom/ijinshan/cleaner/b;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v0, v0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/ijinshan/cleaner/b;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v1, v1, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
