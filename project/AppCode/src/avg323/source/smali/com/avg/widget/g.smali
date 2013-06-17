.class public abstract Lcom/avg/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/avg/toolkit/e;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/os/Handler;

.field protected c:Lcom/avg/toolkit/e/a;

.field protected d:Z

.field protected e:Ljava/util/Map;

.field private f:Landroid/widget/RemoteViews;

.field private g:Landroid/appwidget/AppWidgetManager;

.field private h:Landroid/content/ComponentName;

.field private i:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/avg/toolkit/e/a;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avg/widget/g;->i:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avg/widget/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/avg/widget/g;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/avg/widget/g;->c:Lcom/avg/toolkit/e/a;

    iput-boolean p4, p0, Lcom/avg/widget/g;->d:Z

    iget-object v0, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/widget/g;->g:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/avg/widget/e;->widget_layout:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/avg/widget/g;->c()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/widget/g;->h:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/avg/widget/g;->d()V

    invoke-virtual {p0}, Lcom/avg/widget/g;->r()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avg/widget/g;->a([I)V

    invoke-virtual {p0}, Lcom/avg/widget/g;->l()V

    invoke-virtual {p0}, Lcom/avg/widget/g;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avg/widget/g;->d(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private a([II)Ljava/util/List;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget v2, p1, v0

    if-ne v2, p2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private declared-synchronized a(Landroid/widget/RemoteViews;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avg/widget/g;->g:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/avg/widget/g;->h:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "AppWidgetManager is not available. Cancel update"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/avg/widget/model/plugin/WidgetTrialPlugin;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "launchFormWidget"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avg/widget/g;->m()Ljava/lang/Class;

    move-result-object v1

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "EXTRA_GOTO"

    invoke-virtual {p1}, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->c()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    const-class v2, Lcom/avg/widget/activities/TransparentDummyActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "FEATURE_EXPIRED_TITLE"

    invoke-virtual {p1}, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "FEATURE_EXPIRED_SUBTITLE"

    invoke-virtual {p1}, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->o()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "FEATURE_EXPIRED_BODY"

    invoke-virtual {p1}, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "FEATURE_EXPIRED_ICON"

    invoke-virtual {p1}, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->q()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private b(Ljava/lang/Boolean;ZZ)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/avg/widget/g;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/avg/widget/g;->c(Z)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/avg/widget/g;->g()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    sget v3, Lcom/avg/widget/d;->settingLeftImage:I

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_0
    iget-object v0, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    sget v2, Lcom/avg/widget/d;->settings:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/avg/widget/g;->a(Landroid/widget/RemoteViews;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/avg/widget/g;->h()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "AppWidgetManager is not available. Cancel update"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b([I)Z
    .locals 4

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, p1, v1

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Z)Landroid/app/PendingIntent;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/avg/widget/g;->g:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/avg/widget/g;->h:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/avg/widget/g;->i()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "appWidgetId"

    aget v1, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ExistingWidget"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "curr_widget_config"

    invoke-virtual {p0}, Lcom/avg/widget/g;->r()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v1, "available_plugins"

    invoke-virtual {p0}, Lcom/avg/widget/g;->j()[Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    const/high16 v2, 0x800

    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/avg/widget/g;->k()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/avg/widget/g;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/widget/model/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/avg/widget/model/a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 3

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/widget/g;->c:Lcom/avg/toolkit/e/a;

    iget-object v0, p0, Lcom/avg/widget/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/widget/model/plugin/WidgetPlugin;

    invoke-virtual {v0}, Lcom/avg/widget/model/plugin/WidgetPlugin;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;

    iget-object v2, p0, Lcom/avg/widget/g;->c:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0, v2}, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->a(Lcom/avg/toolkit/e/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Boolean;ZZ)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/avg/widget/g;->t()V

    invoke-virtual {p0}, Lcom/avg/widget/g;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "Widget cannot be updated - mContext is null. Update will be performed on next request"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t instantiate widget VO"

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/avg/widget/g;->k()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    const/16 v2, 0xf

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    sget v2, Lcom/avg/widget/d;->activationHolder:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    sget v1, Lcom/avg/widget/d;->activationHolder:I

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    sget v1, Lcom/avg/widget/d;->mainWidgetLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    invoke-direct {p0, p1, v4, p3}, Lcom/avg/widget/g;->b(Ljava/lang/Boolean;ZZ)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/avg/widget/g;->a(Landroid/widget/RemoteViews;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    sget v1, Lcom/avg/widget/d;->activationTextView:I

    iget-object v2, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    sget v3, Lcom/avg/widget/f;->widget_activation:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    sget v1, Lcom/avg/widget/d;->activationHolder:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    sget v1, Lcom/avg/widget/d;->mainWidgetLayout:I

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/avg/widget/g;->n()V

    return-void
.end method

.method protected a([I)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/avg/widget/g;->b([I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/avg/widget/g;->a()[I

    move-result-object p1

    :cond_0
    iget-object v6, p0, Lcom/avg/widget/g;->i:Ljava/util/List;

    new-instance v0, Lcom/avg/widget/model/a;

    sget v1, Lcom/avg/widget/d;->widget1Placeholder:I

    sget v2, Lcom/avg/widget/d;->widget1Image:I

    sget v3, Lcom/avg/widget/d;->widget1text:I

    sget v4, Lcom/avg/widget/d;->sideText1:I

    aget v5, p1, v7

    invoke-direct/range {v0 .. v5}, Lcom/avg/widget/model/a;-><init>(IIIII)V

    invoke-interface {v6, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/avg/widget/g;->i:Ljava/util/List;

    new-instance v0, Lcom/avg/widget/model/a;

    sget v1, Lcom/avg/widget/d;->widget2Placeholder:I

    sget v2, Lcom/avg/widget/d;->widget2Image:I

    sget v3, Lcom/avg/widget/d;->widget2text:I

    sget v4, Lcom/avg/widget/d;->sideText2:I

    aget v5, p1, v8

    invoke-direct/range {v0 .. v5}, Lcom/avg/widget/model/a;-><init>(IIIII)V

    invoke-interface {v6, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/avg/widget/g;->i:Ljava/util/List;

    new-instance v0, Lcom/avg/widget/model/a;

    sget v1, Lcom/avg/widget/d;->widget3Placeholder:I

    sget v2, Lcom/avg/widget/d;->widget3Image:I

    sget v3, Lcom/avg/widget/d;->widget3text:I

    sget v4, Lcom/avg/widget/d;->sideText3:I

    aget v5, p1, v9

    invoke-direct/range {v0 .. v5}, Lcom/avg/widget/model/a;-><init>(IIIII)V

    invoke-interface {v6, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/avg/widget/g;->i:Ljava/util/List;

    new-instance v0, Lcom/avg/widget/model/a;

    sget v1, Lcom/avg/widget/d;->widget4Placeholder:I

    sget v2, Lcom/avg/widget/d;->widget4Image:I

    sget v3, Lcom/avg/widget/d;->widget4text:I

    sget v4, Lcom/avg/widget/d;->sideText4:I

    aget v5, p1, v10

    invoke-direct/range {v0 .. v5}, Lcom/avg/widget/model/a;-><init>(IIIII)V

    invoke-interface {v6, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method protected a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/avg/widget/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/widget/model/a;

    invoke-virtual {v0}, Lcom/avg/widget/model/a;->d()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a()[I
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x61a8

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "__SAC2"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/avg/widget/g;->o()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/avg/widget/g;->d(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/avg/widget/g;->p()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/avg/widget/g;->e(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/avg/widget/g;->c(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lcom/avg/widget/g;->e()V

    goto :goto_1

    :pswitch_7
    const-string v0, "widget_view_button_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "widget_config_resource_item"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/avg/widget/g;->a(II)V

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/avg/widget/g;->c:Lcom/avg/toolkit/e/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/widget/g;->c:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p0, Lcom/avg/widget/g;->d:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/avg/widget/g;->a(Ljava/lang/Boolean;ZZ)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public b(Lcom/avg/toolkit/e/a;)V
    .locals 3

    iput-object p1, p0, Lcom/avg/widget/g;->c:Lcom/avg/toolkit/e/a;

    invoke-virtual {p1}, Lcom/avg/toolkit/e/a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/avg/widget/g;->d:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/avg/widget/g;->b(Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iput-boolean p1, p0, Lcom/avg/widget/g;->d:Z

    :cond_0
    return-void
.end method

.method protected abstract c()Landroid/content/ComponentName;
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/avg/widget/g;->q()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    const-string v1, "extra_plugin_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ltz v0, :cond_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/avg/widget/g;->r()[I

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/avg/widget/g;->a([II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avg/widget/g;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/widget/model/plugin/WidgetPlugin;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/avg/widget/g;->i:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avg/widget/model/a;

    :try_start_1
    iget-object v4, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v4, v1, v5, v2}, Lcom/avg/widget/model/plugin/WidgetPlugin;->a(Landroid/content/Context;Lcom/avg/widget/model/a;Landroid/widget/RemoteViews;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    or-int/2addr v1, v2

    :goto_3
    move v2, v1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v1, "Couldn\'t instantiate widget item update. Widget item is not updated"

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    move v1, v2

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/avg/widget/g;->a(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method protected abstract d()V
.end method

.method d(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/avg/widget/g;->d()V

    if-eqz p1, :cond_0

    const-string v0, "extra_activated"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avg/widget/g;->b(Z)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avg/widget/g;->g:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/avg/widget/g;->h:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :cond_1
    invoke-virtual {p0}, Lcom/avg/widget/g;->r()[I

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_2

    array-length v2, v0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const-string v2, "WIDGET ERROR ON LOAD CONFIG"

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/avg/widget/g;->b([I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/avg/widget/g;->a()[I

    move-result-object v0

    :cond_3
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget v2, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/avg/widget/g;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "AppWidgetManager is not available. Cancel reload"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/avg/widget/g;->c:Lcom/avg/toolkit/e/a;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/avg/widget/g;->d:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/avg/widget/g;->a(Ljava/lang/Boolean;ZZ)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/avg/widget/g;->c:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_2
.end method

.method protected abstract e()V
.end method

.method e(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "WidgetItem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "WidgetItem"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avg/widget/g;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/widget/model/plugin/WidgetPlugin;

    invoke-virtual {v0}, Lcom/avg/widget/model/plugin/WidgetPlugin;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;

    invoke-direct {p0, v0}, Lcom/avg/widget/g;->a(Lcom/avg/widget/model/plugin/WidgetTrialPlugin;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/avg/widget/model/plugin/WidgetPlugin;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/avg/widget/g;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/avg/widget/model/plugin/WidgetPlugin;->a(Landroid/content/Context;Landroid/os/Handler;)V

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    const-string v2, "widget"

    invoke-virtual {v0}, Lcom/avg/widget/model/plugin/WidgetPlugin;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/avg/widget/model/plugin/WidgetPlugin;->c()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x4000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected abstract f()V
.end method

.method protected abstract g()I
.end method

.method protected abstract h()I
.end method

.method protected abstract i()Ljava/lang/Class;
.end method

.method protected abstract j()[Landroid/os/Parcelable;
.end method

.method protected abstract k()Ljava/lang/Class;
.end method

.method protected abstract l()V
.end method

.method protected m()Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/avg/widget/g;->c:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avg/widget/g;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/avg/widget/g;->d:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/avg/widget/g;->b(Ljava/lang/Boolean;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method o()V
    .locals 5

    iget-object v0, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    const-string v1, "widget"

    const-string v2, "widget_added"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/avg/widget/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/avg/widget/g;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/avg/widget/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/avg/widget/g;->e:Ljava/util/Map;

    iput-object v1, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/avg/widget/g;->b:Landroid/os/Handler;

    iput-object v1, p0, Lcom/avg/widget/g;->c:Lcom/avg/toolkit/e/a;

    iput-object v1, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    iput-object v1, p0, Lcom/avg/widget/g;->g:Landroid/appwidget/AppWidgetManager;

    iput-object v1, p0, Lcom/avg/widget/g;->h:Landroid/content/ComponentName;

    return-void
.end method

.method p()V
    .locals 5

    iget-object v0, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    const-string v1, "widgetConfig.data"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "successfully"

    :goto_0
    invoke-virtual {p0}, Lcom/avg/widget/g;->f()V

    iget-object v0, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    const-string v1, "widget"

    const-string v2, "widget_removed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v0, "for some reason not"

    goto :goto_0
.end method

.method public q()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/avg/widget/g;->g:Landroid/appwidget/AppWidgetManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/avg/widget/g;->g:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/avg/widget/g;->h:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "AppWidgetManager is not available"

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized r()[I
    .locals 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "widgetConfig.data"

    iget-object v2, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    new-array v0, v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x4

    new-array v0, v0, [I

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v1, "widgetConfig.data"

    iget-object v0, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Lcom/avg/widget/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/widget/model/a;

    invoke-virtual {v0}, Lcom/avg/widget/model/a;->d()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    iget-object v0, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public t()V
    .locals 6

    iget-object v0, p0, Lcom/avg/widget/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/widget/model/a;

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/avg/widget/g;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avg/widget/model/a;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avg/widget/model/plugin/WidgetPlugin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/avg/widget/g;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/avg/widget/g;->f:Landroid/widget/RemoteViews;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/avg/widget/model/plugin/WidgetPlugin;->a(Landroid/content/Context;Lcom/avg/widget/model/a;Landroid/widget/RemoteViews;Z)Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Couldn\'t instantiate widget VO"

    invoke-static {v4}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/avg/widget/g;->l()V

    return-void
.end method
