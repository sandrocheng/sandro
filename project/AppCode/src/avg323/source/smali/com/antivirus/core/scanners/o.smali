.class public Lcom/antivirus/core/scanners/o;
.super Lcom/antivirus/core/scanners/k;


# instance fields
.field private f:I


# direct methods
.method protected constructor <init>(Lcom/antivirus/core/b;Landroid/os/Messenger;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/antivirus/core/scanners/k;-><init>(Lcom/antivirus/core/b;Landroid/os/Handler;Lcom/antivirus/core/scanners/m;Landroid/os/Messenger;)V

    new-instance v0, Lcom/antivirus/core/scanners/s;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/s;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/scanners/o;->a:Lcom/antivirus/core/scanners/e;

    iput p3, p0, Lcom/antivirus/core/scanners/o;->f:I

    iget-object v0, p0, Lcom/antivirus/core/scanners/o;->a:Lcom/antivirus/core/scanners/e;

    check-cast v0, Lcom/antivirus/core/scanners/s;

    iput p3, v0, Lcom/antivirus/core/scanners/s;->b:I

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/o;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "content://com.android.contacts/contacts"

    new-instance v1, Lcom/antivirus/core/scanners/p;

    invoke-direct {v1, p0}, Lcom/antivirus/core/scanners/p;-><init>(Lcom/antivirus/core/scanners/o;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/antivirus/core/scanners/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/core/scanners/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/antivirus/core/scanners/o;->a:Lcom/antivirus/core/scanners/e;

    check-cast v0, Lcom/antivirus/core/scanners/s;

    iget v0, v0, Lcom/antivirus/core/scanners/s;->c:I

    if-nez v0, :cond_0

    const-string v0, "content://contacts/people"

    new-instance v1, Lcom/antivirus/core/scanners/q;

    invoke-direct {v1, p0}, Lcom/antivirus/core/scanners/q;-><init>(Lcom/antivirus/core/scanners/o;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/antivirus/core/scanners/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/core/scanners/l;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "content://browser/bookmarks"

    new-instance v1, Lcom/antivirus/core/scanners/r;

    invoke-direct {v1, p0}, Lcom/antivirus/core/scanners/r;-><init>(Lcom/antivirus/core/scanners/o;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/antivirus/core/scanners/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/core/scanners/l;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/o;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Browser;->getAllVisitedUrls(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/core/scanners/o;->a:Lcom/antivirus/core/scanners/e;

    check-cast v0, Lcom/antivirus/core/scanners/s;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v0, Lcom/antivirus/core/scanners/s;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/antivirus/core/scanners/o;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_4
    const-string v1, "failed to scan browser"

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/antivirus/core/scanners/k;->a()V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 1

    iget v0, p0, Lcom/antivirus/core/scanners/o;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/o;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/antivirus/core/scanners/o;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/antivirus/core/scanners/o;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/o;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/antivirus/core/scanners/o;->c(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget v0, p0, Lcom/antivirus/core/scanners/o;->f:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/o;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_2
    invoke-direct {p0, p1}, Lcom/antivirus/core/scanners/o;->a(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2
.end method
