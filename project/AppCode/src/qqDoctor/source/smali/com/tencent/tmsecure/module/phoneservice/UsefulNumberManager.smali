.class public final Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbxn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllYellowNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;->a:Lbxn;

    invoke-virtual {v0}, Lbxn;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getAllYellowNumbersWithGroup()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;->a:Lbxn;

    iget-object v0, v0, Lbxn;->a:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbxn;

    invoke-direct {v0}, Lbxn;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;->a:Lbxn;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;->a:Lbxn;

    invoke-virtual {v0, p1}, Lbxn;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;->a:Lbxn;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
