.class public Lcom/avg/tuneup/storage/b;
.super Lcom/avg/tuneup/h;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field private d:Lcom/avg/tuneup/a;

.field private e:Lcom/avg/tuneup/b;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/HashMap;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/avg/tuneup/h;-><init>()V

    iput v0, p0, Lcom/avg/tuneup/storage/b;->a:I

    iput v0, p0, Lcom/avg/tuneup/storage/b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/tuneup/storage/b;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avg/tuneup/storage/b;->g:Ljava/util/HashMap;

    return-void
.end method

.method private G()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avg/tuneup/storage/c;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/storage/c;-><init>(Lcom/avg/tuneup/storage/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private H()V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avg/tuneup/storage/b;->d:Lcom/avg/tuneup/a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private I()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/c/b;

    invoke-direct {p0, v0}, Lcom/avg/tuneup/storage/b;->a(Lcom/avg/ui/general/c/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private J()Ljava/util/ArrayList;
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

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private K()Ljava/util/ArrayList;
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

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static a(Landroid/content/pm/PackageInfo;)I
    .locals 3

    const/4 v0, -0x2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

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

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avg/tuneup/storage/b;Lcom/avg/tuneup/b;)Lcom/avg/tuneup/b;
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/storage/b;->e:Lcom/avg/tuneup/b;

    return-object p1
.end method

.method static synthetic a(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private a(Landroid/content/pm/PackageManager;I)Ljava/util/ArrayList;
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
    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v4, "/system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/avg/tuneup/storage/b;->g:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    :cond_1
    new-instance v3, Lcom/avg/ui/general/c/b;

    invoke-direct {v3}, Lcom/avg/ui/general/c/b;-><init>()V

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/avg/ui/general/c/b;->c:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, v3, Lcom/avg/ui/general/c/b;->b:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lcom/avg/ui/general/c/b;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/avg/ui/general/c/b;->g:J

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v4, v3, Lcom/avg/ui/general/c/b;->j:I

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, v3, Lcom/avg/ui/general/c/b;->l:I

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/avg/ui/general/c/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method static synthetic a(Lcom/avg/tuneup/storage/b;Landroid/content/pm/PackageManager;I)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/avg/tuneup/storage/b;->a(Landroid/content/pm/PackageManager;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avg/tuneup/storage/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/storage/b;->f:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    return-object p1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/c/b;

    :try_start_0
    iget-object v2, v0, Lcom/avg/ui/general/c/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/avg/ui/general/c/b;->d:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/avg/tuneup/storage/b;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/avg/tuneup/storage/b;->a(Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Lcom/avg/ui/general/c/b;)V
    .locals 6

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_3

    iget v0, p1, Lcom/avg/ui/general/c/b;->j:I

    const/high16 v3, 0x4

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-byte v0, p1, Lcom/avg/ui/general/c/b;->k:B

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v3}, Lcom/avg/ui/general/a/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    iget-object v4, p1, Lcom/avg/ui/general/c/b;->c:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    iget v3, p1, Lcom/avg/ui/general/c/b;->j:I

    const/high16 v4, 0x2000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    iget v3, p1, Lcom/avg/ui/general/c/b;->j:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/avg/tuneup/storage/b;->a(Landroid/content/pm/PackageInfo;)I

    move-result v0

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private a(Ljava/io/File;IIIZI)V
    .locals 19

    if-eqz p5, :cond_0

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avg/tuneup/storage/b;->i:Landroid/view/View;

    sget v2, Lcom/avg/a/e;->tableRow2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avg/tuneup/storage/b;->i:Landroid/view/View;

    sget v2, Lcom/avg/a/e;->tableRow1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v5, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "mounted_ro"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const/4 v7, 0x1

    :cond_2
    if-eqz p5, :cond_3

    if-nez v7, :cond_4

    :cond_3
    if-nez p5, :cond_6

    :cond_4
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v3, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    move-wide v13, v1

    move-wide v15, v3

    move-wide v2, v13

    move-wide/from16 v17, v5

    move-wide/from16 v6, v17

    move-wide v4, v15

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    sub-long v8, v2, v4

    mul-long/2addr v8, v6

    invoke-static {v1, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    sget v10, Lcom/avg/a/g;->used:I

    invoke-virtual {v9, v10}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avg/tuneup/storage/b;->i:Landroid/view/View;

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-lez v9, :cond_5

    sub-long v9, v2, v4

    const-wide/16 v11, 0x64

    mul-long/2addr v9, v11

    div-long v2, v9, v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avg/tuneup/storage/b;->i:Landroid/view/View;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avg/tuneup/storage/b;->i:Landroid/view/View;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    sget v8, Lcom/avg/a/g;->free:I

    invoke-virtual {v3, v8}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    mul-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avg/tuneup/storage/b;->i:Landroid/view/View;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    :cond_6
    move-wide v13, v1

    move-wide v15, v3

    move-wide v2, v13

    move-wide/from16 v17, v5

    move-wide/from16 v6, v17

    move-wide v4, v15

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/avg/tuneup/storage/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/avg/tuneup/storage/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/storage/b;->I()V

    return-void
.end method

.method static synthetic d(Lcom/avg/tuneup/storage/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/storage/b;->H()V

    return-void
.end method

.method static synthetic e(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic g(Lcom/avg/tuneup/storage/b;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic i(Lcom/avg/tuneup/storage/b;)Lcom/avg/tuneup/b;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->e:Lcom/avg/tuneup/b;

    return-object v0
.end method

.method static synthetic j(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic k(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic m(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic n(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method public F()Ljava/util/ArrayList;
    .locals 2

    invoke-direct {p0}, Lcom/avg/tuneup/storage/b;->J()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/avg/tuneup/storage/b;->K()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avg/tuneup/storage/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avg/tuneup/storage/b;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/avg/a/f;->memory_use_list:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/storage/b;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->i:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->lv_apps:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avg/tuneup/storage/b;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iput-boolean v5, p0, Lcom/avg/tuneup/storage/b;->c:Z

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->i:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->bottom_buttons_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->i:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->performance_storage:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/storage/b;->i:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/avg/tuneup/storage/b;->a(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {p0, v7}, Lcom/avg/tuneup/storage/b;->d(Z)V

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    sget v2, Lcom/avg/a/e;->tv_memory_internal:I

    sget v3, Lcom/avg/a/e;->tv_free_memory_internal:I

    sget v4, Lcom/avg/a/e;->pb_internal:I

    sget v6, Lcom/avg/a/e;->textView1:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/avg/tuneup/storage/b;->a(Ljava/io/File;IIIZI)V

    invoke-virtual {p0}, Lcom/avg/tuneup/storage/b;->a()Ljava/io/File;

    move-result-object v1

    sget v2, Lcom/avg/a/e;->tv_memory_external:I

    sget v3, Lcom/avg/a/e;->tv_free_memory_external:I

    sget v4, Lcom/avg/a/e;->pb_external:I

    sget v6, Lcom/avg/a/e;->textView2:I

    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/avg/tuneup/storage/b;->a(Ljava/io/File;IIIZI)V

    invoke-direct {p0}, Lcom/avg/tuneup/storage/b;->G()V

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->i:Landroid/view/View;

    goto :goto_0
.end method

.method public a()Ljava/io/File;
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/avg/tuneup/storage/b;->F()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 8

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/16 v3, 0xb

    const/4 v4, 0x0

    instance-of v0, p1, Landroid/view/Menu;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    iget-object v1, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->by_size:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v6, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    iget-object v1, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->by_name:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v7, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    check-cast p1, Landroid/view/Menu;

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->by_location:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v3, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "storage_usage"

    const-string v2, "menu_opened"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    instance-of v0, p1, Lcom/avg/ui/general/c/f;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/avg/ui/general/c/f;

    iget-object v1, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->by_size:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v6, v4, v1}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Lcom/avg/ui/general/c/f;

    iget-object v1, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->by_name:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v7, v4, v1}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    check-cast p1, Lcom/avg/ui/general/c/f;

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->by_location:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v3, v4, v0}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->g:Ljava/util/HashMap;

    const-string v1, "com.android.launcher"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->g:Ljava/util/HashMap;

    const-string v1, "com.android.launcher2"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->g:Ljava/util/HashMap;

    const-string v1, "com.htc.launcher"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->g:Ljava/util/HashMap;

    const-string v1, "com.htc.android.mail"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/avg/tuneup/a;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/avg/tuneup/a;-><init>(I)V

    iput-object v0, p0, Lcom/avg/tuneup/storage/b;->d:Lcom/avg/tuneup/a;

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lcom/avg/tuneup/storage/b;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public a_(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/avg/tuneup/storage/b;->e(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avg/tuneup/storage/b;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/avg/tuneup/storage/b;->c:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/avg/tuneup/storage/b;->d:Lcom/avg/tuneup/a;

    invoke-virtual {v2}, Lcom/avg/tuneup/a;->a()V

    iget-object v2, p0, Lcom/avg/tuneup/storage/b;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/avg/tuneup/storage/b;->d:Lcom/avg/tuneup/a;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/avg/tuneup/storage/b;->e:Lcom/avg/tuneup/b;

    invoke-virtual {v2}, Lcom/avg/tuneup/b;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v3, "storage_usage"

    const-string v4, "sort_by_size"

    invoke-static {v2, v3, v4, v5, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/avg/tuneup/storage/b;->d:Lcom/avg/tuneup/a;

    invoke-virtual {v2}, Lcom/avg/tuneup/a;->b()V

    iget-object v2, p0, Lcom/avg/tuneup/storage/b;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/avg/tuneup/storage/b;->d:Lcom/avg/tuneup/a;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/avg/tuneup/storage/b;->e:Lcom/avg/tuneup/b;

    invoke-virtual {v2}, Lcom/avg/tuneup/b;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v3, "storage_usage"

    const-string v4, "sort_by_name"

    invoke-static {v2, v3, v4, v5, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/avg/tuneup/storage/b;->d:Lcom/avg/tuneup/a;

    invoke-virtual {v2}, Lcom/avg/tuneup/a;->c()V

    iget-object v2, p0, Lcom/avg/tuneup/storage/b;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/avg/tuneup/storage/b;->d:Lcom/avg/tuneup/a;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/avg/tuneup/storage/b;->e:Lcom/avg/tuneup/b;

    invoke-virtual {v2}, Lcom/avg/tuneup/b;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v3, "storage_usage"

    const-string v4, "sort_by_location"

    invoke-static {v2, v3, v4, v5, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/avg/tuneup/storage/b;->e(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public e(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->closeOptionsMenu()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/storage/b;->b(I)Z

    move-result v0

    return v0
.end method

.method public r()V
    .locals 14

    const/4 v11, 0x1

    const/4 v13, -0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/avg/tuneup/h;->r()V

    iget v0, p0, Lcom/avg/tuneup/storage/b;->a:I

    if-eq v0, v13, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/avg/tuneup/storage/b;->f:Ljava/util/ArrayList;

    iget v3, p0, Lcom/avg/tuneup/storage/b;->a:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avg/ui/general/c/b;

    :goto_0
    if-eqz v0, :cond_5

    iget-object v3, v1, Lcom/avg/ui/general/c/b;->c:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v11

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->f:Ljava/util/ArrayList;

    iget v1, p0, Lcom/avg/tuneup/storage/b;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->e:Lcom/avg/tuneup/b;

    invoke-virtual {v0}, Lcom/avg/tuneup/b;->notifyDataSetChanged()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    sget v2, Lcom/avg/a/e;->tv_memory_internal:I

    sget v3, Lcom/avg/a/e;->tv_free_memory_internal:I

    sget v4, Lcom/avg/a/e;->pb_internal:I

    sget v6, Lcom/avg/a/e;->textView1:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/avg/tuneup/storage/b;->a(Ljava/io/File;IIIZI)V

    invoke-virtual {p0}, Lcom/avg/tuneup/storage/b;->a()Ljava/io/File;

    move-result-object v7

    sget v8, Lcom/avg/a/e;->tv_memory_external:I

    sget v9, Lcom/avg/a/e;->tv_free_memory_external:I

    sget v10, Lcom/avg/a/e;->pb_external:I

    sget v12, Lcom/avg/a/e;->textView2:I

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/avg/tuneup/storage/b;->a(Ljava/io/File;IIIZI)V

    :cond_0
    iput v13, p0, Lcom/avg/tuneup/storage/b;->a:I

    :cond_1
    iget v0, p0, Lcom/avg/tuneup/storage/b;->b:I

    if-eq v0, v13, :cond_2

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->f:Ljava/util/ArrayList;

    iget v1, p0, Lcom/avg/tuneup/storage/b;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/c/b;

    iget-object v1, p0, Lcom/avg/tuneup/storage/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v2, v0, Lcom/avg/ui/general/c/b;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v0, Lcom/avg/ui/general/c/b;->b:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v1, v0, Lcom/avg/ui/general/c/b;->j:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-direct {p0, v0}, Lcom/avg/tuneup/storage/b;->a(Lcom/avg/ui/general/c/b;)V

    iget-object v0, p0, Lcom/avg/tuneup/storage/b;->e:Lcom/avg/tuneup/b;

    invoke-virtual {v0}, Lcom/avg/tuneup/b;->notifyDataSetChanged()V

    iput v13, p0, Lcom/avg/tuneup/storage/b;->b:I

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    sget v2, Lcom/avg/a/e;->tv_memory_internal:I

    sget v3, Lcom/avg/a/e;->tv_free_memory_internal:I

    sget v4, Lcom/avg/a/e;->pb_internal:I

    sget v6, Lcom/avg/a/e;->textView1:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/avg/tuneup/storage/b;->a(Ljava/io/File;IIIZI)V

    invoke-virtual {p0}, Lcom/avg/tuneup/storage/b;->a()Ljava/io/File;

    move-result-object v7

    sget v8, Lcom/avg/a/e;->tv_memory_external:I

    sget v9, Lcom/avg/a/e;->tv_free_memory_external:I

    sget v10, Lcom/avg/a/e;->pb_external:I

    sget v12, Lcom/avg/a/e;->textView2:I

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/avg/tuneup/storage/b;->a(Ljava/io/File;IIIZI)V

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

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_5
    move v0, v5

    goto/16 :goto_1
.end method
