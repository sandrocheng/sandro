.class public final Lbsq;
.super Lbsh$a;


# instance fields
.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lbsq;->c:Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;

    iput-object p3, p0, Lbsq;->b:Landroid/content/Context;

    invoke-direct {p0, p2}, Lbsh$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 12

    const/16 v11, 0x64

    const/16 v10, 0x24

    const/16 v9, 0x1c

    const v8, 0x7f0802e0

    const/4 v7, 0x0

    invoke-static {}, Lvh;->f()J

    move-result-wide v1

    invoke-static {}, Lvh;->e()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v1

    div-long v3, v5, v3

    long-to-int v0, v3

    rsub-int/lit8 v3, v0, 0x64

    const/16 v0, 0x5a

    if-ge v3, v0, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lbsq;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0300e3

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f0802e2

    invoke-virtual {v0, v4, v11, v3, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const/16 v3, 0xa0

    const/16 v4, 0xd3

    invoke-static {v7, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v8, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v3, 0x7f0802e1

    const/16 v4, 0xa0

    const/16 v5, 0xd3

    invoke-static {v7, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :goto_0
    const v3, 0x7f0802e4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0093

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    shl-long/2addr v1, v5

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0802e5

    iget-object v2, p0, Lbsq;->c:Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;->a(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0802dc

    iget-object v2, p0, Lbsq;->c:Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;->a(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lbsq;->b:Landroid/content/Context;

    const-class v4, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lbsq;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0300e4

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f0802e6

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    invoke-virtual {v0, v4, v11, v3, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const/16 v3, 0xed

    invoke-static {v3, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v8, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v3, 0x7f0802e1

    const/16 v4, 0xed

    invoke-static {v4, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_0
.end method
