.class public final Lorg/antivirus/core/scanners/g;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:J

.field public c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

.field public d:Lorg/antivirus/core/scanners/ad;

.field public e:Lorg/antivirus/core/scanners/r;

.field public f:Lorg/antivirus/core/scanners/ScannerFilesResult;

.field public g:Lorg/antivirus/core/scanners/ScannerSmsResult;

.field public h:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lorg/antivirus/core/scanners/g;->a:J

    iput-wide v1, p0, Lorg/antivirus/core/scanners/g;->b:J

    iput-object v0, p0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iput-object v0, p0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    iput-object v0, p0, Lorg/antivirus/core/scanners/g;->e:Lorg/antivirus/core/scanners/r;

    iput-object v0, p0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iput-object v0, p0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    iput-object v0, p0, Lorg/antivirus/core/scanners/g;->h:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const-string v0, "ScanResult.obj"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v2, v6, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "ScanResult.obj"

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/antivirus/core/scanners/g;->b:J

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    new-instance v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ScannerPackagesResult;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    :cond_1
    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    new-instance v0, Lorg/antivirus/core/scanners/ScannerFilesResult;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ScannerFilesResult;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    :cond_2
    const-wide/16 v4, 0x8

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    new-instance v0, Lorg/antivirus/core/scanners/ScannerSmsResult;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ScannerSmsResult;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    :cond_3
    const-wide/16 v4, 0x10

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    new-instance v0, Lorg/antivirus/core/scanners/ad;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ad;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    :cond_4
    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-eqz v0, :cond_5

    new-instance v0, Lorg/antivirus/core/scanners/r;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/r;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/g;->e:Lorg/antivirus/core/scanners/r;

    :cond_5
    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/scanners/ScannerPackagesResult;->a(Ljava/io/ObjectInputStream;)V

    :cond_6
    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/scanners/ScannerFilesResult;->a(Ljava/io/ObjectInputStream;)V

    :cond_7
    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/scanners/ScannerSmsResult;->a(Ljava/io/ObjectInputStream;)V

    :cond_8
    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/scanners/ad;->a(Ljava/io/ObjectInputStream;)V

    :cond_9
    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->e:Lorg/antivirus/core/scanners/r;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->e:Lorg/antivirus/core/scanners/r;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/scanners/r;->a(Ljava/io/ObjectInputStream;)V

    :cond_a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    iput-wide v6, p0, Lorg/antivirus/core/scanners/g;->a:J

    iput-wide v6, p0, Lorg/antivirus/core/scanners/g;->b:J

    iput-object v8, p0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iput-object v8, p0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    iput-object v8, p0, Lorg/antivirus/core/scanners/g;->e:Lorg/antivirus/core/scanners/r;

    iput-object v8, p0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iput-object v8, p0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    iput-object v8, p0, Lorg/antivirus/core/scanners/g;->h:Ljava/util/TreeMap;

    goto/16 :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iget-boolean v0, v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;->a:Z

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    iget-boolean v0, v0, Lorg/antivirus/core/scanners/ad;->a:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->e:Lorg/antivirus/core/scanners/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->e:Lorg/antivirus/core/scanners/r;

    iget-boolean v0, v0, Lorg/antivirus/core/scanners/r;->a:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-boolean v0, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->a:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    iget-boolean v0, v0, Lorg/antivirus/core/scanners/ScannerSmsResult;->a:Z

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/antivirus/core/scanners/g;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v0}, Lorg/antivirus/core/scanners/ScannerPackagesResult;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    iget-object v1, p0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    invoke-virtual {v1}, Lorg/antivirus/core/scanners/ScannerFilesResult;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    invoke-virtual {v1}, Lorg/antivirus/core/scanners/ScannerSmsResult;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v1}, Lorg/antivirus/core/scanners/ad;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lorg/antivirus/core/scanners/g;->e:Lorg/antivirus/core/scanners/r;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/antivirus/core/scanners/g;->e:Lorg/antivirus/core/scanners/r;

    add-int/lit8 v0, v0, 0x0

    :cond_4
    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string v0, "ScanResult.obj"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-wide v0, p0, Lorg/antivirus/core/scanners/g;->b:J

    invoke-virtual {v3, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    const-wide/16 v0, 0x0

    iget-object v4, p0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x1

    :cond_0
    iget-object v4, p0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x4

    add-long/2addr v0, v4

    :cond_1
    iget-object v4, p0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x8

    add-long/2addr v0, v4

    :cond_2
    iget-object v4, p0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x10

    add-long/2addr v0, v4

    :cond_3
    iget-object v4, p0, Lorg/antivirus/core/scanners/g;->e:Lorg/antivirus/core/scanners/r;

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    :cond_4
    invoke-virtual {v3, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v0, v3}, Lorg/antivirus/core/scanners/ScannerPackagesResult;->a(Ljava/io/ObjectOutputStream;)V

    :cond_5
    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    invoke-virtual {v0, v3}, Lorg/antivirus/core/scanners/ScannerFilesResult;->a(Ljava/io/ObjectOutputStream;)V

    :cond_6
    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    invoke-virtual {v0, v3}, Lorg/antivirus/core/scanners/ScannerSmsResult;->a(Ljava/io/ObjectOutputStream;)V

    :cond_7
    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0, v3}, Lorg/antivirus/core/scanners/ad;->a(Ljava/io/ObjectOutputStream;)V

    :cond_8
    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->e:Lorg/antivirus/core/scanners/r;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/antivirus/core/scanners/g;->e:Lorg/antivirus/core/scanners/r;

    invoke-virtual {v0, v3}, Lorg/antivirus/core/scanners/r;->a(Ljava/io/ObjectOutputStream;)V

    :cond_9
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
