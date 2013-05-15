.class public Lcom/avast/android/generic/util/w;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 5
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 134
    sget v1, Lcom/avast/android/generic/v;->x:I

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v0, v2, :cond_1

    .line 138
    :try_start_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 140
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 141
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p0, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 142
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 143
    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/avast/android/generic/r;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 146
    sget v1, Lcom/avast/android/generic/v;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 148
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    :goto_1
    return v0

    .line 149
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/widget/RemoteViews;Z[I[I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, -0x4080

    const v7, 0x1060003

    const/4 v1, 0x0

    .line 60
    new-instance v3, Lcom/avast/android/generic/util/v;

    invoke-direct {v3}, Lcom/avast/android/generic/util/v;-><init>()V

    .line 64
    :try_start_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 65
    const-string v2, "SOME_SAMPLE_TEXT"

    const-string v4, "SOME_SAMPLE_TEXT2"

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v2, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 66
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p0, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    invoke-static {v0, p0, v3}, Lcom/avast/android/generic/util/w;->a(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/avast/android/generic/util/v;)V

    .line 69
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    iget v0, v3, Lcom/avast/android/generic/util/v;->b:F

    cmpl-float v0, v0, v8

    if-gtz v0, :cond_0

    if-nez p2, :cond_2

    iget v0, v3, Lcom/avast/android/generic/util/v;->d:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_2

    .line 79
    :cond_0
    array-length v4, p3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget v5, p3, v2

    .line 80
    const-string v6, "setTextSize"

    if-eqz p2, :cond_1

    iget v0, v3, Lcom/avast/android/generic/util/v;->b:F

    :goto_2
    invoke-virtual {p1, v5, v6, v0}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 79
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 73
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/avast/android/generic/util/v;->a:Ljava/lang/Integer;

    .line 74
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/avast/android/generic/util/v;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, v3, Lcom/avast/android/generic/util/v;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    goto :goto_2

    .line 82
    :cond_2
    iget v0, v3, Lcom/avast/android/generic/util/v;->d:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_3

    if-eqz p2, :cond_3

    .line 84
    array-length v2, p4

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_3

    aget v4, p4, v0

    .line 85
    const-string v5, "setTextSize"

    iget v6, v3, Lcom/avast/android/generic/util/v;->d:F

    invoke-virtual {p1, v4, v5, v6}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 87
    :cond_3
    iget-object v0, v3, Lcom/avast/android/generic/util/v;->a:Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/avast/android/generic/util/v;->a:Ljava/lang/Integer;

    .line 91
    :cond_4
    iget-object v0, v3, Lcom/avast/android/generic/util/v;->c:Ljava/lang/Integer;

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/avast/android/generic/util/v;->c:Ljava/lang/Integer;

    .line 96
    :cond_5
    array-length v2, p3

    move v0, v1

    :goto_4
    if-ge v0, v2, :cond_6

    aget v4, p3, v0

    .line 97
    iget-object v5, v3, Lcom/avast/android/generic/util/v;->a:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 99
    :cond_6
    if-eqz p2, :cond_7

    .line 101
    array-length v2, p4

    move v0, v1

    :goto_5
    if-ge v0, v2, :cond_7

    aget v1, p4, v0

    .line 102
    iget-object v4, v3, Lcom/avast/android/generic/util/v;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 104
    :cond_7
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/avast/android/generic/util/v;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 28
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 30
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    const-string v4, "SOME_SAMPLE_TEXT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p2, Lcom/avast/android/generic/util/v;->a:Ljava/lang/Integer;

    .line 37
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p2, Lcom/avast/android/generic/util/v;->b:F

    .line 38
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 39
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 40
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 41
    iget v0, p2, Lcom/avast/android/generic/util/v;->b:F

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v0, v3

    iput v0, p2, Lcom/avast/android/generic/util/v;->b:F

    .line 28
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 42
    :cond_1
    const-string v4, "SOME_SAMPLE_TEXT2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p2, Lcom/avast/android/generic/util/v;->c:Ljava/lang/Integer;

    .line 45
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p2, Lcom/avast/android/generic/util/v;->d:F

    .line 46
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 47
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 48
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget v0, p2, Lcom/avast/android/generic/util/v;->d:F

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v0, v3

    iput v0, p2, Lcom/avast/android/generic/util/v;->d:F

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1, p2}, Lcom/avast/android/generic/util/w;->a(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/avast/android/generic/util/v;)V

    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method
