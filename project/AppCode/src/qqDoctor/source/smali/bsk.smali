.class public final Lbsk;
.super Lbsh$a;


# instance fields
.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lbsk;->c:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    iput-object p3, p0, Lbsk;->b:Landroid/content/Context;

    invoke-direct {p0, p2}, Lbsh$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 9

    const v8, 0x7f0801b3

    const v7, 0x7f0801b1

    const v6, 0x7f0801b5

    const/4 v5, 0x2

    const v4, 0x7f0801af

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lbsk;->c:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lft;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->b()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lbsk;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030088

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f0801ac

    iget-object v2, p0, Lbsk;->c:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lbsk;->c:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v1, v5}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lbsk;->c:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lbsk;->c:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lbsk;->c:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0801ac

    const v2, 0x7f020362

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f020367

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    const/4 v1, 0x1

    aget-object v1, p1, v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f020360

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_1
    aget-object v1, p1, v5

    if-eqz v1, :cond_2

    aget-object v1, p1, v5

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f020364

    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_2
    const v1, 0x7f020365

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v1, p0, Lbsk;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lbsk;->b:Landroid/content/Context;

    const-class v4, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    :goto_3
    return-void

    :cond_0
    const v1, 0x7f020368

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    :cond_1
    const v1, 0x7f020361

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    :cond_2
    const v1, 0x7f020366

    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lbsk;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030089

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lbsk;->c:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v1, v5}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lbsk;->c:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f020367

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_4
    const v1, 0x7f020365

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v1, p0, Lbsk;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lbsk;->b:Landroid/content/Context;

    const-class v4, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_3

    :cond_4
    const v1, 0x7f020368

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_4
.end method
