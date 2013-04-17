.class public final Lcom/tencent/tmsecure/module/tools/SingletonManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbzb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tencent/tmsecure/module/tools/ISingleton;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/SingletonManager;->a:Lbzb;

    invoke-virtual {v0, p1}, Lbzb;->a(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbzb;

    invoke-direct {v0}, Lbzb;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/tools/SingletonManager;->a:Lbzb;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/SingletonManager;->a:Lbzb;

    invoke-virtual {v0, p1}, Lbzb;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/SingletonManager;->a:Lbzb;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
