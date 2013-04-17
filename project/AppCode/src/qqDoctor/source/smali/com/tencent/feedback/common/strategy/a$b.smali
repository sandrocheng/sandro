.class public interface abstract Lcom/tencent/feedback/common/strategy/a$b;
.super Ljava/lang/Object;
.source "StrategyHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/common/strategy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract onInitByQuery()V
.end method

.method public abstract onLocalVersionChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSecurityStrategyChange(Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;)V
.end method

.method public abstract onUploadStrategyChange(Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V
.end method
