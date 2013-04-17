.class public final Lfs;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lft;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lfq;
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lfs;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v4, Lfq;

    invoke-direct {v4}, Lfq;-><init>()V

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v6, p0, Lfs;->a:Lft;

    new-instance v5, Lfq;

    invoke-direct {v5}, Lfq;-><init>()V

    const-string v0, "pkgName"

    invoke-virtual {v5, v0, p1}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "pkgName"

    invoke-virtual {v5, v0}, Lfq;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_e

    const/16 v1, 0x40

    :goto_1
    and-int/lit8 v7, p2, 0x20

    if-eqz v7, :cond_2

    or-int/lit16 v1, v1, 0x1000

    :cond_2
    invoke-virtual {v6, v0, v1}, Lft;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v1, :cond_4

    :cond_3
    :goto_2
    move-object v4, v5

    goto :goto_0

    :cond_4
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_5

    const-string v0, "pkgName"

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0, v7}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "appName"

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v6, Lft;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "isSystem"

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_6

    const-string v0, "pkgName"

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0, v7}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "isSystem"

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_c

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_7

    const-string v0, "icon"

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v6, Lft;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_8

    const-string v0, "version"

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "versionCode"

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "lastModified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_9

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-gtz v0, :cond_d

    :cond_9
    :goto_5
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_a

    const-string v0, "permissions"

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_3

    const-string v0, "apkPath"

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "isApk"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    move v0, v3

    goto/16 :goto_3

    :cond_c
    move v2, v3

    goto/16 :goto_4

    :cond_d
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v3

    invoke-virtual {v6, v0}, Lft;->a(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_9

    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lew;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_6
    const-string v2, "signatureCermMD5"

    invoke-virtual {v5, v2, v0}, Lfq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    move-object v0, v4

    goto :goto_6

    :cond_e
    move v1, v3

    goto/16 :goto_1
.end method

.method public final a(Ljava/io/File;)V
    .locals 4

    invoke-static {}, Lfs;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lfs;->a:Lft;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lft;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "the apkfile dosn\'t exist."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lfs;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lfs;->a:Lft;

    invoke-virtual {v1, p1, v0}, Lft;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lft;

    invoke-direct {v0}, Lft;-><init>()V

    iput-object v0, p0, Lfs;->a:Lft;

    iget-object v0, p0, Lfs;->a:Lft;

    invoke-virtual {v0, p1}, Lft;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lfs;->a:Lft;

    invoke-virtual {p0, v0}, Lfs;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
