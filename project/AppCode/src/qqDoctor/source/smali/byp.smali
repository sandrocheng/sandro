.class public final Lbyp;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lbyo;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Ljava/security/cert/CertificateFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    iput-object v0, p0, Lbyp;->c:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lbyp;->a:Landroid/content/Context;

    iput-object v0, p0, Lbyp;->d:Ljava/security/cert/CertificateFactory;

    return-void
.end method

.method private a(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;
    .locals 3

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lbyp;->d:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_1
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageInfo;Lcom/tencent/tmsecure/module/software/AppEntity;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    const-string v0, "pkgName"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "appName"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lbyp;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "isSystem"

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_3

    const-string v0, "pkgName"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "isSystem"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_4

    const-string v0, "icon"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lbyp;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_5

    const-string v0, "version"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "versionCode"

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "lastModified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-gtz v0, :cond_a

    :cond_6
    :goto_3
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_7

    const-string v0, "permissions"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_0

    const-string v0, "apkPath"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "isApk"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v1, v2

    goto/16 :goto_2

    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lbyp;->a(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lbtk;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_4
    const-string v1, "signatureCermMD5"

    invoke-virtual {p2, v1, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_4
.end method

.method private a(Ljava/lang/String;Lcom/tencent/tmsecure/module/software/AppEntity;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "android.content.pm.PackageParser"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    array-length v0, v3

    new-array v5, v0, [Ljava/lang/Class;

    array-length v6, v3

    move v0, v2

    :goto_0
    if-lt v0, v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v4}, Landroid/util/DisplayMetrics;->setToDefaults()V

    const-string v5, "parsePackage"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object p1, v6, v3

    const/4 v3, 0x2

    aput-object v4, v6, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v0, v5, v6}, Ldi;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "collectCertificates"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ldi;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mSignatures"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_0

    array-length v3, v0

    if-gtz v3, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_1
    aget-object v7, v3, v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lbyp;->a(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lbtk;->b([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_3
    const-string v1, "signatureCermMD5"

    invoke-virtual {p2, v1, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbyp;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " can\'t be found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 3

    const-string v0, "pkgName"

    invoke-virtual {p1, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_0

    const/16 v1, 0x40

    :cond_0
    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_1

    or-int/lit16 v1, v1, 0x1000

    :cond_1
    invoke-virtual {p0, v0, v1}, Lbyp;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p1, p2}, Lbyp;->a(Landroid/content/pm/PackageInfo;Lcom/tencent/tmsecure/module/software/AppEntity;I)V

    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final a(II)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lbyp;->c:Landroid/content/pm/PackageManager;

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    const/16 v0, 0x40

    :goto_0
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_0

    or-int/lit16 v0, v0, 0x1000

    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v4

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_3

    if-eq p2, v2, :cond_1

    :cond_3
    if-eqz v1, :cond_4

    if-eqz p2, :cond_1

    :cond_4
    iget-object v1, p0, Lbyp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lbyp;->a(Landroid/content/pm/PackageInfo;Lcom/tencent/tmsecure/module/software/AppEntity;I)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_0
.end method

.method public final a(IIZ)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lbyp;->c:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_0

    const/16 v0, 0x40

    :cond_0
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_1

    or-int/lit16 v0, v0, 0x1000

    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_4

    invoke-static {v0, p3}, Lbyn;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    invoke-direct {p0, v0, v3, p1}, Lbyp;->a(Landroid/content/pm/PackageInfo;Lcom/tencent/tmsecure/module/software/AppEntity;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_2

    invoke-static {v0}, Lbyn;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    invoke-direct {p0, v0, v3, p1}, Lbyp;->a(Landroid/content/pm/PackageInfo;Lcom/tencent/tmsecure/module/software/AppEntity;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lbyp;->a(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "ZIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    array-length v2, p2

    move v0, v4

    :goto_1
    if-lt v0, v2, :cond_2

    :cond_1
    invoke-static {p1, v1, p5}, Lbtd;->a(Ljava/io/File;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    aget-object v3, p2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_0

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    const-string v3, "apkPath"

    invoke-virtual {v1, v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p4}, Lbyp;->b(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz p3, :cond_7

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_6
    const-string v7, "appName"

    invoke-virtual {v3, v7, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "size"

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "apkPath"

    invoke-virtual {v3, v1, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "isApk"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbyp;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lbyp;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is not a visualble application"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "apkPath"

    invoke-virtual {p1, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lbyp;->c:Landroid/content/pm/PackageManager;

    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_0

    const/16 v2, 0x40

    :cond_0
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_1

    or-int/lit16 v2, v2, 0x1000

    :cond_1
    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_c

    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_9

    iget-object v2, p0, Lbyp;->a:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v2, v0, v4}, La;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    :goto_0
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_2

    const-string v4, "pkgName"

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "isSystem"

    new-instance v5, Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p1, v4, v5}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v4, "appName"

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_3

    const-string v4, "pkgName"

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "isSystem"

    new-instance v5, Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p1, v4, v5}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_b

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v4, "icon"

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_5

    const-string v2, "version"

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "versionCode"

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "size"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lastModified"

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    and-int/lit8 v2, p2, 0x40

    if-eqz v2, :cond_6

    const-string v2, "apkPath"

    invoke-virtual {p1, v2, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "isApk"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_7

    invoke-direct {p0, v0, p1}, Lbyp;->a(Ljava/lang/String;Lcom/tencent/tmsecure/module/software/AppEntity;)V

    :cond_7
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_8

    const-string v0, "permissions"

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-object p1

    :cond_9
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_d

    iget-object v2, p0, Lbyp;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, La;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    const-string v4, "appName"

    iget-object v5, p0, Lbyp;->c:Landroid/content/pm/PackageManager;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object p1, v1

    goto :goto_3

    :cond_b
    const-string v2, "icon"

    iget-object v4, p0, Lbyp;->c:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_c
    move-object p1, v1

    goto :goto_3

    :cond_d
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lbyp;->a:Landroid/content/Context;

    new-instance v0, Lbyo;

    invoke-direct {v0}, Lbyo;-><init>()V

    iput-object v0, p0, Lbyp;->b:Lbyo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lbyp;->c:Landroid/content/pm/PackageManager;

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lbyp;->d:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0
.end method
