.class public Lcom/tencent/tccdb/TelNumberLocator;
.super Ljava/lang/Object;


# static fields
.field private static final YELLOW_PAGE_NAME:Ljava/lang/String; = "yd.sdb"

.field private static mInstance:Lcom/tencent/tccdb/TelNumberLocator;


# instance fields
.field private mContext:Landroid/content/Context;

.field private object:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tccdb/TelNumberLocator;->mInstance:Lcom/tencent/tccdb/TelNumberLocator;

    const-string v0, "location_libname"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, La;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tccdb/TelNumberLocator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/tccdb/TelNumberLocator;->newObject(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    iget v0, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tccdb/TelNumberLocator;->reload()V

    return-void
.end method

.method private static native deleteObject(I)V
.end method

.method private static native getAreaCode(I)[I
.end method

.method private static native getAreaCodeLocation(IILjava/lang/StringBuffer;)I
.end method

.method private static native getCityNameList(ILjava/lang/String;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native getCountryCode(I)[I
.end method

.method private static native getCountryCodeLocation(IILjava/lang/StringBuffer;)I
.end method

.method public static declared-synchronized getDefault(Landroid/content/Context;)Lcom/tencent/tccdb/TelNumberLocator;
    .locals 2

    const-class v1, Lcom/tencent/tccdb/TelNumberLocator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tccdb/TelNumberLocator;->mInstance:Lcom/tencent/tccdb/TelNumberLocator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tccdb/TelNumberLocator;

    invoke-direct {v0, p0}, Lcom/tencent/tccdb/TelNumberLocator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/tccdb/TelNumberLocator;->mInstance:Lcom/tencent/tccdb/TelNumberLocator;

    :cond_0
    sget-object v0, Lcom/tencent/tccdb/TelNumberLocator;->mInstance:Lcom/tencent/tccdb/TelNumberLocator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getDetailYellowPages(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native getLocation(ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;Z)I
.end method

.method private static native getMobileNumLocation(IILjava/lang/StringBuffer;)I
.end method

.method private static native getProvinceNameList(ILjava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native getYellowPages(ILjava/util/ArrayList;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native init(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native newObject(Landroid/content/Context;)I
.end method

.method private static native patch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private throwIfError(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Lcom/tencent/tccdb/TelNumberLocatorException;

    invoke-direct {v0, p1}, Lcom/tencent/tccdb/TelNumberLocatorException;-><init>(I)V

    throw v0

    :sswitch_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget v0, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    invoke-static {v0}, Lcom/tencent/tccdb/TelNumberLocator;->deleteObject(I)V

    :cond_0
    return-void
.end method

.method public getAreaCode()[I
    .locals 1

    iget v0, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    invoke-static {v0}, Lcom/tencent/tccdb/TelNumberLocator;->getAreaCode(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAreaCodeLocation(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    invoke-static {v1, p1, v0}, Lcom/tencent/tccdb/TelNumberLocator;->getAreaCodeLocation(IILjava/lang/StringBuffer;)I

    move-result v1

    if-gez v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/tencent/tccdb/TelNumberLocator;->throwIfError(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCityNameList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    invoke-static {v1, p1, v0}, Lcom/tencent/tccdb/TelNumberLocator;->getCityNameList(ILjava/lang/String;Ljava/util/ArrayList;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/tccdb/TelNumberLocator;->throwIfError(I)V

    return-object v0
.end method

.method public getCountryCode()[I
    .locals 1

    iget v0, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    invoke-static {v0}, Lcom/tencent/tccdb/TelNumberLocator;->getCountryCode(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getCountryCodeLocation(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    invoke-static {v1, p1, v0}, Lcom/tencent/tccdb/TelNumberLocator;->getCountryCodeLocation(IILjava/lang/StringBuffer;)I

    move-result v1

    if-gez v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/tencent/tccdb/TelNumberLocator;->throwIfError(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDetailYellowPages(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/tencent/tccdb/TelNumberLocator;->getDetailYellowPages(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/tccdb/TelNumberLocator;->throwIfError(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/tencent/tccdb/TelNumberLocator;->getLocation(ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;Z)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const-string v1, ""

    invoke-virtual {p1, v6, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const-string v1, ""

    invoke-virtual {p2, v6, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const-string v1, ""

    invoke-virtual {p3, v6, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/tencent/tccdb/TelNumberLocator;->throwIfError(I)V

    goto :goto_0
.end method

.method public getMobileNumLocation(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    invoke-static {v1, p1, v0}, Lcom/tencent/tccdb/TelNumberLocator;->getMobileNumLocation(IILjava/lang/StringBuffer;)I

    move-result v1

    if-gez v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/tencent/tccdb/TelNumberLocator;->throwIfError(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProvinceNameList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    invoke-static {v1, v0}, Lcom/tencent/tccdb/TelNumberLocator;->getProvinceNameList(ILjava/util/ArrayList;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/tccdb/TelNumberLocator;->throwIfError(I)V

    return-object v0
.end method

.method public getYellowPages(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    invoke-static {v0, p1, p2}, Lcom/tencent/tccdb/TelNumberLocator;->getYellowPages(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/tccdb/TelNumberLocator;->throwIfError(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public patchLocation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tccdb/TelNumberLocator;->mContext:Landroid/content/Context;

    const-string v1, "nldb.sdb"

    invoke-static {v0, v1}, Leu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    invoke-static {v1, v0, p1, p2}, Lcom/tencent/tccdb/TelNumberLocator;->patch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public reload()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tccdb/TelNumberLocator;->mContext:Landroid/content/Context;

    const-string v1, "nldb.sdb"

    invoke-static {v0, v1}, Leu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tccdb/TelNumberLocator;->mContext:Landroid/content/Context;

    const-string v2, "yd.sdb"

    invoke-static {v1, v2}, Leu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget v2, p0, Lcom/tencent/tccdb/TelNumberLocator;->object:I

    invoke-static {v2, v0, v1}, Lcom/tencent/tccdb/TelNumberLocator;->init(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/tccdb/TelNumberLocator;->throwIfError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
