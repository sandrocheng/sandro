.class final Lcom/tencent/feedback/eup/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/feedback/eup/d;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/eup/d;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tencent/feedback/eup/e;->a:Lcom/tencent/feedback/eup/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/feedback/eup/e;->a:Lcom/tencent/feedback/eup/d;

    iget-object v0, v0, Lcom/tencent/feedback/eup/d;->a:Lcom/tencent/feedback/eup/ConfirmDialog;

    const-wide/16 v1, -0x1

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/feedback/common/e;->a(Landroid/content/Context;JJ)I

    move-result v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear eup datas num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 86
    return-void
.end method
