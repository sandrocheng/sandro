.class public Lcom/avg/tuneup/storage/widget/StorageWidgetPlugin;
.super Lcom/avg/widget/model/plugin/WidgetPlugin;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/avg/tuneup/storage/widget/a;

    invoke-direct {v0}, Lcom/avg/tuneup/storage/widget/a;-><init>()V

    sput-object v0, Lcom/avg/tuneup/storage/widget/StorageWidgetPlugin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/avg/tuneup/storage/widget/b;->a:Lcom/avg/tuneup/storage/widget/b;

    invoke-direct {p0, v0, v1, v1}, Lcom/avg/widget/model/plugin/WidgetPlugin;-><init>(Lcom/avg/widget/model/plugin/a;ZZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/avg/widget/model/plugin/WidgetPlugin;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/storage/widget/b;

    iput-object v0, p0, Lcom/avg/tuneup/storage/widget/StorageWidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    return-void
.end method

.method private k()[Ljava/io/Serializable;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/Serializable;

    const-string v1, "EXTRA_GOTO"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/io/Serializable;

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/avg/widget/model/a;Landroid/widget/RemoteViews;Z)Z
    .locals 2

    invoke-virtual {p0, p3, p2, p1}, Lcom/avg/tuneup/storage/widget/StorageWidgetPlugin;->a(Landroid/widget/RemoteViews;Lcom/avg/widget/model/a;Landroid/content/Context;)V

    invoke-virtual {p0, p3, p2}, Lcom/avg/tuneup/storage/widget/StorageWidgetPlugin;->a(Landroid/widget/RemoteViews;Lcom/avg/widget/model/a;)V

    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/avg/tuneup/storage/widget/StorageWidgetPlugin;->k()[Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avg/tuneup/storage/widget/StorageWidgetPlugin;->a(Landroid/content/Context;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/avg/widget/model/a;->a()I

    move-result v1

    invoke-virtual {p3, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/avg/tuneup/storage/StorageActivity;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0xa

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

    const-string v0, "widget_storage"

    return-object v0
.end method

.method public h()I
    .locals 1

    sget v0, Lcom/avg/a/g;->performance_storage:I

    return v0
.end method

.method public i()I
    .locals 1

    sget v0, Lcom/avg/a/d;->widget_settings_storage:I

    return v0
.end method

.method public j()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
