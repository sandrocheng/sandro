.class public Lorg/antivirus/core/scanners/w;
.super Lorg/antivirus/core/scanners/j;


# instance fields
.field private g:Ljava/util/ArrayList;

.field private h:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;Lorg/antivirus/core/scanners/l;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lorg/antivirus/core/scanners/j;-><init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;Lorg/antivirus/core/scanners/l;)V

    new-instance v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ScannerPackagesResult;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/w;->a:Lorg/antivirus/core/scanners/d;

    iget-object v0, p0, Lorg/antivirus/core/scanners/w;->c:Lorg/antivirus/core/scanners/l;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ScannerPackagesConfig;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/w;->c:Lorg/antivirus/core/scanners/l;

    iget-object v0, p0, Lorg/antivirus/core/scanners/w;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;

    invoke-virtual {p1}, Lorg/antivirus/core/EngineSettings;->isPUPEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x1869f

    :goto_0
    iput v1, v0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    :cond_0
    invoke-virtual {p1}, Lorg/antivirus/core/EngineSettings;->getIgnorePackages()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/scanners/w;->h:Ljava/lang/String;

    iget-object v0, p0, Lorg/antivirus/core/scanners/w;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lorg/antivirus/core/scanners/w;->h:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/antivirus/core/scanners/w;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/scanners/w;->h:Ljava/lang/String;

    return-void

    :cond_2
    const/4 v1, 0x5

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

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

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "Name: classes.dex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_2
    :try_start_3
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_5

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    if-eqz p0, :cond_6

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_7
    :goto_6
    throw v0

    :catch_4
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_5

    :catch_5
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_2
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

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    new-instance v3, Lorg/antivirus/core/scanners/x;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v0}, Lorg/antivirus/core/scanners/x;-><init>(Lorg/antivirus/core/scanners/w;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

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

.method protected static a(Landroid/content/Context;Lorg/antivirus/core/scanners/ScannerPackagesResult;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p1, Lorg/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p1, Lorg/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected static a(Landroid/content/Context;Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/ScannerPackagesResult;)V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move v3, v2

    :goto_0
    iget-object v0, p2, Lorg/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p2, Lorg/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

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

    if-eqz p1, :cond_0

    :try_start_2
    iget-object v1, p1, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v1, v1, Lorg/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

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

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method private static a(Lorg/antivirus/core/scanners/x;Landroid/content/pm/PackageInfo;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/antivirus/core/scanners/x;->b:Ljava/util/List;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/antivirus/core/scanners/x;->e:Ljava/util/List;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/antivirus/core/scanners/x;->d:Ljava/util/List;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_7

    :goto_3
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/antivirus/core/scanners/x;->c:Ljava/util/List;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private a(Lorg/antivirus/core/scanners/x;Landroid/content/Context;Landroid/content/pm/PackageManager;Lorg/antivirus/core/c/b;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p1, Lorg/antivirus/core/scanners/x;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    new-instance v2, Ljava/util/jar/JarFile;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/a/a/a/b/a;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-static {v4}, Lorg/a/a/a/a/a;->b([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lorg/antivirus/core/scanners/x;->f:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/scanners/w;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/antivirus/core/scanners/x;->g:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    :cond_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_1
    :try_start_5
    iget-object v0, p1, Lorg/antivirus/core/scanners/x;->f:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v1, p1, Lorg/antivirus/core/scanners/x;->f:Ljava/lang/String;

    iget-object v0, p1, Lorg/antivirus/core/scanners/x;->f:Ljava/lang/String;

    invoke-static {v0}, Lorg/a/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/a/a/b;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/antivirus/core/scanners/x;->f:Ljava/lang/String;

    sget-object v2, Lorg/antivirus/core/c/d;->b:Lorg/antivirus/core/c/d;

    iget-object v0, p0, Lorg/antivirus/core/scanners/w;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;

    iget v0, v0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    invoke-virtual {p4, p2, v2, v1, v0}, Lorg/antivirus/core/c/b;->a(Landroid/content/Context;Lorg/antivirus/core/c/d;Ljava/lang/String;I)Lorg/antivirus/core/c/e;

    move-result-object v0

    iget-boolean v1, v0, Lorg/antivirus/core/c/e;->c:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v1, :cond_4

    :try_start_6
    iget-object v2, p1, Lorg/antivirus/core/scanners/x;->f:Ljava/lang/String;

    iput-object v2, p1, Lorg/antivirus/core/scanners/x;->i:Ljava/lang/String;

    iget v0, v0, Lorg/antivirus/core/c/e;->b:I

    iput v0, p1, Lorg/antivirus/core/scanners/x;->j:I

    :cond_4
    :goto_2
    iget-object v0, p1, Lorg/antivirus/core/scanners/x;->g:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v2, p1, Lorg/antivirus/core/scanners/x;->g:Ljava/lang/String;

    iget-object v0, p1, Lorg/antivirus/core/scanners/x;->g:Ljava/lang/String;

    invoke-static {v0}, Lorg/a/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/a/a/b;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/antivirus/core/scanners/x;->g:Ljava/lang/String;

    sget-object v3, Lorg/antivirus/core/c/d;->a:Lorg/antivirus/core/c/d;

    iget-object v0, p0, Lorg/antivirus/core/scanners/w;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;

    iget v0, v0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    invoke-virtual {p4, p2, v3, v2, v0}, Lorg/antivirus/core/c/b;->a(Landroid/content/Context;Lorg/antivirus/core/c/d;Ljava/lang/String;I)Lorg/antivirus/core/c/e;

    move-result-object v2

    iget-boolean v0, v2, Lorg/antivirus/core/c/e;->c:Z

    if-eqz v0, :cond_9

    if-eqz v1, :cond_8

    iget v0, v2, Lorg/antivirus/core/c/e;->b:I

    iget v3, p1, Lorg/antivirus/core/scanners/x;->j:I

    if-ge v0, v3, :cond_9

    iget-object v0, p1, Lorg/antivirus/core/scanners/x;->g:Ljava/lang/String;

    iput-object v0, p1, Lorg/antivirus/core/scanners/x;->i:Ljava/lang/String;

    iget v0, v2, Lorg/antivirus/core/c/e;->b:I

    iput v0, p1, Lorg/antivirus/core/scanners/x;->j:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :goto_3
    return v1

    :catch_0
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move v1, v3

    :goto_4
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_5
    :try_start_9
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_5

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_5
    :goto_6
    if-eqz v2, :cond_3

    :try_start_b
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_1

    :catch_4
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :catch_5
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_7
    if-eqz v1, :cond_6

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    :try_start_e
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :cond_7
    :goto_9
    :try_start_f
    throw v0

    :catch_6
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_8

    :catch_7
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_9

    :cond_8
    :try_start_10
    iget-boolean v0, v2, Lorg/antivirus/core/c/e;->c:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    :try_start_11
    iget-object v1, p1, Lorg/antivirus/core/scanners/x;->g:Ljava/lang/String;

    iput-object v1, p1, Lorg/antivirus/core/scanners/x;->i:Ljava/lang/String;

    iget v1, v2, Lorg/antivirus/core/c/e;->b:I

    iput v1, p1, Lorg/antivirus/core/scanners/x;->j:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    :goto_a
    move v1, v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_a
    move-exception v0

    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_a

    :cond_a
    move v1, v3

    goto/16 :goto_2
.end method

.method private a(Lorg/antivirus/core/scanners/x;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/antivirus/core/scanners/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    iget-object v0, p0, Lorg/antivirus/core/scanners/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/c/e;

    iget-object v0, v0, Lorg/antivirus/core/c/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/antivirus/core/scanners/x;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/scanners/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/c/e;

    iget-object v0, v0, Lorg/antivirus/core/c/e;->a:Ljava/lang/String;

    iput-object v0, p1, Lorg/antivirus/core/scanners/x;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/core/scanners/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/c/e;

    iget v0, v0, Lorg/antivirus/core/c/e;->b:I

    iput v0, p1, Lorg/antivirus/core/scanners/x;->j:I

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

.method private a(Lorg/antivirus/core/scanners/x;Ljava/util/ListIterator;)Z
    .locals 1

    :cond_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/antivirus/core/scanners/w;->a(Lorg/antivirus/core/scanners/x;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 18

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/scanners/w;->c:Lorg/antivirus/core/scanners/l;

    move-object v3, v2

    check-cast v3, Lorg/antivirus/core/scanners/ScannerPackagesConfig;

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    new-instance v10, Lorg/antivirus/core/c/b;

    invoke-direct {v10}, Lorg/antivirus/core/c/b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    sget-object v4, Lorg/antivirus/core/c/d;->c:Lorg/antivirus/core/c/d;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/scanners/w;->c:Lorg/antivirus/core/scanners/l;

    check-cast v2, Lorg/antivirus/core/scanners/ScannerPackagesConfig;

    iget v2, v2, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v4, v2}, Lorg/antivirus/core/c/b;->a(Landroid/content/Context;Lorg/antivirus/core/c/d;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/antivirus/core/scanners/w;->g:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/scanners/w;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/scanners/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v10}, Lorg/antivirus/core/c/b;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/scanners/w;->a:Lorg/antivirus/core/scanners/d;

    check-cast v2, Lorg/antivirus/core/scanners/ScannerPackagesResult;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/antivirus/core/c/b;->e(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v4

    iput-object v4, v2, Lorg/antivirus/core/scanners/ScannerPackagesResult;->d:Ljava/util/TreeMap;

    iget-object v4, v3, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/antivirus/core/scanners/w;->a(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v12, v3

    move v13, v5

    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Lorg/antivirus/core/scanners/ScannerPackagesResult;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v3, 0x0

    move v11, v3

    :goto_2
    if-ge v11, v15, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v3, :cond_12

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/antivirus/core/scanners/x;

    move-object v9, v0

    mul-int/lit8 v3, v11, 0x64

    div-int v16, v3, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/core/scanners/w;->d:Landroid/os/Messenger;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/core/scanners/w;->c:Lorg/antivirus/core/scanners/l;

    iget-object v3, v3, Lorg/antivirus/core/scanners/l;->a:Lorg/antivirus/core/scanners/m;

    sget-object v4, Lorg/antivirus/core/scanners/m;->a:Lorg/antivirus/core/scanners/m;

    if-eq v3, v4, :cond_4

    if-gtz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/core/scanners/w;->c:Lorg/antivirus/core/scanners/l;

    iget-object v3, v3, Lorg/antivirus/core/scanners/l;->a:Lorg/antivirus/core/scanners/m;

    sget-object v4, Lorg/antivirus/core/scanners/m;->c:Lorg/antivirus/core/scanners/m;

    if-ne v3, v4, :cond_4

    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x2

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "percent"

    move/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "threat"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "package-name"

    iget-object v6, v9, Lorg/antivirus/core/scanners/x;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/antivirus/core/scanners/w;->d:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/core/scanners/w;->h:Ljava/lang/String;

    iget-object v4, v9, Lorg/antivirus/core/scanners/x;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v14, v10}, Lorg/antivirus/core/scanners/w;->a(Lorg/antivirus/core/scanners/x;Landroid/content/Context;Landroid/content/pm/PackageManager;Lorg/antivirus/core/c/b;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_11

    iget-object v3, v9, Lorg/antivirus/core/scanners/x;->h:Ljava/lang/String;

    const-string v4, "/data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v7, Lorg/antivirus/core/scanners/f;->c:Lorg/antivirus/core/scanners/f;

    :goto_4
    iget-object v3, v9, Lorg/antivirus/core/scanners/x;->a:Ljava/lang/String;

    iget-object v4, v9, Lorg/antivirus/core/scanners/x;->g:Ljava/lang/String;

    iget-object v5, v9, Lorg/antivirus/core/scanners/x;->f:Ljava/lang/String;

    iget-object v6, v9, Lorg/antivirus/core/scanners/x;->i:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v9, Lorg/antivirus/core/scanners/x;->j:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lorg/antivirus/core/scanners/ScannerPackagesResult;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/antivirus/core/scanners/f;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/core/scanners/w;->d:Landroid/os/Messenger;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/core/scanners/w;->c:Lorg/antivirus/core/scanners/l;

    iget-object v3, v3, Lorg/antivirus/core/scanners/l;->a:Lorg/antivirus/core/scanners/m;

    sget-object v4, Lorg/antivirus/core/scanners/m;->a:Lorg/antivirus/core/scanners/m;

    if-eq v3, v4, :cond_5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x2

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "percent"

    move/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "threat"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "package-name"

    iget-object v6, v9, Lorg/antivirus/core/scanners/x;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/antivirus/core/scanners/w;->d:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_5
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto/16 :goto_2

    :cond_6
    const/4 v7, 0x1

    :try_start_4
    iget-object v3, v3, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->c:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v4, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v5, 0x0

    :try_start_5
    invoke-virtual {v14, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_7
    :goto_6
    :try_start_6
    new-instance v5, Lorg/antivirus/core/scanners/x;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v4}, Lorg/antivirus/core/scanners/x;-><init>(Lorg/antivirus/core/scanners/w;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v6

    move v13, v7

    goto/16 :goto_1

    :catch_0
    move-exception v5

    invoke-static {v5}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v3, v10

    :goto_7
    :try_start_7
    invoke-static {v2}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/antivirus/core/c/b;->a()V

    goto/16 :goto_0

    :cond_8
    :try_start_8
    iget-object v3, v9, Lorg/antivirus/core/scanners/x;->a:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, v9, Lorg/antivirus/core/scanners/x;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lorg/antivirus/core/scanners/w;->a(Lorg/antivirus/core/scanners/x;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_9
    invoke-static {v9, v3}, Lorg/antivirus/core/scanners/w;->a(Lorg/antivirus/core/scanners/x;Landroid/content/pm/PackageInfo;)V

    iget-object v3, v9, Lorg/antivirus/core/scanners/x;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lorg/antivirus/core/scanners/w;->a(Lorg/antivirus/core/scanners/x;Ljava/util/ListIterator;)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_a
    iget-object v3, v9, Lorg/antivirus/core/scanners/x;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lorg/antivirus/core/scanners/w;->a(Lorg/antivirus/core/scanners/x;Ljava/util/ListIterator;)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_b
    iget-object v3, v9, Lorg/antivirus/core/scanners/x;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lorg/antivirus/core/scanners/w;->a(Lorg/antivirus/core/scanners/x;Ljava/util/ListIterator;)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_c
    iget-object v3, v9, Lorg/antivirus/core/scanners/x;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lorg/antivirus/core/scanners/w;->a(Lorg/antivirus/core/scanners/x;Ljava/util/ListIterator;)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_e
    iget-object v3, v9, Lorg/antivirus/core/scanners/x;->h:Ljava/lang/String;

    const-string v4, "/system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v7, Lorg/antivirus/core/scanners/f;->d:Lorg/antivirus/core/scanners/f;

    goto/16 :goto_4

    :cond_f
    iget-object v3, v9, Lorg/antivirus/core/scanners/x;->h:Ljava/lang/String;

    const-string v4, "/mnt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v7, Lorg/antivirus/core/scanners/f;->b:Lorg/antivirus/core/scanners/f;

    goto/16 :goto_4

    :cond_10
    sget-object v7, Lorg/antivirus/core/scanners/f;->e:Lorg/antivirus/core/scanners/f;

    goto/16 :goto_4

    :cond_11
    if-eqz v13, :cond_5

    iget-object v3, v9, Lorg/antivirus/core/scanners/x;->h:Ljava/lang/String;

    const-string v4, "/data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Lorg/antivirus/core/scanners/f;->c:Lorg/antivirus/core/scanners/f;

    :goto_8
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "pkgName"

    iget-object v6, v9, Lorg/antivirus/core/scanners/x;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "man"

    iget-object v6, v9, Lorg/antivirus/core/scanners/x;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "dex"

    iget-object v6, v9, Lorg/antivirus/core/scanners/x;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "loc"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/antivirus/core/scanners/w;->a(Landroid/os/Bundle;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v2

    :try_start_9
    invoke-static {v2}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_12
    invoke-virtual {v10}, Lorg/antivirus/core/c/b;->a()V

    goto/16 :goto_0

    :cond_13
    :try_start_a
    iget-object v3, v9, Lorg/antivirus/core/scanners/x;->h:Ljava/lang/String;

    const-string v4, "/system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Lorg/antivirus/core/scanners/f;->d:Lorg/antivirus/core/scanners/f;

    goto :goto_8

    :cond_14
    iget-object v3, v9, Lorg/antivirus/core/scanners/x;->h:Ljava/lang/String;

    const-string v4, "/mnt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Lorg/antivirus/core/scanners/f;->b:Lorg/antivirus/core/scanners/f;

    goto :goto_8

    :cond_15
    sget-object v3, Lorg/antivirus/core/scanners/f;->e:Lorg/antivirus/core/scanners/f;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_8

    :catchall_0
    move-exception v2

    move-object v10, v4

    :goto_9
    if-eqz v10, :cond_16

    invoke-virtual {v10}, Lorg/antivirus/core/c/b;->a()V

    :cond_16
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_9

    :catchall_2
    move-exception v2

    move-object v10, v3

    goto :goto_9

    :catch_3
    move-exception v2

    move-object v3, v4

    goto/16 :goto_7
.end method
