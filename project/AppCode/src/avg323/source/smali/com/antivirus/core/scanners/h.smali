.class public Lcom/antivirus/core/scanners/h;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:J

.field public c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

.field public d:Lcom/antivirus/core/scanners/ag;

.field public e:Lcom/antivirus/core/scanners/s;

.field public f:Lcom/antivirus/core/scanners/ScannerFilesResult;

.field public g:Lcom/antivirus/core/scanners/ScannerSmsResult;

.field public h:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lcom/antivirus/core/scanners/h;->a:J

    iput-wide v1, p0, Lcom/antivirus/core/scanners/h;->b:J

    iput-object v0, p0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iput-object v0, p0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    iput-object v0, p0, Lcom/antivirus/core/scanners/h;->e:Lcom/antivirus/core/scanners/s;

    iput-object v0, p0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iput-object v0, p0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    iput-object v0, p0, Lcom/antivirus/core/scanners/h;->h:Ljava/util/TreeMap;

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/antivirus/core/scanners/h;->b:J

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v2, Lcom/antivirus/core/scanners/ScannerPackagesResult;

    invoke-direct {v2}, Lcom/antivirus/core/scanners/ScannerPackagesResult;-><init>()V

    iput-object v2, p0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    :cond_0
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    new-instance v2, Lcom/antivirus/core/scanners/ScannerFilesResult;

    invoke-direct {v2}, Lcom/antivirus/core/scanners/ScannerFilesResult;-><init>()V

    iput-object v2, p0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    :cond_1
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    new-instance v2, Lcom/antivirus/core/scanners/ScannerSmsResult;

    invoke-direct {v2}, Lcom/antivirus/core/scanners/ScannerSmsResult;-><init>()V

    iput-object v2, p0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    :cond_2
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    new-instance v2, Lcom/antivirus/core/scanners/ag;

    invoke-direct {v2}, Lcom/antivirus/core/scanners/ag;-><init>()V

    iput-object v2, p0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    :cond_3
    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    new-instance v0, Lcom/antivirus/core/scanners/s;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/s;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/scanners/h;->e:Lcom/antivirus/core/scanners/s;

    :cond_4
    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v0, p1}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a(Ljava/io/ObjectInputStream;)V

    :cond_5
    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    invoke-virtual {v0, p1}, Lcom/antivirus/core/scanners/ScannerFilesResult;->a(Ljava/io/ObjectInputStream;)V

    :cond_6
    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    invoke-virtual {v0, p1}, Lcom/antivirus/core/scanners/ScannerSmsResult;->a(Ljava/io/ObjectInputStream;)V

    :cond_7
    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v0, p1}, Lcom/antivirus/core/scanners/ag;->a(Ljava/io/ObjectInputStream;)V

    :cond_8
    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->e:Lcom/antivirus/core/scanners/s;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->e:Lcom/antivirus/core/scanners/s;

    invoke-virtual {v0, p1}, Lcom/antivirus/core/scanners/s;->a(Ljava/io/ObjectInputStream;)V

    :cond_9
    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 4

    iget-wide v0, p0, Lcom/antivirus/core/scanners/h;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/antivirus/core/scanners/h;->e:Lcom/antivirus/core/scanners/s;

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    :cond_4
    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v0, p1}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a(Ljava/io/ObjectOutputStream;)V

    :cond_5
    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    invoke-virtual {v0, p1}, Lcom/antivirus/core/scanners/ScannerFilesResult;->a(Ljava/io/ObjectOutputStream;)V

    :cond_6
    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    invoke-virtual {v0, p1}, Lcom/antivirus/core/scanners/ScannerSmsResult;->a(Ljava/io/ObjectOutputStream;)V

    :cond_7
    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v0, p1}, Lcom/antivirus/core/scanners/ag;->a(Ljava/io/ObjectOutputStream;)V

    :cond_8
    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->e:Lcom/antivirus/core/scanners/s;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->e:Lcom/antivirus/core/scanners/s;

    invoke-virtual {v0, p1}, Lcom/antivirus/core/scanners/s;->a(Ljava/io/ObjectOutputStream;)V

    :cond_9
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ScanResult.obj"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/antivirus/core/scanners/h;->a:J

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "ScanResult.obj"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "ScanResult.obj"

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Lcom/antivirus/core/scanners/h;->a(Ljava/io/ObjectInputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/antivirus/core/scanners/h;->a:J

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "ScanResult.obj"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v1}, Lcom/antivirus/core/scanners/h;->a(Ljava/io/ObjectOutputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/antivirus/core/scanners/h;->b:J

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-boolean v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a:Z

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    iget-boolean v0, v0, Lcom/antivirus/core/scanners/ag;->a:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->e:Lcom/antivirus/core/scanners/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->e:Lcom/antivirus/core/scanners/s;

    iget-boolean v0, v0, Lcom/antivirus/core/scanners/s;->a:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-boolean v0, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->a:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    iget-boolean v0, v0, Lcom/antivirus/core/scanners/ScannerSmsResult;->a:Z

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/h;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v1}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    invoke-virtual {v1}, Lcom/antivirus/core/scanners/ScannerFilesResult;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    invoke-virtual {v1}, Lcom/antivirus/core/scanners/ScannerSmsResult;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v1}, Lcom/antivirus/core/scanners/ag;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/antivirus/core/scanners/h;->e:Lcom/antivirus/core/scanners/s;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/antivirus/core/scanners/h;->e:Lcom/antivirus/core/scanners/s;

    invoke-virtual {v1}, Lcom/antivirus/core/scanners/s;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method
