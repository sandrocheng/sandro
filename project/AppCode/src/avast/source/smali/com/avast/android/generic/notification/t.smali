.class public Lcom/avast/android/generic/notification/t;
.super Lcom/avast/android/generic/b;
.source "NotificationsCursorLoader.java"


# instance fields
.field private f:Lcom/avast/android/generic/notification/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/avast/android/generic/b;-><init>(Landroid/content/Context;)V

    .line 35
    const-class v0, Lcom/avast/android/generic/notification/j;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    iput-object v0, p0, Lcom/avast/android/generic/notification/t;->f:Lcom/avast/android/generic/notification/j;

    .line 36
    return-void
.end method

.method private w()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    new-instance v2, Landroid/database/MatrixCursor;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "contentText"

    aput-object v1, v0, v3

    const-string v1, "contentTitle"

    aput-object v1, v0, v5

    const-string v1, "flags"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v3, "ongoing"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "pendingIntentAction"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "pendingIntentClass"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "pendingIntentData"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "pendingIntentExtras"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "pendingIntentFlags"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "pendingIntentType"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "percentage"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "timestamp"

    aput-object v3, v0, v1

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/avast/android/generic/notification/t;->f:Lcom/avast/android/generic/notification/j;

    monitor-enter v3

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/notification/t;->f:Lcom/avast/android/generic/notification/j;

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/j;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/a;

    .line 63
    iget v1, v0, Lcom/avast/android/generic/notification/a;->f:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    .line 64
    const/16 v1, 0xe

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v6, v0, Lcom/avast/android/generic/notification/a;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    iget-object v6, v0, Lcom/avast/android/generic/notification/a;->j:Ljava/lang/CharSequence;

    aput-object v6, v5, v1

    const/4 v1, 0x2

    iget-object v6, v0, Lcom/avast/android/generic/notification/a;->i:Ljava/lang/CharSequence;

    aput-object v6, v5, v1

    const/4 v1, 0x3

    iget v6, v0, Lcom/avast/android/generic/notification/a;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x4

    iget v6, v0, Lcom/avast/android/generic/notification/a;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x6

    iget-object v6, v0, Lcom/avast/android/generic/notification/a;->g:Lcom/avast/android/generic/notification/AvastPendingIntent;

    iget-object v6, v6, Lcom/avast/android/generic/notification/AvastPendingIntent;->a:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x7

    iget-object v6, v0, Lcom/avast/android/generic/notification/a;->g:Lcom/avast/android/generic/notification/AvastPendingIntent;

    iget-object v6, v6, Lcom/avast/android/generic/notification/AvastPendingIntent;->c:Ljava/lang/String;

    aput-object v6, v5, v1

    const/16 v6, 0x8

    iget-object v1, v0, Lcom/avast/android/generic/notification/a;->g:Lcom/avast/android/generic/notification/AvastPendingIntent;

    iget-object v1, v1, Lcom/avast/android/generic/notification/AvastPendingIntent;->b:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/avast/android/generic/notification/a;->g:Lcom/avast/android/generic/notification/AvastPendingIntent;

    iget-object v1, v1, Lcom/avast/android/generic/notification/AvastPendingIntent;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v5, v6

    const/16 v1, 0x9

    iget-object v6, v0, Lcom/avast/android/generic/notification/a;->g:Lcom/avast/android/generic/notification/AvastPendingIntent;

    invoke-virtual {v6}, Lcom/avast/android/generic/notification/AvastPendingIntent;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/16 v1, 0xa

    iget-object v6, v0, Lcom/avast/android/generic/notification/a;->g:Lcom/avast/android/generic/notification/AvastPendingIntent;

    iget v6, v6, Lcom/avast/android/generic/notification/AvastPendingIntent;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/16 v1, 0xb

    iget-object v6, v0, Lcom/avast/android/generic/notification/a;->g:Lcom/avast/android/generic/notification/AvastPendingIntent;

    iget-object v6, v6, Lcom/avast/android/generic/notification/AvastPendingIntent;->f:Lcom/avast/android/generic/notification/s;

    invoke-virtual {v6}, Lcom/avast/android/generic/notification/s;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/16 v1, 0xc

    iget-wide v6, v0, Lcom/avast/android/generic/notification/a;->c:J

    long-to-float v6, v6

    iget-wide v7, v0, Lcom/avast/android/generic/notification/a;->b:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    const/16 v1, 0xd

    iget-wide v6, v0, Lcom/avast/android/generic/notification/a;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 64
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 82
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    return-object v2
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/avast/android/generic/notification/t;->f()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/avast/android/generic/notification/t;->w()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
