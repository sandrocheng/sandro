.class public interface abstract Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;
.end method

.method public abstract dataMonitor()Lcom/tencent/tmsecure/module/aresengine/DataMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
            "<TT;>;"
        }
    .end annotation
.end method
