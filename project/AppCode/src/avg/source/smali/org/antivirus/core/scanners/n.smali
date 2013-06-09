.class public Lorg/antivirus/core/scanners/n;
.super Lorg/antivirus/core/scanners/j;


# instance fields
.field private g:I


# direct methods
.method protected constructor <init>(Lorg/antivirus/core/EngineSettings;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v0}, Lorg/antivirus/core/scanners/j;-><init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;Lorg/antivirus/core/scanners/l;)V

    new-instance v0, Lorg/antivirus/core/scanners/r;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/r;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/n;->a:Lorg/antivirus/core/scanners/d;

    iput v1, p0, Lorg/antivirus/core/scanners/n;->g:I

    iget-object v0, p0, Lorg/antivirus/core/scanners/n;->a:Lorg/antivirus/core/scanners/d;

    check-cast v0, Lorg/antivirus/core/scanners/r;

    iput v1, v0, Lorg/antivirus/core/scanners/r;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-super {p0}, Lorg/antivirus/core/scanners/j;->a()V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    iget v0, p0, Lorg/antivirus/core/scanners/n;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v0, :cond_0

    const-string v0, "content://browser/bookmarks"

    new-instance v1, Lorg/antivirus/core/scanners/q;

    invoke-direct {v1, p0}, Lorg/antivirus/core/scanners/q;-><init>(Lorg/antivirus/core/scanners/n;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/antivirus/core/scanners/n;->a(Landroid/content/Context;Ljava/lang/String;Lorg/antivirus/core/scanners/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Lorg/antivirus/core/scanners/n;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v0, :cond_3

    :try_start_1
    iget-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Browser;->getAllVisitedUrls(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/core/scanners/n;->a:Lorg/antivirus/core/scanners/d;

    check-cast v0, Lorg/antivirus/core/scanners/r;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v0, Lorg/antivirus/core/scanners/r;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :try_start_4
    iget-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_2
    iget v0, p0, Lorg/antivirus/core/scanners/n;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v0, :cond_4

    :try_start_6
    iget-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-nez v0, :cond_4

    :try_start_7
    const-string v0, "content://com.android.contacts/contacts"

    new-instance v1, Lorg/antivirus/core/scanners/o;

    invoke-direct {v1, p0}, Lorg/antivirus/core/scanners/o;-><init>(Lorg/antivirus/core/scanners/n;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/antivirus/core/scanners/n;->a(Landroid/content/Context;Ljava/lang/String;Lorg/antivirus/core/scanners/k;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_3
    :try_start_8
    iget-object v0, p0, Lorg/antivirus/core/scanners/n;->a:Lorg/antivirus/core/scanners/d;

    check-cast v0, Lorg/antivirus/core/scanners/r;

    iget v0, v0, Lorg/antivirus/core/scanners/r;->c:I

    if-nez v0, :cond_4

    const-string v0, "content://contacts/people"

    new-instance v1, Lorg/antivirus/core/scanners/p;

    invoke-direct {v1, p0}, Lorg/antivirus/core/scanners/p;-><init>(Lorg/antivirus/core/scanners/n;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/antivirus/core/scanners/n;->a(Landroid/content/Context;Ljava/lang/String;Lorg/antivirus/core/scanners/k;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_4
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_5
    :try_start_a
    const-string v1, "failed to scan browser"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v0, :cond_3

    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_6
    if-eqz v1, :cond_5

    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :catch_4
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5
.end method
