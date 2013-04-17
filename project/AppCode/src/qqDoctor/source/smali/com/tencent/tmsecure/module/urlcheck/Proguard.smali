.class public final Lcom/tencent/tmsecure/module/urlcheck/Proguard;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callAllMethods()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->checkUrl(Ljava/lang/String;)LQQPIM/UrlCheckResponse;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->checkUrlEx(Ljava/util/List;)Ljava/util/Map;

    return-void
.end method
