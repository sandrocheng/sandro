.class public final Lbua;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/aresengine/DataMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/tmsecure/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/aresengine/DataMonitor;Lcom/tencent/tmsecure/module/aresengine/DataFilter;Lcom/tencent/tmsecure/module/aresengine/DataHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
            "<TT;>;",
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<TT;>;",
            "Lcom/tencent/tmsecure/module/aresengine/DataHandler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbua;->a:Lcom/tencent/tmsecure/module/aresengine/DataMonitor;

    iput-object p2, p0, Lbua;->b:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    iput-object p3, p0, Lbua;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    return-void
.end method


# virtual methods
.method public final dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lbua;->b:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    return-object v0
.end method

.method public final dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;
    .locals 1

    iget-object v0, p0, Lbua;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    return-object v0
.end method

.method public final dataMonitor()Lcom/tencent/tmsecure/module/aresengine/DataMonitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lbua;->a:Lcom/tencent/tmsecure/module/aresengine/DataMonitor;

    return-object v0
.end method
