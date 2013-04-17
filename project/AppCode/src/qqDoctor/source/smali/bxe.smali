.class public final Lbxe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;


# instance fields
.field private a:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxe;->a:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    return-void
.end method


# virtual methods
.method public final clearAllCacheData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAllAppPackageStats(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbxe;->a:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getAllAppPackageStats(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getAppPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 1

    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, p1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getFreeMemery()J
    .locals 2

    iget-object v0, p0, Lbxe;->a:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getFreeMemery()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRamSize([I)[Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRamSize([Ljava/lang/String;)[Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;
    .locals 1

    iget-object v0, p0, Lbxe;->a:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getRamSize([Ljava/lang/String;)[Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getTotalMemery()J
    .locals 2

    iget-object v0, p0, Lbxe;->a:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getTotalMemery()J

    move-result-wide v0

    return-wide v0
.end method
