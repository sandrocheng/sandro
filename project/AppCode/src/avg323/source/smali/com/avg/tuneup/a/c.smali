.class public Lcom/avg/tuneup/a/c;
.super Lcom/avg/ui/general/fragments/d;


# instance fields
.field public final Y:I

.field public final Z:I

.field public final aa:I

.field public final ab:I

.field protected final ac:I

.field private ae:Lcom/avg/tuneup/a/i;

.field private af:Lcom/avg/tuneup/battery/b;

.field private ag:Landroid/os/Handler;

.field private ah:I

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:I

.field private am:Ljava/lang/String;

.field private an:I

.field private ao:I

.field i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/avg/ui/general/fragments/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/avg/tuneup/a/c;->Y:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/avg/tuneup/a/c;->Z:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/avg/tuneup/a/c;->aa:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/avg/tuneup/a/c;->ab:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/avg/tuneup/a/c;->ac:I

    invoke-direct {p0}, Lcom/avg/tuneup/a/c;->P()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/avg/tuneup/a/c;->ao:I

    return-void
.end method

.method private K()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avg/tuneup/a/f;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/a/f;-><init>(Lcom/avg/tuneup/a/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private L()J
    .locals 3

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method private M()I
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lcom/avg/tuneup/taskkiller/o;

    iget-object v2, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v2}, Lcom/avg/ui/general/a/a;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/avg/tuneup/taskkiller/o;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1, v2, v0, v0}, Lcom/avg/tuneup/taskkiller/o;->a(Landroid/content/Context;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method private N()V
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v6, Lcom/avg/a/g;->performance_free_space_system:I

    invoke-virtual {v5, v6}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    mul-long/2addr v0, v2

    invoke-static {v5, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->am:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/avg/tuneup/a/c;->am:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v6, Lcom/avg/a/g;->performance_free_space_sd:I

    invoke-virtual {v5, v6}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    mul-long/2addr v0, v2

    invoke-static {v5, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->am:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private O()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/s;->b(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->performance_setup_plan:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avg/tuneup/a/c;->aj:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avg/tuneup/a/c;->i()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avg/a/c;->orange_warning:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/avg/tuneup/a/c;->al:I

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->aj:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/avg/tuneup/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/avg/tuneup/a/c;->al:I

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/tuneup/traffic/s;->a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/avg/tuneup/traffic/s;->a(Z)[D

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/avg/tuneup/traffic/s;->a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avg/tuneup/traffic/s;->f()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v2}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/avg/tuneup/traffic/s;->a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avg/tuneup/traffic/s;->g()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v5, Lcom/avg/a/g;->used:I

    invoke-virtual {v4, v5}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    aget-wide v5, v0, v8

    double-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v5, Lcom/avg/a/g;->performance_of:I

    invoke-virtual {v4, v5}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    invoke-static {}, Lcom/avg/tuneup/j;->c()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/avg/tuneup/a/c;->aj:Ljava/lang/String;

    if-gtz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avg/tuneup/a/c;->aj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/a/g;->till_midnight:I

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avg/tuneup/a/c;->aj:Ljava/lang/String;

    :goto_0
    aget-wide v1, v0, v7

    const-wide/high16 v3, 0x4059

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_3

    const/high16 v0, -0x1

    iput v0, p0, Lcom/avg/tuneup/a/c;->al:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avg/tuneup/a/c;->aj:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v5, Lcom/avg/a/g;->until:I

    invoke-virtual {v4, v5}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[number]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avg/tuneup/a/c;->aj:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/avg/tuneup/j;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    aget-wide v0, v0, v7

    invoke-static {}, Lcom/avg/tuneup/j;->j()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/avg/tuneup/a/c;->i()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/avg/a/c;->orange_warning:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/avg/tuneup/a/c;->al:I

    goto :goto_1
.end method

.method private P()V
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->i:Ljava/util/ArrayList;

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/avg/tuneup/a/c;->i:Ljava/util/ArrayList;

    new-instance v3, Lcom/avg/ui/general/b/h;

    invoke-direct {v3, v1}, Lcom/avg/ui/general/b/h;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/avg/tuneup/a/c;->i:Ljava/util/ArrayList;

    new-instance v3, Lcom/avg/ui/general/b/h;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/avg/ui/general/b/h;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/avg/tuneup/a/c;->i:Ljava/util/ArrayList;

    new-instance v3, Lcom/avg/ui/general/b/h;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/avg/ui/general/b/h;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/avg/tuneup/a/c;->i:Ljava/util/ArrayList;

    new-instance v3, Lcom/avg/ui/general/b/h;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/avg/ui/general/b/h;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/avg/tuneup/a/c;)I
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/a/c;->M()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/avg/tuneup/a/c;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/avg/tuneup/a/c;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->ak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/avg/tuneup/a/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/a/c;->ak:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/avg/tuneup/a/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/a/c;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/avg/tuneup/a/c;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/a/c;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/avg/tuneup/a/c;)J
    .locals 2

    invoke-direct {p0}, Lcom/avg/tuneup/a/c;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "level"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/avg/tuneup/a/c;->ah:I

    const-string v0, "status"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->unknown:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->ai:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ae:Lcom/avg/tuneup/a/i;

    invoke-virtual {v0}, Lcom/avg/tuneup/a/i;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->battery_charging:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->ai:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->battery_discharging:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->ai:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->battery_full:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->ai:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->battery_not_charging:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->ai:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/h;

    iget v0, v0, Lcom/avg/ui/general/b/h;->a:I

    iget-object v1, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avg/tuneup/a/c;->ae:Lcom/avg/tuneup/a/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avg/tuneup/a/i;->a(Z)V

    iget-object v1, p0, Lcom/avg/tuneup/a/c;->ae:Lcom/avg/tuneup/a/i;

    invoke-virtual {v1}, Lcom/avg/tuneup/a/i;->notifyDataSetChanged()V

    :cond_0
    iput v0, p0, Lcom/avg/tuneup/a/c;->an:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal Item selected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/avg/tuneup/a/c;->I()Lcom/avg/tuneup/a/h;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/avg/tuneup/a/h;->a(Lcom/avg/tuneup/a/h;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-static {v0}, Lcom/avg/tuneup/a/h;->b(Lcom/avg/tuneup/a/h;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v2}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v2, v0}, Lcom/avg/ui/general/a/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/a/e;->fragment_content:I

    invoke-virtual {v2, v1, v3, v0}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->n()V

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/avg/tuneup/a/c;->H()Lcom/avg/tuneup/a/h;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/avg/tuneup/a/c;->G()Lcom/avg/tuneup/a/h;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/avg/tuneup/a/c;->F()Lcom/avg/tuneup/a/h;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic d(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/avg/tuneup/a/c;)Lcom/avg/tuneup/a/i;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ae:Lcom/avg/tuneup/a/i;

    return-object v0
.end method

.method static synthetic g(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic h(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic i(Lcom/avg/tuneup/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic k(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/avg/tuneup/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ai:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic n(Lcom/avg/tuneup/a/c;)I
    .locals 1

    iget v0, p0, Lcom/avg/tuneup/a/c;->ah:I

    return v0
.end method

.method static synthetic o(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic p(Lcom/avg/tuneup/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->aj:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/avg/tuneup/a/c;)I
    .locals 1

    iget v0, p0, Lcom/avg/tuneup/a/c;->al:I

    return v0
.end method

.method static synthetic r(Lcom/avg/tuneup/a/c;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic s(Lcom/avg/tuneup/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->am:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/avg/tuneup/a/c;)I
    .locals 1

    iget v0, p0, Lcom/avg/tuneup/a/c;->an:I

    return v0
.end method


# virtual methods
.method protected F()Lcom/avg/tuneup/a/h;
    .locals 4

    const-class v0, Lcom/avg/tuneup/storage/StorageActivity;

    const-class v1, Lcom/avg/tuneup/storage/b;

    const-string v2, "StorageFragment"

    const-string v3, "storage_usage"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/avg/tuneup/a/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/avg/tuneup/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected G()Lcom/avg/tuneup/a/h;
    .locals 4

    const-class v0, Lcom/avg/tuneup/traffic/TrafficMeterActivity;

    const-class v1, Lcom/avg/tuneup/traffic/y;

    const-string v2, "TrafficMeterFragment"

    const-string v3, "data_usage"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/avg/tuneup/a/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/avg/tuneup/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected H()Lcom/avg/tuneup/a/h;
    .locals 4

    const-class v0, Lcom/avg/tuneup/battery/BatteryStateActivity;

    const-class v1, Lcom/avg/tuneup/battery/r;

    const-string v2, "BatteryStateFragment"

    const-string v3, "battery_consumption"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/avg/tuneup/a/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/avg/tuneup/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected I()Lcom/avg/tuneup/a/h;
    .locals 4

    const-class v0, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;

    const-class v1, Lcom/avg/tuneup/taskkiller/d;

    const-string v2, "TaskKillerFragment"

    const-string v3, "task_killer"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/avg/tuneup/a/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/avg/tuneup/a/h;

    move-result-object v0

    return-object v0
.end method

.method public J()V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ae:Lcom/avg/tuneup/a/i;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/avg/tuneup/a/c;->an:I

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ae:Lcom/avg/tuneup/a/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/a/i;->a(Z)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/avg/tuneup/a/h;
    .locals 5

    new-instance v1, Lcom/avg/tuneup/a/h;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/a/h;-><init>(Lcom/avg/tuneup/a/c;)V

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Lcom/avg/tuneup/a/h;->a(Lcom/avg/tuneup/a/h;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    invoke-static {v1, p3}, Lcom/avg/tuneup/a/h;->a(Lcom/avg/tuneup/a/h;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    const-string v2, "performance"

    const-string v3, "permitted"

    const/4 v4, 0x0

    invoke-static {v0, v2, p4, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create fragment instance: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/a/c;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/avg/ui/general/fragments/d;->a(Landroid/os/Bundle;)V

    new-instance v0, Lcom/avg/tuneup/battery/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avg/tuneup/battery/b;-><init>(I)V

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->af:Lcom/avg/tuneup/battery/b;

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ag:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avg/tuneup/a/d;

    invoke-direct {v0, p0}, Lcom/avg/tuneup/a/d;-><init>(Lcom/avg/tuneup/a/c;)V

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->ag:Landroid/os/Handler;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->performance_running_tasks:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->ak:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/avg/tuneup/a/c;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->performance_free_memory:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->ak:Ljava/lang/String;

    new-instance v0, Lcom/avg/tuneup/a/i;

    iget-object v1, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    iget-object v2, p0, Lcom/avg/tuneup/a/c;->i:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/avg/tuneup/a/i;-><init>(Lcom/avg/tuneup/a/c;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/avg/tuneup/a/c;->ae:Lcom/avg/tuneup/a/i;

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, -0x1

    iput v1, p0, Lcom/avg/tuneup/a/c;->an:I

    iget v0, p0, Lcom/avg/tuneup/a/c;->ao:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/avg/tuneup/a/c;->ao:I

    iput v0, p0, Lcom/avg/tuneup/a/c;->an:I

    iput v1, p0, Lcom/avg/tuneup/a/c;->ao:I

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ae:Lcom/avg/tuneup/a/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/a/i;->a(Z)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/avg/ui/general/fragments/d;->a(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    iput p1, p0, Lcom/avg/tuneup/a/c;->ao:I

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ae:Lcom/avg/tuneup/a/i;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/avg/tuneup/a/c;->an:I

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ae:Lcom/avg/tuneup/a/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/a/i;->a(Z)V

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ae:Lcom/avg/tuneup/a/i;

    invoke-virtual {v0}, Lcom/avg/tuneup/a/i;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/avg/ui/general/fragments/d;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ae:Lcom/avg/tuneup/a/i;

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/a/c;->a(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/avg/tuneup/a/c;->a()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/avg/tuneup/a/e;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/a/e;-><init>(Lcom/avg/tuneup/a/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public r()V
    .locals 4

    invoke-super {p0}, Lcom/avg/ui/general/fragments/d;->r()V

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->af:Lcom/avg/tuneup/battery/b;

    iget-object v1, p0, Lcom/avg/tuneup/a/c;->ag:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/battery/b;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/avg/tuneup/a/c;->af:Lcom/avg/tuneup/battery/b;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/avg/ui/general/a/a;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/avg/tuneup/a/c;->O()V

    invoke-direct {p0}, Lcom/avg/tuneup/a/c;->N()V

    invoke-direct {p0}, Lcom/avg/tuneup/a/c;->K()V

    return-void
.end method

.method public s()V
    .locals 2

    invoke-super {p0}, Lcom/avg/ui/general/fragments/d;->s()V

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->ad:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/avg/tuneup/a/c;->af:Lcom/avg/tuneup/battery/b;

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/avg/tuneup/a/c;->af:Lcom/avg/tuneup/battery/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/battery/b;->a(Landroid/os/Handler;)V

    return-void
.end method

.method public t()V
    .locals 0

    invoke-super {p0}, Lcom/avg/ui/general/fragments/d;->t()V

    return-void
.end method
