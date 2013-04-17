.class final Lcom/tencent/feedback/c/b;
.super Ljava/lang/Object;
.source "CommonProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/feedback/c/a;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/tencent/feedback/c/b;->a:Lcom/tencent/feedback/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/feedback/c/b;->a:Lcom/tencent/feedback/c/a;

    invoke-virtual {v0}, Lcom/tencent/feedback/c/a;->a()V

    .line 32
    return-void
.end method
