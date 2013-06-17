.class public Lcom/antivirus/core/scanners/i;
.super Ljava/lang/Thread;


# instance fields
.field public a:Lcom/antivirus/core/scanners/h;

.field protected b:[Lcom/antivirus/core/scanners/k;

.field protected c:Z

.field protected d:Lcom/antivirus/core/scanners/j;

.field protected e:Landroid/os/Messenger;

.field protected f:Landroid/content/Context;

.field protected g:Lcom/antivirus/core/scanners/c;

.field private h:I

.field private i:Lcom/antivirus/core/b;

.field private j:Landroid/os/Handler;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/antivirus/core/scanners/j;Lcom/antivirus/core/scanners/c;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/antivirus/core/scanners/i;->h:I

    iput-object p1, p0, Lcom/antivirus/core/scanners/i;->f:Landroid/content/Context;

    new-instance v0, Lcom/antivirus/core/b;

    invoke-direct {v0, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/core/scanners/i;->i:Lcom/antivirus/core/b;

    iput-object p2, p0, Lcom/antivirus/core/scanners/i;->j:Landroid/os/Handler;

    iput-object p4, p0, Lcom/antivirus/core/scanners/i;->g:Lcom/antivirus/core/scanners/c;

    new-instance v0, Lcom/antivirus/core/scanners/h;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/h;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/scanners/i;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, p0, Lcom/antivirus/core/scanners/i;->a:Lcom/antivirus/core/scanners/h;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/h;->c()V

    iput-boolean p5, p0, Lcom/antivirus/core/scanners/i;->k:Z

    iput-object p3, p0, Lcom/antivirus/core/scanners/i;->d:Lcom/antivirus/core/scanners/j;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Messenger;Lcom/antivirus/core/scanners/n;)I
    .locals 2

    iput-object p1, p0, Lcom/antivirus/core/scanners/i;->e:Landroid/os/Messenger;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/antivirus/core/scanners/i;->b:[Lcom/antivirus/core/scanners/k;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/antivirus/core/scanners/i;->b:[Lcom/antivirus/core/scanners/k;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/antivirus/core/scanners/k;->a(Landroid/os/Messenger;Lcom/antivirus/core/scanners/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/antivirus/core/scanners/i;->h:I

    return v0
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/i;->c:Z

    iget-object v2, p0, Lcom/antivirus/core/scanners/i;->b:[Lcom/antivirus/core/scanners/k;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    :try_start_0
    aget-object v1, v2, v0

    invoke-virtual {v1}, Lcom/antivirus/core/scanners/k;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public a(ILcom/antivirus/core/scanners/m;)V
    .locals 8

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-array v5, v3, [Lcom/antivirus/core/scanners/k;

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aput-object v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_8

    new-instance v4, Lcom/antivirus/core/scanners/z;

    iget-object v3, p0, Lcom/antivirus/core/scanners/i;->i:Lcom/antivirus/core/b;

    iget-object v6, p0, Lcom/antivirus/core/scanners/i;->j:Landroid/os/Handler;

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/antivirus/core/scanners/ScannerPackagesConfig;

    if-eqz v0, :cond_1

    move-object v0, p2

    :goto_1
    invoke-direct {v4, v3, v6, v1, v0}, Lcom/antivirus/core/scanners/z;-><init>(Lcom/antivirus/core/b;Landroid/os/Handler;Landroid/os/Messenger;Lcom/antivirus/core/scanners/m;)V

    iget-object v3, p0, Lcom/antivirus/core/scanners/i;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v4, Lcom/antivirus/core/scanners/z;->a:Lcom/antivirus/core/scanners/e;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iput-object v0, v3, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    const/4 v3, 0x1

    aput-object v4, v5, v2

    :goto_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    new-instance v6, Lcom/antivirus/core/scanners/o;

    iget-object v4, p0, Lcom/antivirus/core/scanners/i;->i:Lcom/antivirus/core/b;

    invoke-direct {v6, v4, v1, v0}, Lcom/antivirus/core/scanners/o;-><init>(Lcom/antivirus/core/b;Landroid/os/Messenger;I)V

    iget-object v4, p0, Lcom/antivirus/core/scanners/i;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v6, Lcom/antivirus/core/scanners/o;->a:Lcom/antivirus/core/scanners/e;

    check-cast v0, Lcom/antivirus/core/scanners/s;

    iput-object v0, v4, Lcom/antivirus/core/scanners/h;->e:Lcom/antivirus/core/scanners/s;

    add-int/lit8 v4, v3, 0x1

    aput-object v6, v5, v3

    :goto_3
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_6

    new-instance v6, Lcom/antivirus/core/scanners/v;

    iget-object v0, p0, Lcom/antivirus/core/scanners/i;->i:Lcom/antivirus/core/b;

    iget-object v3, p0, Lcom/antivirus/core/scanners/i;->j:Landroid/os/Handler;

    if-eqz p2, :cond_2

    instance-of v7, p2, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    if-eqz v7, :cond_2

    :goto_4
    invoke-direct {v6, v0, v3, v1, p2}, Lcom/antivirus/core/scanners/v;-><init>(Lcom/antivirus/core/b;Landroid/os/Handler;Landroid/os/Messenger;Lcom/antivirus/core/scanners/m;)V

    iget-object v1, p0, Lcom/antivirus/core/scanners/i;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v6, Lcom/antivirus/core/scanners/v;->a:Lcom/antivirus/core/scanners/e;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesResult;

    iput-object v0, v1, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    add-int/lit8 v3, v4, 0x1

    aput-object v6, v5, v4

    :goto_5
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_5

    new-instance v4, Lcom/antivirus/core/scanners/ad;

    iget-object v0, p0, Lcom/antivirus/core/scanners/i;->i:Lcom/antivirus/core/b;

    invoke-direct {v4, v0}, Lcom/antivirus/core/scanners/ad;-><init>(Lcom/antivirus/core/b;)V

    iget-object v1, p0, Lcom/antivirus/core/scanners/i;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v4, Lcom/antivirus/core/scanners/ad;->a:Lcom/antivirus/core/scanners/e;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerSmsResult;

    iput-object v0, v1, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    add-int/lit8 v1, v3, 0x1

    aput-object v4, v5, v3

    :goto_6
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4

    new-instance v3, Lcom/antivirus/core/scanners/af;

    iget-object v0, p0, Lcom/antivirus/core/scanners/i;->i:Lcom/antivirus/core/b;

    iget-object v4, p0, Lcom/antivirus/core/scanners/i;->j:Landroid/os/Handler;

    invoke-direct {v3, v0, v4}, Lcom/antivirus/core/scanners/af;-><init>(Lcom/antivirus/core/b;Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/antivirus/core/scanners/i;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v3, Lcom/antivirus/core/scanners/af;->a:Lcom/antivirus/core/scanners/e;

    check-cast v0, Lcom/antivirus/core/scanners/ag;

    iput-object v0, v4, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    add-int/lit8 v0, v1, 0x1

    aput-object v3, v5, v1

    :goto_7
    new-array v1, v0, [Lcom/antivirus/core/scanners/k;

    iput-object v1, p0, Lcom/antivirus/core/scanners/i;->b:[Lcom/antivirus/core/scanners/k;

    move v1, v2

    :goto_8
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/antivirus/core/scanners/i;->b:[Lcom/antivirus/core/scanners/k;

    aget-object v3, v5, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1
    move-object v0, v1

    goto/16 :goto_1

    :cond_2
    move-object p2, v1

    goto :goto_4

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_7

    :cond_5
    move v1, v3

    goto :goto_6

    :cond_6
    move v3, v4

    goto :goto_5

    :cond_7
    move v4, v3

    goto :goto_3

    :cond_8
    move v3, v2

    goto/16 :goto_2
.end method

.method public run()V
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Lcom/antivirus/core/e/b;

    invoke-direct {v2}, Lcom/antivirus/core/e/b;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/i;->e:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->what:I

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/antivirus/core/scanners/i;->e:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    sget-object v3, Lcom/antivirus/core/e/b;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v0, p0, Lcom/antivirus/core/scanners/i;->f:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;)Z

    move v0, v1

    :goto_1
    iget-boolean v4, p0, Lcom/antivirus/core/scanners/i;->c:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/antivirus/core/scanners/i;->f:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/antivirus/core/e/b;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x64
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lcom/antivirus/core/scanners/i;->e:Landroid/os/Messenger;

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x2

    iput v5, v4, Landroid/os/Message;->what:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "percent"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "threat"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "package-name"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/antivirus/core/scanners/i;->e:Landroid/os/Messenger;

    invoke-virtual {v5, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_2
    const-wide/16 v4, 0xbb8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_4
    invoke-static {v4}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/antivirus/core/scanners/i;->e:Landroid/os/Messenger;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "percent"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "threat"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "package-name"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/antivirus/core/scanners/i;->e:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_3
    :try_start_6
    iget-boolean v0, p0, Lcom/antivirus/core/scanners/i;->c:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/antivirus/core/scanners/i;->b:[Lcom/antivirus/core/scanners/k;

    array-length v0, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ge v1, v0, :cond_a

    :try_start_7
    iget-object v0, p0, Lcom/antivirus/core/scanners/i;->b:[Lcom/antivirus/core/scanners/k;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lcom/antivirus/core/scanners/z;

    if-ne v2, v4, :cond_5

    const/4 v2, 0x1

    iput v2, p0, Lcom/antivirus/core/scanners/i;->h:I

    :goto_4
    iget-object v2, p0, Lcom/antivirus/core/scanners/i;->e:Landroid/os/Messenger;

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    iget v4, p0, Lcom/antivirus/core/scanners/i;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/antivirus/core/scanners/i;->e:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_4
    iget-object v2, p0, Lcom/antivirus/core/scanners/i;->f:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/antivirus/core/scanners/i;->k:Z

    invoke-virtual {v0, v2, v4}, Lcom/antivirus/core/scanners/k;->a(Landroid/content/Context;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :cond_5
    :try_start_9
    const-class v4, Lcom/antivirus/core/scanners/o;

    if-ne v2, v4, :cond_6

    const/4 v2, 0x2

    iput v2, p0, Lcom/antivirus/core/scanners/i;->h:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_a
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    :cond_6
    :try_start_b
    const-class v4, Lcom/antivirus/core/scanners/v;

    if-ne v2, v4, :cond_7

    const/4 v2, 0x4

    iput v2, p0, Lcom/antivirus/core/scanners/i;->h:I

    goto :goto_4

    :cond_7
    const-class v4, Lcom/antivirus/core/scanners/ad;

    if-ne v2, v4, :cond_8

    const/16 v2, 0x8

    iput v2, p0, Lcom/antivirus/core/scanners/i;->h:I

    goto :goto_4

    :cond_8
    const-class v4, Lcom/antivirus/core/scanners/af;

    if-ne v2, v4, :cond_9

    const/16 v2, 0x10

    iput v2, p0, Lcom/antivirus/core/scanners/i;->h:I

    goto :goto_4

    :cond_9
    const-string v2, "unknown scanner!"

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/antivirus/core/scanners/i;->h:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :try_start_c
    iput-object v0, p0, Lcom/antivirus/core/scanners/i;->b:[Lcom/antivirus/core/scanners/k;

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/i;->c:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/antivirus/core/scanners/i;->d:Lcom/antivirus/core/scanners/j;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v0, :cond_b

    :try_start_d
    iget-object v0, p0, Lcom/antivirus/core/scanners/i;->d:Lcom/antivirus/core/scanners/j;

    iget-object v1, p0, Lcom/antivirus/core/scanners/i;->a:Lcom/antivirus/core/scanners/h;

    iget-object v2, p0, Lcom/antivirus/core/scanners/i;->g:Lcom/antivirus/core/scanners/c;

    invoke-interface {v0, v1, v2}, Lcom/antivirus/core/scanners/j;->a(Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/c;)V

    iget-object v0, p0, Lcom/antivirus/core/scanners/i;->e:Landroid/os/Messenger;

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/antivirus/core/scanners/i;->e:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    :cond_b
    :goto_6
    :try_start_e
    monitor-exit v3

    return-void

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    :catch_5
    move-exception v4

    goto/16 :goto_2
.end method
