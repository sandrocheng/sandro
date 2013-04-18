.class final Lcom/keniu/security/software/ar;
.super Ljava/lang/Thread;
.source "SoftwareManager2.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/software/SoftwareManager2;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/keniu/security/software/SoftwareManager2;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 288
    iput-object p2, p0, Lcom/keniu/security/software/ar;->b:Landroid/os/Handler;

    .line 290
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 295
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->h(Lcom/keniu/security/software/SoftwareManager2;)I

    .line 296
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->i(Lcom/keniu/security/software/SoftwareManager2;)I

    .line 297
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->j(Lcom/keniu/security/software/SoftwareManager2;)I

    .line 298
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0, v11}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;I)I

    .line 300
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v0}, Lcom/keniu/security/software/SoftwareManager2;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 301
    const/16 v0, 0x1040

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 305
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 306
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    const-string v5, "android.uid.system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 310
    if-eqz v0, :cond_0

    .line 314
    array-length v4, v0

    if-lez v4, :cond_d

    .line 315
    aget-object v0, v0, v11

    .line 319
    :goto_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 323
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 324
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 326
    iget-object v4, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "O="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "O="

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/keniu/security/software/SoftwareManager2;->b(Lcom/keniu/security/software/SoftwareManager2;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_1
    new-instance v0, Lcom/keniu/security/software/o;

    invoke-direct {v0}, Lcom/keniu/security/software/o;-><init>()V

    .line 346
    const-string v3, "appCate"

    invoke-virtual {v0, v3}, Lcom/keniu/security/software/o;->b(Ljava/lang/String;)V

    .line 347
    iget-object v3, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v3}, Lcom/keniu/security/software/SoftwareManager2;->e(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v0, Lcom/keniu/security/software/o;

    invoke-direct {v0}, Lcom/keniu/security/software/o;-><init>()V

    .line 350
    const-string v3, "appSysCate"

    invoke-virtual {v0, v3}, Lcom/keniu/security/software/o;->b(Ljava/lang/String;)V

    .line 351
    iget-object v3, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v3}, Lcom/keniu/security/software/SoftwareManager2;->f(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v0, Lcom/keniu/security/software/o;

    invoke-direct {v0}, Lcom/keniu/security/software/o;-><init>()V

    .line 354
    const-string v3, "appInnerSysCate"

    invoke-virtual {v0, v3}, Lcom/keniu/security/software/o;->b(Ljava/lang/String;)V

    .line 355
    iget-object v3, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v3}, Lcom/keniu/security/software/SoftwareManager2;->g(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getPackageSizeInfo"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/pm/IPackageStatsObserver;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v3, v0

    .line 373
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v10

    :cond_2
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 375
    iget-object v5, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v5}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 523
    :goto_4
    return-void

    .line 334
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 368
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v10

    goto :goto_2

    .line 378
    :cond_3
    new-instance v5, Lcom/keniu/security/software/o;

    invoke-direct {v5}, Lcom/keniu/security/software/o;-><init>()V

    .line 380
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 382
    iget-object v7, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v7}, Lcom/keniu/security/software/SoftwareManager2;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 384
    invoke-virtual {v5, v6}, Lcom/keniu/security/software/o;->a(Ljava/lang/String;)V

    .line 389
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 391
    if-eqz v7, :cond_2

    .line 393
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/keniu/security/software/o;->c(Ljava/lang/String;)V

    .line 398
    new-instance v8, Ljava/io/File;

    invoke-virtual {v5}, Lcom/keniu/security/software/o;->e()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 402
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/keniu/security/software/o;->d(Ljava/lang/String;)V

    .line 407
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v10}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "lib"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    iget v9, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v9, :cond_4

    .line 411
    iget-object v6, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v6}, Lcom/keniu/security/software/SoftwareManager2;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keniu/security/software/o;->b(Ljava/lang/String;)V

    .line 419
    :goto_5
    iget v6, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x4

    and-int/2addr v6, v9

    if-eqz v6, :cond_5

    .line 421
    invoke-virtual {v5, v12}, Lcom/keniu/security/software/o;->a(I)V

    .line 430
    :goto_6
    const/4 v6, 0x2

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5}, Lcom/keniu/security/software/o;->a()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/keniu/security/software/as;

    invoke-direct {v10, p0, v5}, Lcom/keniu/security/software/as;-><init>(Lcom/keniu/security/software/ar;Lcom/keniu/security/software/o;)V

    aput-object v10, v6, v9

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 448
    :goto_7
    iget v6, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eq v6, v12, :cond_7

    .line 450
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 452
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/keniu/security/software/o;->b(J)V

    .line 458
    :goto_8
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->k(Lcom/keniu/security/software/SoftwareManager2;)I

    .line 459
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->e(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 416
    :cond_4
    invoke-virtual {v5, v6}, Lcom/keniu/security/software/o;->b(Ljava/lang/String;)V

    goto :goto_5

    .line 425
    :cond_5
    invoke-virtual {v5, v11}, Lcom/keniu/security/software/o;->a(I)V

    goto :goto_6

    .line 445
    :catch_2
    move-exception v6

    invoke-virtual {v5, v13, v14}, Lcom/keniu/security/software/o;->a(J)V

    goto :goto_7

    .line 456
    :cond_6
    invoke-virtual {v5, v13, v14}, Lcom/keniu/security/software/o;->b(J)V

    goto :goto_8

    .line 463
    :cond_7
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 465
    if-eqz v0, :cond_2

    .line 467
    array-length v6, v0

    if-lez v6, :cond_8

    .line 472
    aget-object v0, v0, v11

    move-object v4, v0

    .line 475
    :cond_8
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 481
    :try_start_3
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 482
    invoke-virtual {v6, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 483
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "O="

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "O="

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 490
    iget-object v6, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v6}, Lcom/keniu/security/software/SoftwareManager2;->l(Lcom/keniu/security/software/SoftwareManager2;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 491
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->m(Lcom/keniu/security/software/SoftwareManager2;)I

    .line 492
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->f(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 510
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->o(Lcom/keniu/security/software/SoftwareManager2;)I

    .line 514
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->g(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    move v6, v11

    .line 496
    :goto_9
    :try_start_4
    iget-object v7, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v7}, Lcom/keniu/security/software/SoftwareManager2;->n(Lcom/keniu/security/software/SoftwareManager2;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_c

    .line 497
    iget-object v7, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v7}, Lcom/keniu/security/software/SoftwareManager2;->n(Lcom/keniu/security/software/SoftwareManager2;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 499
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->m(Lcom/keniu/security/software/SoftwareManager2;)I

    .line 500
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->f(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v12

    .line 504
    :goto_a
    if-nez v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->o(Lcom/keniu/security/software/SoftwareManager2;)I

    .line 506
    iget-object v0, p0, Lcom/keniu/security/software/ar;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->g(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    .line 496
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 519
    :cond_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 520
    const/16 v1, 0x100

    iput v1, v0, Landroid/os/Message;->what:I

    .line 521
    iget-object v1, p0, Lcom/keniu/security/software/ar;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :cond_c
    move v0, v11

    goto :goto_a

    :cond_d
    move-object v0, v10

    goto/16 :goto_1
.end method
