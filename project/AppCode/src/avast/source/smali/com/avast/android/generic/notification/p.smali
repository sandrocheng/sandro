.class Lcom/avast/android/generic/notification/p;
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
    .line 569
    iput-object p1, p0, Lcom/avast/android/generic/notification/p;->a:Lcom/avast/android/generic/notification/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/notification/j;Lcom/avast/android/generic/notification/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 569
    invoke-direct {p0, p1}, Lcom/avast/android/generic/notification/p;-><init>(Lcom/avast/android/generic/notification/j;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Lcom/avast/android/generic/notification/p;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v0}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/notification/p;->a:Lcom/avast/android/generic/notification/j;

    invoke-virtual {v1}, Lcom/avast/android/generic/notification/j;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/avast/android/generic/notification/p;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/notification/p;->a:Lcom/avast/android/generic/notification/j;

    invoke-virtual {v2}, Lcom/avast/android/generic/notification/j;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 575
    iget-object v2, p0, Lcom/avast/android/generic/notification/p;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v2}, Lcom/avast/android/generic/notification/j;->e(Lcom/avast/android/generic/notification/j;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 576
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 577
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 578
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 580
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/avast/android/generic/notification/p;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->f(Lcom/avast/android/generic/notification/j;)Lcom/avast/android/generic/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 585
    :cond_0
    return-object v0
.end method

.method public a(Lcom/avast/android/generic/notification/a;)Landroid/app/Notification;
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 590
    iget-object v0, p0, Lcom/avast/android/generic/notification/p;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v0}, Lcom/avast/android/generic/notification/j;->e(Lcom/avast/android/generic/notification/j;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 591
    iget-object v1, p1, Lcom/avast/android/generic/notification/a;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 593
    iget-object v1, p1, Lcom/avast/android/generic/notification/a;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 594
    iget-object v1, p1, Lcom/avast/android/generic/notification/a;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 596
    iget-wide v1, p1, Lcom/avast/android/generic/notification/a;->b:J

    cmp-long v1, v1, v7

    if-lez v1, :cond_0

    .line 597
    iget-wide v1, p1, Lcom/avast/android/generic/notification/a;->b:J

    long-to-int v1, v1

    iget-wide v2, p1, Lcom/avast/android/generic/notification/a;->c:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/notification/p;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->d(Lcom/avast/android/generic/notification/j;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 600
    iget-object v1, p0, Lcom/avast/android/generic/notification/p;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/generic/x;->m:I

    iget-object v3, p0, Lcom/avast/android/generic/notification/p;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v3}, Lcom/avast/android/generic/notification/j;->d(Lcom/avast/android/generic/notification/j;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/avast/android/generic/notification/p;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v5}, Lcom/avast/android/generic/notification/j;->d(Lcom/avast/android/generic/notification/j;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 609
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lcom/avast/android/generic/notification/p;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->f(Lcom/avast/android/generic/notification/j;)Lcom/avast/android/generic/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->Q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 611
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 613
    :cond_2
    iget v1, v0, Landroid/app/Notification;->flags:I

    iget v2, p1, Lcom/avast/android/generic/notification/a;->f:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 615
    return-object v0

    .line 603
    :cond_3
    iget-wide v1, p1, Lcom/avast/android/generic/notification/a;->b:J

    cmp-long v1, v1, v7

    if-lez v1, :cond_1

    .line 604
    const-string v1, "%.0f%%"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v3, p1, Lcom/avast/android/generic/notification/a;->c:J

    long-to-float v3, v3

    iget-wide v4, p1, Lcom/avast/android/generic/notification/a;->b:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method
