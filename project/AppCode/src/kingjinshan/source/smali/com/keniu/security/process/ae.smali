.class final Lcom/keniu/security/process/ae;
.super Ljava/lang/Object;
.source "ProcessWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessWidget;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/ActivityManager;

.field private d:Landroid/app/ActivityManager$MemoryInfo;

.field private e:F

.field private f:Landroid/widget/RemoteViews;

.field private g:Landroid/content/ComponentName;

.field private h:Landroid/appwidget/AppWidgetManager;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:I


# direct methods
.method public constructor <init>(Lcom/keniu/security/process/ProcessWidget;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 140
    iput-object p1, p0, Lcom/keniu/security/process/ae;->a:Lcom/keniu/security/process/ProcessWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/keniu/security/process/ae;->b:Landroid/content/Context;

    .line 143
    iget-object v0, p0, Lcom/keniu/security/process/ae;->b:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/keniu/security/process/ae;->c:Landroid/app/ActivityManager;

    .line 144
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/process/ae;->d:Landroid/app/ActivityManager$MemoryInfo;

    .line 145
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/keniu/security/process/ae;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300db

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/keniu/security/process/ae;->f:Landroid/widget/RemoteViews;

    .line 146
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/keniu/security/process/ae;->b:Landroid/content/Context;

    const-class v2, Lcom/keniu/security/process/ProcessWidget;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/keniu/security/process/ae;->g:Landroid/content/ComponentName;

    .line 147
    iget-object v0, p0, Lcom/keniu/security/process/ae;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/ae;->h:Landroid/appwidget/AppWidgetManager;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/process/ae;->i:Ljava/util/List;

    .line 150
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/process/ae;->b:Landroid/content/Context;

    const-class v2, Lcom/keniu/security/service/ProcessService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string v1, "process_service_type"

    const-string v2, "clear"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/keniu/security/process/ae;->b:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 155
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/process/ae;->b:Landroid/content/Context;

    const-class v3, Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    iget-object v2, p0, Lcom/keniu/security/process/ae;->b:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/keniu/security/process/ae;->f:Landroid/widget/RemoteViews;

    const v3, 0x7f080324

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 160
    iget-object v0, p0, Lcom/keniu/security/process/ae;->f:Landroid/widget/RemoteViews;

    const v2, 0x7f080322

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 161
    iget-object v0, p0, Lcom/keniu/security/process/ae;->f:Landroid/widget/RemoteViews;

    const v2, 0x7f080323

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 163
    return-void
.end method

.method private a()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 192
    iget-object v0, p0, Lcom/keniu/security/process/ae;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    iget-object v0, p0, Lcom/keniu/security/process/ae;->c:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/ae;->j:Ljava/util/List;

    .line 194
    iget-object v0, p0, Lcom/keniu/security/process/ae;->j:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v6

    .line 211
    :goto_0
    return v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/process/ae;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/keniu/security/process/ae;->k:I

    move v1, v6

    .line 200
    :goto_1
    iget v0, p0, Lcom/keniu/security/process/ae;->k:I

    if-ge v1, v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/keniu/security/process/ae;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v2, v0

    move v3, v6

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 204
    iget-object v5, p0, Lcom/keniu/security/process/ae;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 206
    iget-object v5, p0, Lcom/keniu/security/process/ae;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 200
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/process/ae;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/high16 v2, 0x4480

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 168
    iget-object v0, p0, Lcom/keniu/security/process/ae;->c:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/keniu/security/process/ae;->d:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 169
    iget-object v0, p0, Lcom/keniu/security/process/ae;->d:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-float v0, v0

    div-float/2addr v0, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/keniu/security/process/ae;->e:F

    .line 171
    iget-object v1, p0, Lcom/keniu/security/process/ae;->f:Landroid/widget/RemoteViews;

    const v2, 0x7f080322

    iget-object v0, p0, Lcom/keniu/security/process/ae;->b:Landroid/content/Context;

    const v3, 0x7f0b054e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/keniu/security/process/ae;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/keniu/security/process/ae;->c:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/ae;->j:Ljava/util/List;

    iget-object v0, p0, Lcom/keniu/security/process/ae;->j:Ljava/util/List;

    if-nez v0, :cond_1

    move v0, v10

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/keniu/security/process/ae;->f:Landroid/widget/RemoteViews;

    const v1, 0x7f080323

    iget-object v2, p0, Lcom/keniu/security/process/ae;->b:Landroid/content/Context;

    const v3, 0x7f0b054f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    iget v4, p0, Lcom/keniu/security/process/ae;->e:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/process/ae;->h:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/keniu/security/process/ae;->g:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/keniu/security/process/ae;->f:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    invoke-static {}, Lcom/keniu/security/process/ProcessWidget;->b()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/keniu/security/process/ProcessWidget;->b()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    :cond_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/process/ae;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/keniu/security/process/ae;->k:I

    move v5, v10

    :goto_2
    iget v0, p0, Lcom/keniu/security/process/ae;->k:I

    if-ge v5, v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/process/ae;->j:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v0

    move v7, v10

    :goto_3
    if-ge v7, v6, :cond_3

    aget-object v8, v0, v7

    iget-object v9, p0, Lcom/keniu/security/process/ae;->i:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/keniu/security/process/ae;->i:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/keniu/security/process/ae;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
