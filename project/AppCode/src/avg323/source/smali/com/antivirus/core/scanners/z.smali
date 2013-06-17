.class public Lcom/antivirus/core/scanners/z;
.super Lcom/antivirus/core/scanners/k;


# instance fields
.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/antivirus/core/b;Landroid/os/Handler;Landroid/os/Messenger;Lcom/antivirus/core/scanners/m;)V
    .locals 2

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/antivirus/core/scanners/k;-><init>(Lcom/antivirus/core/b;Landroid/os/Handler;Lcom/antivirus/core/scanners/m;Landroid/os/Messenger;)V

    new-instance v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/ScannerPackagesResult;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/scanners/z;->a:Lcom/antivirus/core/scanners/e;

    iget-object v0, p0, Lcom/antivirus/core/scanners/z;->c:Lcom/antivirus/core/scanners/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/core/scanners/ScannerPackagesConfig;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/ScannerPackagesConfig;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/scanners/z;->c:Lcom/antivirus/core/scanners/m;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/z;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerPackagesConfig;

    invoke-virtual {p1}, Lcom/antivirus/core/b;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x1869f

    :goto_0
    iput v1, v0, Lcom/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    invoke-virtual {p1}, Lcom/antivirus/core/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/core/scanners/z;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/core/scanners/z;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/antivirus/core/scanners/z;->h:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/antivirus/core/scanners/z;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/core/scanners/z;->h:Ljava/lang/String;

    return-void

    :cond_2
    const/4 v1, 0x5

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const-string v0, ""

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "Name: classes.dex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :cond_5
    :goto_2
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_3
    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_4
    :try_start_4
    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_6

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_6
    :goto_5
    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_6
    if-eqz p1, :cond_7

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_7
    if-eqz v2, :cond_8

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_8
    :goto_8
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_7

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_8

    :catch_5
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :catch_6
    move-exception v2

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_4
.end method

