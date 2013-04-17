.class public interface abstract Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper$Pair;
    }
.end annotation


# virtual methods
.method public abstract getAllAutoBootApps()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper$Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract setAutoBootEnable(Ljava/lang/String;Z)Z
.end method
