.class public Lcom/tencent/tmsecure/module/market/SpecialCategory;
.super Ljava/lang/Object;


# instance fields
.field public categoryEx:Lcom/tencent/tmsecure/module/market/CategoryEx;

.field public softSimpleInfoExList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryEx()Lcom/tencent/tmsecure/module/market/CategoryEx;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/SpecialCategory;->categoryEx:Lcom/tencent/tmsecure/module/market/CategoryEx;

    return-object v0
.end method

.method public getSoftSimpleInfoExList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/SpecialCategory;->softSimpleInfoExList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCategoryEx(Lcom/tencent/tmsecure/module/market/CategoryEx;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/market/SpecialCategory;->categoryEx:Lcom/tencent/tmsecure/module/market/CategoryEx;

    return-void
.end method

.method public setSoftSimpleInfoExList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/tmsecure/module/market/SpecialCategory;->softSimpleInfoExList:Ljava/util/ArrayList;

    return-void
.end method
