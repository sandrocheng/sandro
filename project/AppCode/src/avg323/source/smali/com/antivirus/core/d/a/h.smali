.class public Lcom/antivirus/core/d/a/h;
.super Lcom/avg/toolkit/b/g;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/avg/toolkit/b/g;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/antivirus/core/d/a/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/avg/toolkit/b/e;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 3

    sget-object v1, Lcom/antivirus/core/e/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/antivirus/core/e/b;

    invoke-direct {v0}, Lcom/antivirus/core/e/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;)Z

    invoke-virtual {v0, p1}, Lcom/antivirus/core/e/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/antivirus/core/d/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/antivirus/core/e/b;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/antivirus/core/d/a/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/antivirus/core/d/a/h;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "update.flat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/antivirus/core/d/a/h;->i:Ljava/io/File;

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/core/d/a/h;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-object v2, Lcom/antivirus/core/e/b;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Lcom/antivirus/core/e/b;

    invoke-direct {v3}, Lcom/antivirus/core/e/b;-><init>()V

    if-eqz p2, :cond_1

    instance-of v4, p2, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v0, :cond_1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/antivirus/core/d/a/h;->i:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/antivirus/core/d/a/h;->i:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/antivirus/core/b;

    invoke-direct {v5, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/antivirus/core/d/a/h;->i:Ljava/io/File;

    invoke-virtual {v3, p1, v5, v6, v4}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;Lcom/antivirus/core/b;Ljava/io/File;Z)V

    :cond_0
    iget-object v4, p0, Lcom/antivirus/core/d/a/h;->i:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v3, p1}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Lcom/antivirus/core/b;

    invoke-direct {v2, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/antivirus/core/b;->a(J)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/antivirus/core/d/a/h;->a:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "droidsec.com.update"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "size"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "progress"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "type"

    const-string v4, "File"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/antivirus/core/d/a/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/antivirus/core/d/a/h;->a:Ljava/lang/String;

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/antivirus/core/d/a/h;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/antivirus/core/d/a/h;->f:[Ljava/lang/Object;

    return v3
.end method

.method public b(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "droidsec.com.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v2
.end method

.method public b_()I
    .locals 1

    const/16 v0, 0x7d4

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "SecurityUpdates.getSigsZip"

    return-object v0
.end method
