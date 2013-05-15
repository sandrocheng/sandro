.class Lcom/avast/android/generic/notification/q;
.super Ljava/lang/Object;
.source "AvastNotificationManager.java"

# interfaces
.implements Lcom/avast/android/generic/notification/o;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/notification/j;


# direct methods
.method private constructor <init>(Lcom/avast/android/generic/notification/j;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/notification/j;Lcom/avast/android/generic/notification/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/avast/android/generic/notification/q;-><init>(Lcom/avast/android/generic/notification/j;)V

    return-void
.end method

.method private a(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 513
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/w;->a(Landroid/content/Context;)I

    move-result v1

    .line 516
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v3}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 517
    iget-object v1, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-array v3, v7, [I

    sget v4, Lcom/avast/android/generic/t;->aq:I

    aput v4, v3, v6

    const/4 v4, 0x3

    new-array v4, v4, [I

    sget v5, Lcom/avast/android/generic/t;->E:I

    aput v5, v4, v6

    sget v5, Lcom/avast/android/generic/t;->h:I

    aput v5, v4, v7

    const/4 v5, 0x2

    sget v6, Lcom/avast/android/generic/t;->R:I

    aput v6, v4, v5

    invoke-static {v1, v2, v7, v3, v4}, Lcom/avast/android/generic/util/w;->a(Landroid/content/Context;Landroid/widget/RemoteViews;Z[I[I)V

    .line 519
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lcom/avast/android/generic/t;->h:I

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 521
    iget-object v1, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->f(Lcom/avast/android/generic/notification/j;)Lcom/avast/android/generic/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 524
    :cond_0
    return-object v0
.end method

.method private a(Landroid/app/Notification;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 552
    iget-object v1, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->d(Lcom/avast/android/generic/notification/j;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v8, :cond_1

    .line 553
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lcom/avast/android/generic/t;->h:I

    iget-object v3, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v3}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/avast/android/generic/x;->m:I

    iget-object v5, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v5}, Lcom/avast/android/generic/notification/j;->d(Lcom/avast/android/generic/notification/j;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v7}, Lcom/avast/android/generic/notification/j;->d(Lcom/avast/android/generic/notification/j;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 556
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lcom/avast/android/generic/t;->h:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 557
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 560
    iget-object v1, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->d(Lcom/avast/android/generic/notification/j;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v8, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v0}, Lcom/avast/android/generic/notification/j;->d(Lcom/avast/android/generic/notification/j;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :cond_0
    iput v0, p1, Landroid/app/Notification;->number:I

    .line 563
    :cond_1
    return-void
.end method

.method private a(Lcom/avast/android/generic/notification/a;Landroid/app/Notification;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 535
    iget-wide v0, p1, Lcom/avast/android/generic/notification/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v1, Lcom/avast/android/generic/t;->R:I

    iget-object v2, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v2}, Lcom/avast/android/generic/notification/j;->g(Lcom/avast/android/generic/notification/j;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p1, Lcom/avast/android/generic/notification/a;->h:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 544
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-wide v0, p1, Lcom/avast/android/generic/notification/a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v1, Lcom/avast/android/generic/t;->R:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 541
    :cond_1
    iget-object v0, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v1, Lcom/avast/android/generic/t;->R:I

    const-string v2, "%.0f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p1, Lcom/avast/android/generic/notification/a;->c:J

    long-to-float v5, v5

    iget-wide v6, p1, Lcom/avast/android/generic/notification/a;->b:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x42c8

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 5

    .prologue
    .line 468
    iget-object v0, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v0}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-virtual {v1}, Lcom/avast/android/generic/notification/j;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-virtual {v2}, Lcom/avast/android/generic/notification/j;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 471
    iget-object v2, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v2}, Lcom/avast/android/generic/notification/j;->e(Lcom/avast/android/generic/notification/j;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 472
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 474
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 475
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 477
    invoke-direct {p0, v2}, Lcom/avast/android/generic/notification/q;->a(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v2

    .line 478
    iget-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcom/avast/android/generic/t;->aq:I

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 479
    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcom/avast/android/generic/t;->E:I

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 480
    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v1, Lcom/avast/android/generic/t;->R:I

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 482
    return-object v2
.end method

.method public a(Lcom/avast/android/generic/notification/a;)Landroid/app/Notification;
    .locals 4
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/avast/android/generic/notification/q;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v0}, Lcom/avast/android/generic/notification/j;->e(Lcom/avast/android/generic/notification/j;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 488
    iget-object v1, p1, Lcom/avast/android/generic/notification/a;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 490
    iget-object v1, p1, Lcom/avast/android/generic/notification/a;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 491
    iget-object v1, p1, Lcom/avast/android/generic/notification/a;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 493
    invoke-direct {p0, v0}, Lcom/avast/android/generic/notification/q;->a(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    .line 494
    iget v1, v0, Landroid/app/Notification;->flags:I

    iget v2, p1, Lcom/avast/android/generic/notification/a;->f:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 496
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lcom/avast/android/generic/t;->aq:I

    iget-object v3, p1, Lcom/avast/android/generic/notification/a;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 497
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lcom/avast/android/generic/t;->E:I

    iget-object v3, p1, Lcom/avast/android/generic/notification/a;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 499
    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/notification/q;->a(Lcom/avast/android/generic/notification/a;Landroid/app/Notification;)V

    .line 500
    invoke-direct {p0, v0}, Lcom/avast/android/generic/notification/q;->a(Landroid/app/Notification;)V

    .line 502
    return-object v0
.end method