.method private a(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/z;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    new-instance v3, Lcom/antivirus/core/scanners/aa;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/antivirus/core/scanners/aa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private a(Lcom/antivirus/core/scanners/aa;Landroid/content/pm/PackageInfo;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/util/jar/JarFile;

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v3, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, La/a/a/a/b/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/a;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/antivirus/core/scanners/aa;->g:Ljava/lang/String;

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/antivirus/core/scanners/z;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/antivirus/core/scanners/aa;->h:Ljava/lang/String;

    const-string v0, "AndroidManifest.xml"

    invoke-virtual {v3, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/a/a/f;->a(Ljava/io/InputStream;)Lcom/antivirus/core/scanners/a/a;

    move-result-object v0

    iput-object v0, p1, Lcom/antivirus/core/scanners/aa;->l:Lcom/antivirus/core/scanners/a/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :cond_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    :cond_3
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    :cond_6
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_4
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_5
    if-eqz v1, :cond_7

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    :cond_8
    if-eqz v3, :cond_9

    :try_start_9
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_9
    :goto_7
    throw v0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_6

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_7

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_6
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method private a(Lcom/antivirus/core/scanners/aa;Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/antivirus/core/e/b;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/antivirus/core/scanners/z;->a(Lcom/antivirus/core/scanners/aa;Landroid/content/pm/PackageInfo;)V

    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/antivirus/core/scanners/aa;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->g:Ljava/lang/String;

    invoke-static {v0}, La/a/a/a/a/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/b;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/antivirus/core/scanners/aa;->g:Ljava/lang/String;

    sget-object v3, Lcom/antivirus/core/e/d;->b:Lcom/antivirus/core/e/d;

    iget-object v0, p0, Lcom/antivirus/core/scanners/z;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerPackagesConfig;

    iget v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    invoke-virtual {p4, p2, v3, v2, v0}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;Lcom/antivirus/core/e/d;Ljava/lang/String;I)Lcom/antivirus/core/e/e;

    move-result-object v0

    iget-boolean v1, v0, Lcom/antivirus/core/e/e;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v2, p1, Lcom/antivirus/core/scanners/aa;->g:Ljava/lang/String;

    iput-object v2, p1, Lcom/antivirus/core/scanners/aa;->i:Ljava/lang/String;

    iget v0, v0, Lcom/antivirus/core/e/e;->b:I

    iput v0, p1, Lcom/antivirus/core/scanners/aa;->j:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :try_start_2
    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/antivirus/core/scanners/aa;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->h:Ljava/lang/String;

    invoke-static {v0}, La/a/a/a/a/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/b;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/antivirus/core/scanners/aa;->h:Ljava/lang/String;

    sget-object v3, Lcom/antivirus/core/e/d;->a:Lcom/antivirus/core/e/d;

    iget-object v0, p0, Lcom/antivirus/core/scanners/z;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerPackagesConfig;

    iget v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    invoke-virtual {p4, p2, v3, v2, v0}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;Lcom/antivirus/core/e/d;Ljava/lang/String;I)Lcom/antivirus/core/e/e;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-boolean v0, v2, Lcom/antivirus/core/e/e;->c:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    iget v0, v2, Lcom/antivirus/core/e/e;->b:I

    iget v3, p1, Lcom/antivirus/core/scanners/aa;->j:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ge v0, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :try_start_3
    iget-object v1, p1, Lcom/antivirus/core/scanners/aa;->h:Ljava/lang/String;

    iput-object v1, p1, Lcom/antivirus/core/scanners/aa;->i:Ljava/lang/String;

    iget v1, v2, Lcom/antivirus/core/e/e;->b:I

    iput v1, p1, Lcom/antivirus/core/scanners/aa;->j:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_1
    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/antivirus/core/scanners/aa;Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/antivirus/core/e/b;Lcom/antivirus/core/scanners/t;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_a

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/antivirus/core/scanners/z;->a(Lcom/antivirus/core/scanners/aa;Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/antivirus/core/e/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/antivirus/core/scanners/aa;->j:I

    if-gt v0, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->l:Lcom/antivirus/core/scanners/a/a;

    if-eqz v0, :cond_8

    new-instance v6, Lcom/antivirus/core/scanners/aa;

    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/antivirus/core/scanners/aa;->f:Ljava/lang/String;

    invoke-direct {v6, v0, v4}, Lcom/antivirus/core/scanners/aa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->l:Lcom/antivirus/core/scanners/a/a;

    iput-object v0, v6, Lcom/antivirus/core/scanners/aa;->l:Lcom/antivirus/core/scanners/a/a;

    iget-object v0, p0, Lcom/antivirus/core/scanners/z;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerPackagesConfig;

    iget v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    invoke-virtual {p5, v6, v0}, Lcom/antivirus/core/scanners/t;->a(Lcom/antivirus/core/scanners/aa;I)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez v1, :cond_2

    iget v0, v6, Lcom/antivirus/core/scanners/aa;->j:I

    iget v4, p1, Lcom/antivirus/core/scanners/aa;->j:I

    if-ge v0, v4, :cond_9

    :cond_2
    iget v0, v6, Lcom/antivirus/core/scanners/aa;->j:I

    iput v0, p1, Lcom/antivirus/core/scanners/aa;->j:I

    iget-object v0, v6, Lcom/antivirus/core/scanners/aa;->i:Ljava/lang/String;

    iput-object v0, p1, Lcom/antivirus/core/scanners/aa;->i:Ljava/lang/String;

    iget v0, v6, Lcom/antivirus/core/scanners/aa;->k:I

    iput v0, p1, Lcom/antivirus/core/scanners/aa;->k:I

    move v5, v2

    :goto_2
    if-nez v5, :cond_3

    iget v0, p1, Lcom/antivirus/core/scanners/aa;->j:I

    if-le v0, v3, :cond_0

    :cond_3
    move v1, v2

    move v0, v2

    :goto_3
    if-nez v0, :cond_4

    iget-object v4, v6, Lcom/antivirus/core/scanners/aa;->l:Lcom/antivirus/core/scanners/a/a;

    iget-object v4, v4, Lcom/antivirus/core/scanners/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v0, v6, Lcom/antivirus/core/scanners/aa;->l:Lcom/antivirus/core/scanners/a/a;

    iget-object v0, v0, Lcom/antivirus/core/scanners/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/antivirus/core/scanners/z;->a(Lcom/antivirus/core/scanners/aa;Ljava/lang/String;)Z

    move-result v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v4

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_6

    if-nez v5, :cond_5

    iget v1, v6, Lcom/antivirus/core/scanners/aa;->j:I

    iget v4, p1, Lcom/antivirus/core/scanners/aa;->j:I

    if-ge v1, v4, :cond_6

    :cond_5
    iget v1, v6, Lcom/antivirus/core/scanners/aa;->j:I

    iput v1, p1, Lcom/antivirus/core/scanners/aa;->j:I

    iget-object v1, v6, Lcom/antivirus/core/scanners/aa;->i:Ljava/lang/String;

    iput-object v1, p1, Lcom/antivirus/core/scanners/aa;->i:Ljava/lang/String;

    iget v1, v6, Lcom/antivirus/core/scanners/aa;->k:I

    iput v1, p1, Lcom/antivirus/core/scanners/aa;->k:I

    :cond_6
    if-eqz v5, :cond_7

    if-nez v0, :cond_7

    :goto_4
    move v2, v3

    goto :goto_0

    :cond_7
    move v3, v2

    goto :goto_4

    :cond_8
    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->a:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {p3, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v3, p1, Lcom/antivirus/core/scanners/aa;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/antivirus/core/scanners/z;->a(Lcom/antivirus/core/scanners/aa;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/antivirus/core/scanners/z;->b(Lcom/antivirus/core/scanners/aa;Landroid/content/pm/PackageInfo;)V

    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/antivirus/core/scanners/z;->a(Lcom/antivirus/core/scanners/aa;Ljava/util/ListIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/antivirus/core/scanners/z;->a(Lcom/antivirus/core/scanners/aa;Ljava/util/ListIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/antivirus/core/scanners/z;->a(Lcom/antivirus/core/scanners/aa;Ljava/util/ListIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/antivirus/core/scanners/z;->a(Lcom/antivirus/core/scanners/aa;Ljava/util/ListIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_4

    :cond_9
    move v5, v1

    goto/16 :goto_2

    :cond_a
    move v1, v3

    goto/16 :goto_1
.end method

.method private a(Lcom/antivirus/core/scanners/aa;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/antivirus/core/scanners/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    iget-object v0, p0, Lcom/antivirus/core/scanners/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/e/e;

    iget-object v0, v0, Lcom/antivirus/core/e/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/e/e;

    iget-object v0, v0, Lcom/antivirus/core/e/e;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/antivirus/core/scanners/aa;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/e/e;

    iget v0, v0, Lcom/antivirus/core/e/e;->b:I

    iput v0, p1, Lcom/antivirus/core/scanners/aa;->j:I

    iget-object v0, p0, Lcom/antivirus/core/scanners/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/e/e;

    iget v0, v0, Lcom/antivirus/core/e/e;->d:I

    iput v0, p1, Lcom/antivirus/core/scanners/aa;->k:I

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/antivirus/core/scanners/aa;Ljava/util/ListIterator;)Z
    .locals 1

    :cond_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/z;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/antivirus/core/scanners/z;->a(Lcom/antivirus/core/scanners/aa;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/antivirus/core/scanners/aa;Landroid/content/pm/PackageInfo;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/antivirus/core/scanners/aa;->b:Ljava/util/List;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/antivirus/core/scanners/aa;->e:Ljava/util/List;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/antivirus/core/scanners/aa;->d:Ljava/util/List;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_7

    :goto_3
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/antivirus/core/scanners/aa;->c:Ljava/util/List;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/ScannerPackagesResult;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p3, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p3, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 22

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/z;->c:Lcom/antivirus/core/scanners/m;

    check-cast v2, Lcom/antivirus/core/scanners/ScannerPackagesConfig;

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Lcom/antivirus/core/e/b;

    invoke-direct {v6}, Lcom/antivirus/core/e/b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    sget-object v7, Lcom/antivirus/core/e/d;->c:Lcom/antivirus/core/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/scanners/z;->c:Lcom/antivirus/core/scanners/m;

    check-cast v3, Lcom/antivirus/core/scanners/ScannerPackagesConfig;

    iget v3, v3, Lcom/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7, v3}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;Lcom/antivirus/core/e/d;I)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/antivirus/core/scanners/z;->f:Ljava/util/ArrayList;

    sget-object v7, Lcom/antivirus/core/e/d;->f:Lcom/antivirus/core/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/scanners/z;->c:Lcom/antivirus/core/scanners/m;

    check-cast v3, Lcom/antivirus/core/scanners/ScannerPackagesConfig;

    iget v3, v3, Lcom/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7, v3}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;Lcom/antivirus/core/e/d;I)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/antivirus/core/scanners/z;->g:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/scanners/z;->f:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/scanners/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/scanners/z;->g:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/scanners/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    if-eqz v6, :cond_2

    :goto_0
    invoke-virtual {v6}, Lcom/antivirus/core/e/b;->a()V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    new-instance v7, Lcom/antivirus/core/scanners/t;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/scanners/z;->g:Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Lcom/antivirus/core/scanners/t;-><init>(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/antivirus/core/scanners/z;->a:Lcom/antivirus/core/scanners/e;

    check-cast v8, Lcom/antivirus/core/scanners/ScannerPackagesResult;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/antivirus/core/e/b;->e(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v3

    iput-object v3, v8, Lcom/antivirus/core/scanners/ScannerPackagesResult;->d:Ljava/util/TreeMap;

    iget-object v3, v2, Lcom/antivirus/core/scanners/ScannerPackagesConfig;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/antivirus/core/scanners/z;->a(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v17, v2

    move/from16 v18, v4

    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v8, Lcom/antivirus/core/scanners/ScannerPackagesResult;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v19, 0x0

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/antivirus/core/scanners/z;->b()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/antivirus/core/scanners/aa;

    mul-int/lit8 v2, v16, 0x64

    div-int v21, v2, v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/z;->d:Landroid/os/Messenger;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/z;->c:Lcom/antivirus/core/scanners/m;

    iget-object v2, v2, Lcom/antivirus/core/scanners/m;->a:Lcom/antivirus/core/scanners/n;

    sget-object v4, Lcom/antivirus/core/scanners/n;->a:Lcom/antivirus/core/scanners/n;

    if-eq v2, v4, :cond_5

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/z;->c:Lcom/antivirus/core/scanners/m;

    iget-object v2, v2, Lcom/antivirus/core/scanners/m;->a:Lcom/antivirus/core/scanners/n;

    sget-object v4, Lcom/antivirus/core/scanners/n;->c:Lcom/antivirus/core/scanners/n;

    if-ne v2, v4, :cond_5

    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x2

    iput v4, v2, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v9, "percent"

    move/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "threat"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "package-name"

    iget-object v10, v3, Lcom/antivirus/core/scanners/aa;->a:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/antivirus/core/scanners/z;->d:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/z;->h:Ljava/lang/String;

    iget-object v4, v3, Lcom/antivirus/core/scanners/aa;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    :goto_3
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_2

    :cond_7
    const/4 v10, 0x1

    :try_start_4
    iget-object v2, v2, Lcom/antivirus/core/scanners/ScannerPackagesConfig;->c:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {v5, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_8
    :goto_4
    :try_start_6
    new-instance v4, Lcom/antivirus/core/scanners/aa;

    invoke-direct {v4, v2, v3}, Lcom/antivirus/core/scanners/aa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_1

    :catch_0
    move-exception v4

    invoke-static {v4}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    :goto_5
    :try_start_7
    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v6, :cond_2

    goto/16 :goto_0

    :cond_9
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    :try_start_8
    invoke-direct/range {v2 .. v7}, Lcom/antivirus/core/scanners/z;->a(Lcom/antivirus/core/scanners/aa;Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/antivirus/core/e/b;Lcom/antivirus/core/scanners/t;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v3, Lcom/antivirus/core/scanners/aa;->f:Ljava/lang/String;

    const-string v4, "/data"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v13, Lcom/antivirus/core/scanners/g;->c:Lcom/antivirus/core/scanners/g;

    :goto_6
    iget-object v9, v3, Lcom/antivirus/core/scanners/aa;->a:Ljava/lang/String;

    iget-object v10, v3, Lcom/antivirus/core/scanners/aa;->h:Ljava/lang/String;

    iget-object v11, v3, Lcom/antivirus/core/scanners/aa;->g:Ljava/lang/String;

    iget-object v12, v3, Lcom/antivirus/core/scanners/aa;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v3, Lcom/antivirus/core/scanners/aa;->j:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v3, Lcom/antivirus/core/scanners/aa;->k:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v8 .. v15}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/core/scanners/g;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/z;->d:Landroid/os/Messenger;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/z;->c:Lcom/antivirus/core/scanners/m;

    iget-object v2, v2, Lcom/antivirus/core/scanners/m;->a:Lcom/antivirus/core/scanners/n;

    sget-object v4, Lcom/antivirus/core/scanners/n;->a:Lcom/antivirus/core/scanners/n;

    if-eq v2, v4, :cond_6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x2

    iput v4, v2, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v9, "percent"

    move/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "threat"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "package-name"

    iget-object v3, v3, Lcom/antivirus/core/scanners/aa;->a:Ljava/lang/String;

    invoke-virtual {v4, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/scanners/z;->d:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v2

    :try_start_9
    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_a
    if-eqz v6, :cond_2

    goto/16 :goto_0

    :cond_b
    :try_start_a
    iget-object v2, v3, Lcom/antivirus/core/scanners/aa;->f:Ljava/lang/String;

    const-string v4, "/system"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v13, Lcom/antivirus/core/scanners/g;->d:Lcom/antivirus/core/scanners/g;

    goto/16 :goto_6

    :cond_c
    iget-object v2, v3, Lcom/antivirus/core/scanners/aa;->f:Ljava/lang/String;

    const-string v4, "/mnt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v13, Lcom/antivirus/core/scanners/g;->b:Lcom/antivirus/core/scanners/g;

    goto/16 :goto_6

    :cond_d
    sget-object v13, Lcom/antivirus/core/scanners/g;->e:Lcom/antivirus/core/scanners/g;

    goto/16 :goto_6

    :cond_e
    if-eqz v18, :cond_6

    iget-object v2, v3, Lcom/antivirus/core/scanners/aa;->f:Ljava/lang/String;

    const-string v4, "/data"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/antivirus/core/scanners/g;->c:Lcom/antivirus/core/scanners/g;

    move-object v4, v2

    :goto_7
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkgName"

    iget-object v10, v3, Lcom/antivirus/core/scanners/aa;->a:Ljava/lang/String;

    invoke-virtual {v9, v2, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "man"

    iget-object v10, v3, Lcom/antivirus/core/scanners/aa;->g:Ljava/lang/String;

    invoke-virtual {v9, v2, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dex"

    iget-object v3, v3, Lcom/antivirus/core/scanners/aa;->h:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cutoff"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/z;->c:Lcom/antivirus/core/scanners/m;

    check-cast v2, Lcom/antivirus/core/scanners/ScannerPackagesConfig;

    iget v2, v2, Lcom/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    invoke-virtual {v9, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "loc"

    invoke-virtual {v9, v2, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v2, 0x7d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/antivirus/core/scanners/z;->a(ILandroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    :goto_8
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/antivirus/core/e/b;->a()V

    :cond_f
    throw v2

    :cond_10
    :try_start_b
    iget-object v2, v3, Lcom/antivirus/core/scanners/aa;->f:Ljava/lang/String;

    const-string v4, "/system"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/antivirus/core/scanners/g;->d:Lcom/antivirus/core/scanners/g;

    move-object v4, v2

    goto :goto_7

    :cond_11
    iget-object v2, v3, Lcom/antivirus/core/scanners/aa;->f:Ljava/lang/String;

    const-string v4, "/mnt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/antivirus/core/scanners/g;->b:Lcom/antivirus/core/scanners/g;

    move-object v4, v2

    goto :goto_7

    :cond_12
    sget-object v2, Lcom/antivirus/core/scanners/g;->e:Lcom/antivirus/core/scanners/g;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    move-object v4, v2

    goto :goto_7

    :catchall_1
    move-exception v2

    move-object v6, v3

    goto :goto_8

    :catch_3
    move-exception v2

    move-object v6, v3

    goto/16 :goto_5
.end method

.method protected b(Landroid/content/Context;Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/ScannerPackagesResult;)V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move v3, v2

    :goto_0
    iget-object v0, p3, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p3, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    :try_start_2
    iget-object v1, p2, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v1, v1, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method
