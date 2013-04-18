.class final Lcom/ijinshan/bootmanager/activity/d;
.super Ljava/lang/Thread;
.source "AutoBootMangerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Z)Z

    .line 254
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->j(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V

    .line 255
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->k(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z

    move-result v0

    .line 256
    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->l(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->m(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 261
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    .line 262
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->n(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0, v1}, Lcom/keniu/security/f/ab;->a(Ljava/io/File;Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->o(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(ILandroid/os/Handler;)V

    .line 269
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->o(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(ILandroid/os/Handler;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/d;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-static {v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->o(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(ILandroid/os/Handler;)V

    throw v0
.end method
