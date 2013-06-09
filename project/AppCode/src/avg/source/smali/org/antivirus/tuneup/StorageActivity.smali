.class public Lorg/antivirus/tuneup/StorageActivity;
.super Lorg/antivirus/ui/BaseToolActivity;

# interfaces
.implements Lorg/antivirus/ui/IhandleMenuItem;


# instance fields
.field public a:I

.field public b:I

.field final c:Ljava/util/ArrayList;

.field d:Lorg/antivirus/tuneup/a;

.field private e:Lorg/antivirus/tuneup/b;

.field private f:Landroid/widget/ListView;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/HashMap;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolActivity;-><init>()V

    iput v0, p0, Lorg/antivirus/tuneup/StorageActivity;->a:I

    iput v0, p0, Lorg/antivirus/tuneup/StorageActivity;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Landroid/content/pm/PackageInfo;)I
    .locals 3

    const/4 v0, -0x2

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    :try_start_0
    const-class v1, Landroid/content/pm/PackageInfo;

    const-string v2, "installLocation"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lorg/antivirus/tuneup/StorageActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/tuneup/StorageActivity;Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v4, "/system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/antivirus/tuneup/StorageActivity;->h:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/antivirus/ui/InstalledApp;

    invoke-direct {v3}, Lorg/antivirus/ui/InstalledApp;-><init>()V

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lorg/antivirus/ui/InstalledApp;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, v3, Lorg/antivirus/ui/InstalledApp;->mPackageLocation:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lorg/antivirus/ui/InstalledApp;->mPackageLocation:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v3, Lorg/antivirus/ui/InstalledApp;->apkSize:J

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v4, v3, Lorg/antivirus/ui/InstalledApp;->flags:I

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/antivirus/ui/InstalledApp;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method static synthetic a(Lorg/antivirus/tuneup/StorageActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/StorageActivity;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/tuneup/StorageActivity;Lorg/antivirus/tuneup/b;)Lorg/antivirus/tuneup/b;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/StorageActivity;->e:Lorg/antivirus/tuneup/b;

    return-object p1
.end method

.method static synthetic a(Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/InstalledApp;

    :try_start_0
    iget-object v2, v0, Lorg/antivirus/ui/InstalledApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lorg/antivirus/ui/InstalledApp;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;IIIZI)V
    .locals 20

    if-eqz p5, :cond_0

    if-nez p1, :cond_0

    const v2, 0x7f08002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/antivirus/tuneup/StorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f08002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/antivirus/tuneup/StorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TableRow;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "mounted_ro"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const/4 v8, 0x1

    :cond_2
    if-eqz p5, :cond_3

    if-nez v8, :cond_4

    :cond_3
    if-nez p5, :cond_6

    :cond_4
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide v3, v14

    move-wide/from16 v18, v6

    move-wide/from16 v7, v18

    move-wide/from16 v5, v16

    :goto_1
    sub-long v9, v3, v5

    mul-long/2addr v9, v7

    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f090159

    invoke-static {v10}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/StorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_5

    sub-long v10, v3, v5

    const-wide/16 v12, 0x64

    mul-long/2addr v10, v12

    div-long v3, v10, v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/StorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/StorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090127

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-long v4, v5, v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/StorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    :cond_6
    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide v3, v14

    move-wide/from16 v18, v6

    move-wide/from16 v7, v18

    move-wide/from16 v5, v16

    goto/16 :goto_1
.end method

