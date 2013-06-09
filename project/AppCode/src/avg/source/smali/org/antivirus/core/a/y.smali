.class public final Lorg/antivirus/core/a/y;
.super Lorg/antivirus/core/a/v;


# instance fields
.field final synthetic a:Lorg/antivirus/core/a/x;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/antivirus/core/a/x;)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/core/a/y;->a:Lorg/antivirus/core/a/x;

    invoke-direct {p0}, Lorg/antivirus/core/a/v;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/antivirus/core/a/y;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/antivirus/core/a/y;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lorg/antivirus/core/a/y;->b:Ljava/lang/String;

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/antivirus/core/a/y;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/antivirus/core/a/y;->f:[Ljava/lang/Object;

    return v3
.end method

.method public final a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 3

    sget-object v1, Lorg/antivirus/core/c/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/antivirus/core/c/b;

    invoke-direct {v0}, Lorg/antivirus/core/c/b;-><init>()V

    invoke-virtual {v0, p1}, Lorg/antivirus/core/c/b;->a(Landroid/content/Context;)Z

    invoke-virtual {v0, p1}, Lorg/antivirus/core/c/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/antivirus/core/a/y;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/antivirus/core/c/b;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/antivirus/core/a/y;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lorg/antivirus/core/a/y;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "update.flat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/core/a/y;->j:Ljava/io/File;

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/core/a/y;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v4, Lorg/antivirus/core/c/b;->a:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v5, Lorg/antivirus/core/c/b;

    invoke-direct {v5}, Lorg/antivirus/core/c/b;-><init>()V

    if-eqz p2, :cond_1

    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/antivirus/core/a/y;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/antivirus/core/a/y;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/antivirus/core/a/y;->i:Lorg/antivirus/core/EngineSettings;

    iget-object v6, p0, Lorg/antivirus/core/a/y;->j:Ljava/io/File;

    invoke-virtual {v5, p1, v1, v6}, Lorg/antivirus/core/c/b;->a(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;Ljava/io/File;)V

    :cond_0
    iget-object v1, p0, Lorg/antivirus/core/a/y;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move v1, v3

    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lorg/antivirus/core/a/y;->i:Lorg/antivirus/core/EngineSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/antivirus/core/EngineSettings;->setLastSecurityUpdate(J)V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/antivirus/core/a/y;->b:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "droidsec.com.update"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "result"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "size"

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "progress"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "type"

    const-string v5, "File"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return v1

    :cond_1
    :try_start_3
    check-cast p2, Ljava/util/HashMap;

    const-string v1, "type"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "FULL"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v1, p0, Lorg/antivirus/core/a/y;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v5, p1, p2}, Lorg/antivirus/core/c/b;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_2
    :goto_2
    invoke-virtual {v5, p1}, Lorg/antivirus/core/c/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_3
    const-string v6, "INC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v1, p0, Lorg/antivirus/core/a/y;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v5, p1, p2}, Lorg/antivirus/core/c/b;->b(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v4

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move v1, v2

    goto :goto_1

    :cond_4
    :try_start_5
    const-string v6, "NOCHANGE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_0
.end method

.method public final b()Lorg/antivirus/core/a/q;
    .locals 1

    sget-object v0, Lorg/antivirus/core/a/q;->c:Lorg/antivirus/core/a/q;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Z
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

.method public final c()I
    .locals 1

    const/16 v0, 0x400

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "SecurityUpdates.getSigsFlat"

    return-object v0
.end method
