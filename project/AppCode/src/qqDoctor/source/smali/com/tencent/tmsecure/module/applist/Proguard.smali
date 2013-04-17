.class public final Lcom/tencent/tmsecure/module/applist/Proguard;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callAllMethods()V
    .locals 3

    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    const/4 v1, 0x0

    sget-object v2, LQQPIM/SoftListType;->BLACKLIST_ROM:LQQPIM/SoftListType;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    return-void
.end method
