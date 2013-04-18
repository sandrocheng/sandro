.class public Lcom/ijinshan/cleaner/CacheCleanerActivity;
.super Landroid/app/ListActivity;
.source "CacheCleanerActivity.java"


# static fields
.field public static final d:Ljava/lang/String; = "com.android.settings"

.field public static final e:Ljava/lang/String; = "com.android.settings.InstalledAppDetails"

.field public static final f:Ljava/lang/String; = "android.settings.APPLICATION_DETAILS_SETTINGS"

.field private static final p:Ljava/lang/String; = "PackageStats"

.field private static final q:I = 0x1

.field private static final r:I = 0x2

.field private static final s:I = 0x3

.field private static final t:I = 0x4

.field private static final u:I = 0x5

.field private static final v:I = 0x6

.field private static final w:Ljava/lang/String; = "package"

.field private static final x:Ljava/lang/String; = "com.android.settings.ApplicationPkgName"

.field private static final y:Ljava/lang/String; = "pkg"

.field private static final z:I = 0x2710


# instance fields
.field private A:Landroid/content/pm/PackageManager;

.field private B:I

.field private C:Lcom/ijinshan/cleaner/adapter/a;

.field private D:Lcom/ijinshan/cleaner/k;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Lcom/keniu/security/a;

.field private I:Landroid/os/Handler;

.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/RelativeLayout;

.field c:Ljava/util/List;

.field g:Lcom/ijinshan/cleaner/g;

.field h:Landroid/os/Handler;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/ListView;

.field private n:Landroid/widget/Button;

.field private o:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->c:Ljava/util/List;

    .line 59
    iput-object v2, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o:Ljava/util/List;

    .line 91
    iput-object v2, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->C:Lcom/ijinshan/cleaner/adapter/a;

    .line 92
    iput-object v2, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->D:Lcom/ijinshan/cleaner/k;

    .line 93
    iput-boolean v1, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->E:Z

    .line 94
    iput-boolean v1, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->F:Z

    .line 96
    iput-boolean v1, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->G:Z

    .line 103
    sget-object v0, Lcom/ijinshan/cleaner/g;->a:Lcom/ijinshan/cleaner/g;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->g:Lcom/ijinshan/cleaner/g;

    .line 209
    new-instance v0, Lcom/ijinshan/cleaner/a;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/a;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h:Landroid/os/Handler;

    .line 266
    new-instance v0, Lcom/ijinshan/cleaner/b;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/b;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->I:Landroid/os/Handler;

    .line 581
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/CacheCleanerActivity;Lcom/ijinshan/cleaner/k;)Lcom/ijinshan/cleaner/k;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->D:Lcom/ijinshan/cleaner/k;

    return-object p1
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/keniu/security/a;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->H:Lcom/keniu/security/a;

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x4480

    .line 528
    const/4 v0, 0x0

    .line 529
    const-wide/16 v1, 0x400

    cmp-long v1, p0, v1

    if-ltz v1, :cond_2

    .line 531
    const-string v0, "KB"

    .line 532
    long-to-double v1, p0

    const-wide/high16 v3, 0x4090

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 533
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_0

    .line 534
    const-string v0, "MB"

    .line 535
    div-float/2addr v1, v5

    .line 537
    :cond_0
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_1

    .line 538
    const-string v0, "GB"

    .line 539
    div-float/2addr v1, v5

    .line 544
    :cond_1
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    float-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    if-eqz v0, :cond_3

    .line 547
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 542
    :cond_2
    long-to-float v1, p0

    goto :goto_0

    .line 549
    :cond_3
    const-string v0, "B"

    .line 550
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/CacheCleanerActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->E:Z

    return p1
.end method

