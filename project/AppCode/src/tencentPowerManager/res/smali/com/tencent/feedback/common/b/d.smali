.class final Lcom/tencent/feedback/common/b/d;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field private synthetic a:Lcom/tencent/feedback/common/b/e;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/common/b/b;Lcom/tencent/feedback/common/b/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p2, p0, Lcom/tencent/feedback/common/b/d;->a:Lcom/tencent/feedback/common/b/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/tencent/feedback/common/b/d;->a:Lcom/tencent/feedback/common/b/e;

    invoke-interface {v0}, Lcom/tencent/feedback/common/b/e;->onInitByQuery()V

    .line 180
    return-void
.end method
