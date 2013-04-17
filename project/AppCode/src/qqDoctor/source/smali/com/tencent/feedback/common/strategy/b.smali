.class final Lcom/tencent/feedback/common/strategy/b;
.super Ljava/lang/Object;
.source "StrategyHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/feedback/common/strategy/a$b;

.field private synthetic b:Lcom/tencent/feedback/common/strategy/a;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/common/strategy/a;Lcom/tencent/feedback/common/strategy/a$b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/tencent/feedback/common/strategy/b;->b:Lcom/tencent/feedback/common/strategy/a;

    iput-object p2, p0, Lcom/tencent/feedback/common/strategy/b;->a:Lcom/tencent/feedback/common/strategy/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 270
    const-string v0, "new listener async init query called!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/b;->b:Lcom/tencent/feedback/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/feedback/common/strategy/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/b;->a:Lcom/tencent/feedback/common/strategy/a$b;

    iget-object v1, p0, Lcom/tencent/feedback/common/strategy/b;->b:Lcom/tencent/feedback/common/strategy/a;

    invoke-static {v1}, Lcom/tencent/feedback/common/strategy/a;->b(Lcom/tencent/feedback/common/strategy/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/feedback/common/strategy/b;->b:Lcom/tencent/feedback/common/strategy/a;

    invoke-static {v2}, Lcom/tencent/feedback/common/strategy/a;->c(Lcom/tencent/feedback/common/strategy/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/feedback/common/strategy/a$b;->onLocalVersionChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/b;->a:Lcom/tencent/feedback/common/strategy/a$b;

    invoke-interface {v0}, Lcom/tencent/feedback/common/strategy/a$b;->onInitByQuery()V

    .line 277
    const-string v0, "new listener async init query called! end!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 278
    return-void
.end method
