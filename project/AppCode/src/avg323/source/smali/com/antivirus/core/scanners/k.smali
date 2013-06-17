.class public abstract Lcom/antivirus/core/scanners/k;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/antivirus/core/scanners/e;

.field protected b:Lcom/antivirus/core/b;

.field protected c:Lcom/antivirus/core/scanners/m;

.field protected d:Landroid/os/Messenger;

.field protected e:Landroid/os/Handler;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/antivirus/core/b;Landroid/os/Handler;Lcom/antivirus/core/scanners/m;Landroid/os/Messenger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/k;->f:Z

    iput-object p1, p0, Lcom/antivirus/core/scanners/k;->b:Lcom/antivirus/core/b;

    iput-object p2, p0, Lcom/antivirus/core/scanners/k;->e:Landroid/os/Handler;

    iput-object p3, p0, Lcom/antivirus/core/scanners/k;->c:Lcom/antivirus/core/scanners/m;

    iput-object p4, p0, Lcom/antivirus/core/scanners/k;->d:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/k;->f:Z

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/core/scanners/k;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    if-eqz p2, :cond_1

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/antivirus/core/scanners/k;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/antivirus/core/scanners/k;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/core/scanners/l;)V
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
    iget-boolean v0, p0, Lcom/antivirus/core/scanners/k;->f:Z

    if-nez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {p3, v1, p2}, Lcom/antivirus/core/scanners/l;->a(Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_4
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
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

.method public abstract a(Landroid/content/Context;Z)V
.end method

.method public a(Landroid/os/Messenger;Lcom/antivirus/core/scanners/n;)V
    .locals 1

    iput-object p1, p0, Lcom/antivirus/core/scanners/k;->d:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/antivirus/core/scanners/k;->c:Lcom/antivirus/core/scanners/m;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/k;->c:Lcom/antivirus/core/scanners/m;

    iput-object p2, v0, Lcom/antivirus/core/scanners/m;->a:Lcom/antivirus/core/scanners/n;

    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/k;->f:Z

    return v0
.end method
