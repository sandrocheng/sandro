.class public Lcom/avg/tuneup/taskkiller/widget/CloseAllTasksWidgetPlugin;
.super Lcom/avg/widget/model/plugin/WidgetPlugin;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/avg/tuneup/taskkiller/widget/c;

    invoke-direct {v0}, Lcom/avg/tuneup/taskkiller/widget/c;-><init>()V

    sput-object v0, Lcom/avg/tuneup/taskkiller/widget/CloseAllTasksWidgetPlugin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/avg/tuneup/taskkiller/widget/a;->a:Lcom/avg/tuneup/taskkiller/widget/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/avg/widget/model/plugin/WidgetPlugin;-><init>(Lcom/avg/widget/model/plugin/a;ZZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/avg/widget/model/plugin/WidgetPlugin;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/taskkiller/widget/a;

    iput-object v0, p0, Lcom/avg/tuneup/taskkiller/widget/CloseAllTasksWidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/avg/tuneup/taskkiller/o;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avg/tuneup/taskkiller/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v4, v5}, Lcom/avg/tuneup/taskkiller/o;->a(Landroid/content/Context;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1}, Lcom/avg/tuneup/taskkiller/o;->a(Landroid/content/Context;)V

    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0, p1, v4, v5}, Lcom/avg/tuneup/taskkiller/o;->a(Landroid/content/Context;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-gtz v1, :cond_0

    sget v0, Lcom/avg/a/g;->widget_close_nothing_to_close:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/avg/tuneup/taskkiller/widget/b;

    invoke-direct {v1, p0, p1, v0}, Lcom/avg/tuneup/taskkiller/widget/b;-><init>(Lcom/avg/tuneup/taskkiller/widget/CloseAllTasksWidgetPlugin;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v2

    const-string v2, "Something happened when Kill All Service was sleeping"

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/avg/tuneup/taskkiller/o;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/avg/ui/general/c/i;->a(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/avg/a/g;->widget_close_all_issue:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/avg/widget/model/a;Landroid/widget/RemoteViews;Z)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/avg/tuneup/taskkiller/widget/CloseAllTasksWidgetPlugin;->a(Landroid/widget/RemoteViews;Lcom/avg/widget/model/a;Landroid/content/Context;)V

    invoke-virtual {p0, p3, p2}, Lcom/avg/tuneup/taskkiller/widget/CloseAllTasksWidgetPlugin;->a(Landroid/widget/RemoteViews;Lcom/avg/widget/model/a;)V

    const/4 v0, 0x4

    new-array v1, v2, [Ljava/io/Serializable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/avg/tuneup/taskkiller/widget/CloseAllTasksWidgetPlugin;->a(Landroid/content/Context;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/avg/widget/model/a;->a()I

    move-result v1

    invoke-virtual {p3, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return v2
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected e()Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/avg/tuneup/j;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Service class was not set"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "widget_close_all"

    return-object v0
.end method

.method public h()I
    .locals 1

    sget v0, Lcom/avg/a/g;->widget_close_all_item:I

    return v0
.end method

.method public i()I
    .locals 1

    sget v0, Lcom/avg/a/d;->widget_settings_close_all:I

    return v0
.end method

.method public j()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
