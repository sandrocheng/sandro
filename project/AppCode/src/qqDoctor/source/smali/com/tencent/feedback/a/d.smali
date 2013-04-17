.class final Lcom/tencent/feedback/a/d;
.super Ljava/lang/Object;
.source "CountProccessAbs.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/feedback/a/c$a;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/a/c$a;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/tencent/feedback/a/d;->a:Lcom/tencent/feedback/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/tencent/feedback/a/d;->a:Lcom/tencent/feedback/a/c$a;

    invoke-virtual {v0}, Lcom/tencent/feedback/a/c$a;->c()V

    .line 187
    return-void
.end method