.method static synthetic b(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->G:Z

    return v0
.end method

.method static synthetic b(Lcom/ijinshan/cleaner/CacheCleanerActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->G:Z

    return p1
.end method

.method static synthetic c(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/ijinshan/cleaner/k;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->D:Lcom/ijinshan/cleaner/k;

    return-object v0
.end method

.method static synthetic d(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    const/16 v0, 0x2710

    iget-object v3, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->A:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v0, v3

    iput v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->B:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v10

    :goto_0
    if-ge v4, v3, :cond_2

    iget-boolean v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->E:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->D:Lcom/ijinshan/cleaner/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->D:Lcom/ijinshan/cleaner/k;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->F:Z

    if-nez v0, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v5, Lcom/ijinshan/cleaner/a/a;

    invoke-direct {v5}, Lcom/ijinshan/cleaner/a/a;-><init>()V

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ijinshan/cleaner/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/cleaner/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ijinshan/cleaner/a/a;->b(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getPackageSizeInfo"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/content/pm/IPackageStatsObserver;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v6, Lcom/ijinshan/cleaner/m;

    sub-int v7, v3, v11

    if-ne v4, v7, :cond_1

    move v7, v11

    :goto_2
    invoke-direct {v6, p0, v5, v7}, Lcom/ijinshan/cleaner/m;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;Lcom/ijinshan/cleaner/a/a;Z)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/ijinshan/cleaner/a/a;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v6, v7, v5

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move v7, v10

    goto :goto_2

    :cond_2
    return-void

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method static synthetic e(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 159
    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->j:Landroid/widget/TextView;

    .line 160
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b0271

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->n:Landroid/widget/Button;

    .line 162
    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->i:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a:Landroid/widget/RelativeLayout;

    .line 164
    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->b:Landroid/widget/RelativeLayout;

    .line 165
    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->l:Landroid/widget/ProgressBar;

    .line 166
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->k:Landroid/widget/TextView;

    .line 167
    return-void
.end method

.method static synthetic g(Lcom/ijinshan/cleaner/CacheCleanerActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->B:I

    return v0
.end method

.method private g()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 297
    invoke-virtual {p0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 298
    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 299
    const/16 v0, 0x2710

    iget-object v3, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->A:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v0, v3

    iput v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->B:I

    .line 300
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v10

    .line 301
    :goto_0
    if-ge v4, v3, :cond_1

    .line 302
    iget-boolean v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->E:Z

    if-eqz v0, :cond_0

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->D:Lcom/ijinshan/cleaner/k;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->D:Lcom/ijinshan/cleaner/k;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->F:Z

    if-eqz v0, :cond_2

    .line 335
    :cond_1
    return-void

    .line 306
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 314
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 315
    iget-object v5, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 316
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 317
    iget-object v6, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->h:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    new-instance v5, Lcom/ijinshan/cleaner/a/a;

    invoke-direct {v5}, Lcom/ijinshan/cleaner/a/a;-><init>()V

    .line 320
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ijinshan/cleaner/a/a;->a(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/cleaner/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 322
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ijinshan/cleaner/a/a;->b(Ljava/lang/String;)V

    .line 325
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getPackageSizeInfo"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/content/pm/IPackageStatsObserver;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 328
    new-instance v6, Lcom/ijinshan/cleaner/m;

    sub-int v7, v3, v11

    if-ne v4, v7, :cond_3

    move v7, v11

    :goto_2
    invoke-direct {v6, p0, v5, v7}, Lcom/ijinshan/cleaner/m;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;Lcom/ijinshan/cleaner/a/a;Z)V

    .line 330
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/ijinshan/cleaner/a/a;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v6, v7, v5

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_3
    move v7, v10

    .line 328
    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method static synthetic h(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private h()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 444
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 446
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->k:Landroid/widget/TextView;

    .line 447
    sget-object v0, Lcom/ijinshan/cleaner/g;->c:Lcom/ijinshan/cleaner/g;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->g:Lcom/ijinshan/cleaner/g;

    .line 448
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->n:Landroid/widget/Button;

    const v1, 0x7f0b0277

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 450
    const-wide/16 v2, 0x0

    move-wide v8, v2

    move-wide v3, v8

    move v2, v7

    .line 451
    :goto_0
    if-ge v2, v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/a;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/a;->d()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 451
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f0b0287

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    return-void
.end method

.method private static i()J
    .locals 4

    .prologue
    .line 460
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 467
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 469
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    .line 470
    return-wide v0
.end method

.method static synthetic i(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Lcom/ijinshan/cleaner/adapter/a;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->C:Lcom/ijinshan/cleaner/adapter/a;

    return-object v0
.end method

.method private j()I
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->A:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 476
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 47
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->k:Landroid/widget/TextView;

    sget-object v0, Lcom/ijinshan/cleaner/g;->c:Lcom/ijinshan/cleaner/g;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->g:Lcom/ijinshan/cleaner/g;

    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->n:Landroid/widget/Button;

    const v1, 0x7f0b0277

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    move v4, v7

    :goto_0
    if-ge v4, v1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/a;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/a;->d()J

    move-result-wide v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f0b0287

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-virtual {p0, v1, v4}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic m(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->F:Z

    return v0
.end method

.method static synthetic n(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->F:Z

    return v0
.end method

.method static synthetic o(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->I:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    iput-boolean v2, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->E:Z

    .line 190
    iput-boolean v2, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->F:Z

    .line 191
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->n:Landroid/widget/Button;

    const v1, 0x7f0b0278

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    sget-object v0, Lcom/ijinshan/cleaner/g;->a:Lcom/ijinshan/cleaner/g;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->g:Lcom/ijinshan/cleaner/g;

    .line 195
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 196
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 197
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 480
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 481
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 482
    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 483
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 485
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 495
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->startActivity(Landroid/content/Intent;)V

    .line 496
    return-void

    .line 488
    :cond_0
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const-string v1, "pkg"

    .line 490
    :goto_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 488
    :cond_1
    const-string v1, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .parameter

    .prologue
    .line 181
    new-instance v0, Lcom/ijinshan/cleaner/adapter/a;

    invoke-direct {v0, p0, p1}, Lcom/ijinshan/cleaner/adapter/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->C:Lcom/ijinshan/cleaner/adapter/a;

    .line 182
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->C:Lcom/ijinshan/cleaner/adapter/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 338
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 340
    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 341
    const v1, 0x7f0b0281

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 342
    const v1, 0x7f0b00d6

    new-instance v2, Lcom/ijinshan/cleaner/c;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/c;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 356
    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/cleaner/d;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/d;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 384
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 385
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 403
    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 405
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 407
    const v0, 0x7f08011d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 409
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 410
    const v1, 0x7f08011b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 412
    const v4, 0x7f0b0286

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 413
    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 414
    const v1, 0x7f0b00bf

    invoke-virtual {v2, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 415
    const v1, 0x7f0b00d6

    new-instance v3, Lcom/ijinshan/cleaner/e;

    invoke-direct {v3, p0, v0}, Lcom/ijinshan/cleaner/e;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 424
    const v1, 0x7f0b00d5

    new-instance v3, Lcom/ijinshan/cleaner/f;

    invoke-direct {v3, p0, v0}, Lcom/ijinshan/cleaner/f;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 439
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 440
    return-void
.end method

.method public final d()V
    .locals 5

    .prologue
    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->A:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "freeStorageAndNotify"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/pm/IPackageDataObserver;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 503
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 504
    iget-object v2, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->A:Landroid/content/pm/PackageManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    new-instance v4, Lcom/ijinshan/cleaner/j;

    invoke-direct {v4, p0}, Lcom/ijinshan/cleaner/j;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 516
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 507
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 509
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 511
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 513
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public final e()J
    .locals 8

    .prologue
    .line 519
    const-wide/16 v0, 0x0

    .line 520
    iget-object v2, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 521
    const/4 v3, 0x0

    move v7, v3

    move-wide v3, v0

    move v1, v7

    :goto_0
    if-ge v1, v2, :cond_0

    .line 522
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/a;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/a;->d()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 521
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 524
    :cond_0
    return-wide v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->setContentView(I)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o:Ljava/util/List;

    .line 111
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->H:Lcom/keniu/security/a;

    .line 112
    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b0271

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->n:Landroid/widget/Button;

    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->l:Landroid/widget/ProgressBar;

    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->k:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->n:Landroid/widget/Button;

    const v1, 0x7f0b0278

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->m:Landroid/widget/ListView;

    .line 115
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->m:Landroid/widget/ListView;

    new-instance v1, Lcom/ijinshan/cleaner/l;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/l;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->o:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a(Ljava/util/List;)V

    .line 117
    invoke-virtual {p0}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->A:Landroid/content/pm/PackageManager;

    .line 118
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->n:Landroid/widget/Button;

    new-instance v1, Lcom/ijinshan/cleaner/h;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/h;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v0, Lcom/ijinshan/cleaner/k;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/k;-><init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V

    iput-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->D:Lcom/ijinshan/cleaner/k;

    .line 122
    iget-object v0, p0, Lcom/ijinshan/cleaner/CacheCleanerActivity;->D:Lcom/ijinshan/cleaner/k;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/k;->start()V

    .line 124
    return-void
.end method
