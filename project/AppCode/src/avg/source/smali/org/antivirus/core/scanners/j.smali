.class public abstract Lorg/antivirus/core/scanners/j;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/antivirus/core/scanners/d;

.field protected b:Lorg/antivirus/core/EngineSettings;

.field protected c:Lorg/antivirus/core/scanners/l;

.field protected d:Landroid/os/Messenger;

.field protected e:Landroid/os/Handler;

.field f:Z


# direct methods
.method public constructor <init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;Lorg/antivirus/core/scanners/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z

    iput-object p1, p0, Lorg/antivirus/core/scanners/j;->b:Lorg/antivirus/core/EngineSettings;

    iput-object p2, p0, Lorg/antivirus/core/scanners/j;->e:Landroid/os/Handler;

    iput-object p3, p0, Lorg/antivirus/core/scanners/j;->c:Lorg/antivirus/core/scanners/l;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/scanners/j;->d:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z

    return-void
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;Lorg/antivirus/core/scanners/k;)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {p3}, Lorg/antivirus/core/scanners/k;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_4
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/core/scanners/j;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f6

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lorg/antivirus/core/scanners/j;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    iget-object v1, p0, Lorg/antivirus/core/scanners/j;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Messenger;Lorg/antivirus/core/scanners/m;)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/core/scanners/j;->d:Landroid/os/Messenger;

    iget-object v0, p0, Lorg/antivirus/core/scanners/j;->c:Lorg/antivirus/core/scanners/l;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/scanners/j;->c:Lorg/antivirus/core/scanners/l;

    iput-object p2, v0, Lorg/antivirus/core/scanners/l;->a:Lorg/antivirus/core/scanners/m;

    :cond_0
    return-void
.end method