.method private a(Lorg/antivirus/ui/InstalledApp;)V
    .locals 6

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_2

    iget v0, p1, Lorg/antivirus/ui/InstalledApp;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-byte v0, p1, Lorg/antivirus/ui/InstalledApp;->movable:B

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/antivirus/tuneup/StorageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    iget-object v4, p1, Lorg/antivirus/ui/InstalledApp;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget v3, p1, Lorg/antivirus/ui/InstalledApp;->flags:I

    const/high16 v4, 0x2000

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    iget v3, p1, Lorg/antivirus/ui/InstalledApp;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/antivirus/tuneup/StorageActivity;->a(Landroid/content/pm/PackageInfo;)I

    move-result v0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lorg/antivirus/tuneup/StorageActivity;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/antivirus/tuneup/StorageActivity;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lorg/antivirus/tuneup/StorageActivity;)V
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/InstalledApp;

    invoke-direct {p0, v0}, Lorg/antivirus/tuneup/StorageActivity;->a(Lorg/antivirus/ui/InstalledApp;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/antivirus/tuneup/StorageActivity;->g:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lorg/antivirus/tuneup/StorageActivity;->d:Lorg/antivirus/tuneup/a;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/a;->a()V

    iget-object v1, p0, Lorg/antivirus/tuneup/StorageActivity;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/antivirus/tuneup/StorageActivity;->d:Lorg/antivirus/tuneup/a;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lorg/antivirus/tuneup/StorageActivity;->e:Lorg/antivirus/tuneup/b;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/b;->notifyDataSetChanged()V

    const-string v1, "storage_usage"

    const-string v2, "sort_by_size"

    invoke-static {p0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lorg/antivirus/tuneup/StorageActivity;->d:Lorg/antivirus/tuneup/a;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/a;->b()V

    iget-object v1, p0, Lorg/antivirus/tuneup/StorageActivity;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/antivirus/tuneup/StorageActivity;->d:Lorg/antivirus/tuneup/a;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lorg/antivirus/tuneup/StorageActivity;->e:Lorg/antivirus/tuneup/b;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/b;->notifyDataSetChanged()V

    const-string v1, "storage_usage"

    const-string v2, "sort_by_name"

    invoke-static {p0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lorg/antivirus/tuneup/StorageActivity;->d:Lorg/antivirus/tuneup/a;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/a;->c()V

    iget-object v1, p0, Lorg/antivirus/tuneup/StorageActivity;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/antivirus/tuneup/StorageActivity;->d:Lorg/antivirus/tuneup/a;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lorg/antivirus/tuneup/StorageActivity;->e:Lorg/antivirus/tuneup/b;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/b;->notifyDataSetChanged()V

    const-string v1, "storage_usage"

    const-string v2, "sort_by_location"

    invoke-static {p0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static c()Ljava/io/File;
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_b

    invoke-static {}, Lorg/antivirus/core/compatibility/HoneycombTools;->isExternalStorageEmulated()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_a

    invoke-static {}, Lorg/antivirus/tuneup/StorageActivity;->d()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Lorg/antivirus/tuneup/StorageActivity;->e()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v4, :cond_0

    if-nez v5, :cond_3

    :cond_0
    move-object v4, v3

    :cond_1
    if-nez v4, :cond_5

    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v2, v0

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_8
    move-object v0, v4

    goto :goto_1

    :cond_9
    move-object v0, v3

    goto :goto_2

    :cond_a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_2

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic c(Lorg/antivirus/tuneup/StorageActivity;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/antivirus/tuneup/StorageActivity;->d:Lorg/antivirus/tuneup/a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic d(Lorg/antivirus/tuneup/StorageActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method private static d()Ljava/util/ArrayList;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/mounts"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    const-string v3, "vold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static e()Ljava/util/ArrayList;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/vold.fstab"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dev_mount"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aget-object v0, v0, v3

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method static synthetic e(Lorg/antivirus/tuneup/StorageActivity;)Lorg/antivirus/tuneup/b;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->e:Lorg/antivirus/tuneup/b;

    return-object v0
.end method

.method static synthetic f(Lorg/antivirus/tuneup/StorageActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/tuneup/StorageActivity;->i:Z

    return v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lorg/antivirus/ui/PopupMenuHoneycomb;

    invoke-direct {v0, p0, p1}, Lorg/antivirus/ui/PopupMenuHoneycomb;-><init>(Lorg/antivirus/ui/IhandleMenuItem;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/StorageActivity;->addMenu(Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/antivirus/ui/PopupMenuHoneycomb;->show()V

    return-void
.end method

.method public final a_()V
    .locals 8

    const v7, 0x7f09012a

    const v6, 0x7f090128

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-static {}, Lorg/antivirus/core/compatibility/HoneycombTools;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f090129

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/antivirus/tuneup/at;

    invoke-direct {v2, p0, v0, v3}, Lorg/antivirus/tuneup/at;-><init>(Landroid/content/Context;[Ljava/lang/String;B)V

    new-instance v0, Lorg/antivirus/tuneup/av;

    invoke-direct {v0, p0}, Lorg/antivirus/tuneup/av;-><init>(Lorg/antivirus/tuneup/StorageActivity;)V

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const-string v0, "storage_usage"

    const-string v1, "menu_opened"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addMenu(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 7

    const/16 v6, 0xb

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/view/Menu;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    const v1, 0x7f09012a

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    const v1, 0x7f090128

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v5, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v6, :cond_0

    invoke-static {}, Lorg/antivirus/core/compatibility/HoneycombTools;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    check-cast p1, Landroid/view/Menu;

    const v0, 0x7f090129

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    const-string v0, "storage_usage"

    const-string v1, "menu_opened"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    instance-of v0, p1, Lorg/antivirus/ui/PopupMenuHoneycomb;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/antivirus/ui/PopupMenuHoneycomb;

    const v1, 0x7f09012a

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/antivirus/ui/PopupMenuHoneycomb;->add(IIILjava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Lorg/antivirus/ui/PopupMenuHoneycomb;

    const v1, 0x7f090128

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v2, v1}, Lorg/antivirus/ui/PopupMenuHoneycomb;->add(IIILjava/lang/CharSequence;)V

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v5, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v6, :cond_3

    invoke-static {}, Lorg/antivirus/core/compatibility/HoneycombTools;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    check-cast p1, Lorg/antivirus/ui/PopupMenuHoneycomb;

    const v0, 0x7f090129

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v4, v2, v0}, Lorg/antivirus/ui/PopupMenuHoneycomb;->add(IIILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public handleMenuItem(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antivirus/tuneup/StorageActivity;->b(I)Z

    move-result v0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/tuneup/StorageActivity;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/antivirus/tuneup/StorageActivity;->handleMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/StorageActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/StorageActivity;->setContentView(I)V

    const v2, 0x7f02001e

    const v3, 0x7f02001f

    const v0, 0x7f0901a8

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/tuneup/StorageActivity;->a(ZIILjava/lang/String;Z)V

    iput-boolean v7, p0, Lorg/antivirus/tuneup/StorageActivity;->i:Z

    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/StorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/StorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->h:Ljava/util/HashMap;

    const-string v2, "com.android.launcher"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->h:Ljava/util/HashMap;

    const-string v2, "com.android.launcher2"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->h:Ljava/util/HashMap;

    const-string v2, "com.htc.launcher"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->h:Ljava/util/HashMap;

    const-string v2, "com.htc.android.mail"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/antivirus/tuneup/StorageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/StorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->f:Landroid/widget/ListView;

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/StorageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const v4, 0x7f0800a9

    const v5, 0x7f0800aa

    const v6, 0x7f0800a8

    const v8, 0x7f08001c

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/antivirus/tuneup/StorageActivity;->a(Ljava/io/File;IIIZI)V

    invoke-static {}, Lorg/antivirus/tuneup/StorageActivity;->c()Ljava/io/File;

    move-result-object v3

    const v4, 0x7f0800ad

    const v5, 0x7f0800ae

    const v6, 0x7f0800ac

    const v8, 0x7f08001d

    move-object v2, p0

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lorg/antivirus/tuneup/StorageActivity;->a(Ljava/io/File;IIIZI)V

    new-instance v0, Lorg/antivirus/tuneup/a;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lorg/antivirus/tuneup/a;-><init>(I)V

    iput-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->d:Lorg/antivirus/tuneup/a;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/antivirus/tuneup/aw;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/aw;-><init>(Lorg/antivirus/tuneup/StorageActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lorg/antivirus/tuneup/StorageActivity;->handleMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lorg/antivirus/tuneup/StorageActivity;->addMenu(Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 15

    const v13, 0x7f08001d

    const v6, 0x7f08001c

    const/4 v12, 0x1

    const/4 v14, -0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onResume()V

    iget v0, p0, Lorg/antivirus/tuneup/StorageActivity;->a:I

    if-eq v0, v14, :cond_1

    invoke-virtual {p0}, Lorg/antivirus/tuneup/StorageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lorg/antivirus/tuneup/StorageActivity;->g:Ljava/util/ArrayList;

    iget v3, p0, Lorg/antivirus/tuneup/StorageActivity;->a:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antivirus/ui/InstalledApp;

    :goto_0
    if-eqz v0, :cond_5

    iget-object v3, v1, Lorg/antivirus/ui/InstalledApp;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v12

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->g:Ljava/util/ArrayList;

    iget v1, p0, Lorg/antivirus/tuneup/StorageActivity;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->e:Lorg/antivirus/tuneup/b;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/b;->notifyDataSetChanged()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const v2, 0x7f0800a9

    const v3, 0x7f0800aa

    const v4, 0x7f0800a8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/antivirus/tuneup/StorageActivity;->a(Ljava/io/File;IIIZI)V

    invoke-static {}, Lorg/antivirus/tuneup/StorageActivity;->c()Ljava/io/File;

    move-result-object v8

    const v9, 0x7f0800ad

    const v10, 0x7f0800ae

    const v11, 0x7f0800ac

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lorg/antivirus/tuneup/StorageActivity;->a(Ljava/io/File;IIIZI)V

    :cond_0
    iput v14, p0, Lorg/antivirus/tuneup/StorageActivity;->a:I

    :cond_1
    iget v0, p0, Lorg/antivirus/tuneup/StorageActivity;->b:I

    if-eq v0, v14, :cond_2

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->g:Ljava/util/ArrayList;

    iget v1, p0, Lorg/antivirus/tuneup/StorageActivity;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/InstalledApp;

    invoke-virtual {p0}, Lorg/antivirus/tuneup/StorageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v2, v0, Lorg/antivirus/ui/InstalledApp;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v0, Lorg/antivirus/ui/InstalledApp;->mPackageLocation:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v1, v0, Lorg/antivirus/ui/InstalledApp;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-direct {p0, v0}, Lorg/antivirus/tuneup/StorageActivity;->a(Lorg/antivirus/ui/InstalledApp;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/StorageActivity;->e:Lorg/antivirus/tuneup/b;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/b;->notifyDataSetChanged()V

    iput v14, p0, Lorg/antivirus/tuneup/StorageActivity;->b:I

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const v2, 0x7f0800a9

    const v3, 0x7f0800aa

    const v4, 0x7f0800a8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/antivirus/tuneup/StorageActivity;->a(Ljava/io/File;IIIZI)V

    invoke-static {}, Lorg/antivirus/tuneup/StorageActivity;->c()Ljava/io/File;

    move-result-object v8

    const v9, 0x7f0800ad

    const v10, 0x7f0800ae

    const v11, 0x7f0800ac

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lorg/antivirus/tuneup/StorageActivity;->a(Ljava/io/File;IIIZI)V

    :cond_2
    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_5
    move v0, v5

    goto/16 :goto_1
.end method
