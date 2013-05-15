.class public Lcom/avast/android/mobilesecurity/app/manager/a/a/h;
.super Lcom/avast/android/mobilesecurity/app/manager/a/a/c;
.source "RunningAppsCursorLoader.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/app/manager/a/a/b;


# instance fields
.field private final f:Landroid/app/ActivityManager;

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;-><init>(Landroid/content/Context;)V

    .line 48
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->f:Landroid/app/ActivityManager;

    .line 49
    iput p2, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->g:I

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->h:J

    .line 51
    return-void
.end method


# virtual methods
.method protected D()Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->f:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 68
    :cond_0
    return-object v0
.end method

.method protected a(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .parameter

    .prologue
    .line 73
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    new-instance v7, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    const-wide/16 v1, 0x0

    .line 78
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v1

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 79
    const-string v4, "system"

    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    iget-object v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v10, v9

    const/4 v4, 0x0

    move v5, v4

    move-wide/from16 v16, v2

    move-wide/from16 v3, v16

    :goto_1
    if-ge v5, v10, :cond_3

    aget-object v11, v9, v5

    .line 84
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->y()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v12, 0x80

    invoke-virtual {v2, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 87
    new-instance v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;

    invoke-direct {v13}, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;-><init>()V

    .line 88
    iput-wide v3, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->d:J

    .line 89
    iget-object v2, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->h:Ljava/lang/String;

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->y()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->i:Ljava/lang/String;

    .line 91
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v2, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->f:I

    .line 92
    const-wide/16 v14, 0x0

    iput-wide v14, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->j:J

    .line 94
    move-object/from16 v0, p0

    iget v2, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->g:I

    packed-switch v2, :pswitch_data_0

    .line 107
    :goto_2
    iget v2, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_3
    iput v2, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->k:I

    .line 110
    iget-object v2, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->h:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    iget-object v2, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->h:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;

    .line 112
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v2, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->i:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " ("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v2, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->f:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->i:Ljava/lang/String;

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->i:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " ("

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v12, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->f:I

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ")"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->i:Ljava/lang/String;

    .line 118
    :goto_4
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const-wide/16 v11, 0x1

    add-long/2addr v3, v11

    .line 82
    :goto_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1

    .line 96
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->z()Lcom/avast/android/mobilesecurity/app/manager/a/b;

    move-result-object v2

    iget-object v14, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v14, v15}, Lcom/avast/android/mobilesecurity/app/manager/a/b;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->j:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 121
    :catch_0
    move-exception v2

    .line 122
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] not found because of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->e(Ljava/lang/String;)I

    goto :goto_5

    .line 100
    :pswitch_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->z()Lcom/avast/android/mobilesecurity/app/manager/a/b;

    move-result-object v2

    iget v14, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->f:I

    invoke-virtual {v2, v14}, Lcom/avast/android/mobilesecurity/app/manager/a/b;->a(I)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->j:J

    goto/16 :goto_2

    .line 103
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->z()Lcom/avast/android/mobilesecurity/app/manager/a/b;

    move-result-object v2

    iget v14, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->f:I

    invoke-virtual {v2, v14}, Lcom/avast/android/mobilesecurity/app/manager/a/b;->b(I)I

    move-result v2

    int-to-long v14, v2

    iput-wide v14, v13, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->j:J

    goto/16 :goto_2

    .line 107
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 115
    :cond_2
    iget-object v2, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_3
    move-wide v2, v3

    .line 82
    goto/16 :goto_0

    .line 127
    :cond_4
    return-object v6

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b(Ljava/util/List;)Landroid/database/Cursor;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 132
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->g:I

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;

    iget-wide v0, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->j:J

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->h:J

    .line 136
    :cond_0
    new-instance v1, Landroid/database/MatrixCursor;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v0, v3

    const/4 v2, 0x1

    sget-object v3, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->i:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->k:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->l:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->t:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->u:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;

    .line 139
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget v4, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    iget v0, v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    .line 143
    :cond_1
    return-object v1
.end method

.method protected b_()Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->D()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected c_()Ljava/util/Comparator;
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->g:I

    packed-switch v0, :pswitch_data_0

    .line 160
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;-><init>()V

    .line 163
    :goto_0
    return-object v0

    .line 151
    :pswitch_0
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;-><init>()V

    goto :goto_0

    .line 157
    :pswitch_1
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/a/i;-><init>(Z)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public x()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;->h:J

    return-wide v0
.end method
