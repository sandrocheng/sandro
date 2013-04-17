.class final Lcom/tencent/feedback/c/g;
.super Ljava/lang/Object;
.source "RealTimeProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/feedback/c/f;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/c/f;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/feedback/c/g;->a:Lcom/tencent/feedback/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/feedback/c/g;->a:Lcom/tencent/feedback/c/f;

    invoke-virtual {v0}, Lcom/tencent/feedback/c/f;->b()V

    .line 42
    return-void
.end method
