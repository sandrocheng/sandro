.class final Lcom/tencent/feedback/common/strategy/c;
.super Ljava/lang/Object;
.source "StrategyHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/feedback/common/strategy/a;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/common/strategy/a;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/tencent/feedback/common/strategy/c;->a:Lcom/tencent/feedback/common/strategy/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 385
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/c;->a:Lcom/tencent/feedback/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/feedback/common/strategy/a;->e()[Lcom/tencent/feedback/common/strategy/a$b;

    move-result-object v1

    .line 387
    if-eqz v1, :cond_0

    .line 389
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 390
    iget-object v4, p0, Lcom/tencent/feedback/common/strategy/c;->a:Lcom/tencent/feedback/common/strategy/a;

    invoke-static {v4}, Lcom/tencent/feedback/common/strategy/a;->d(Lcom/tencent/feedback/common/strategy/a;)Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tencent/feedback/common/strategy/a$b;->onSecurityStrategyChange(Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;)V

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method
