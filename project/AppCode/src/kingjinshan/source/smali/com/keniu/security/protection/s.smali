.class final Lcom/keniu/security/protection/s;
.super Ljava/lang/Thread;
.source "PreventTheftSmsSentMonitor.java"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/keniu/security/protection/x;

.field final synthetic c:Lcom/keniu/security/protection/q;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/q;ILcom/keniu/security/protection/x;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/keniu/security/protection/s;->c:Lcom/keniu/security/protection/q;

    iput p2, p0, Lcom/keniu/security/protection/s;->a:I

    iput-object p3, p0, Lcom/keniu/security/protection/s;->b:Lcom/keniu/security/protection/x;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 79
    const-wide/16 v0, 0x4e20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/protection/s;->c:Lcom/keniu/security/protection/q;

    invoke-static {v0}, Lcom/keniu/security/protection/q;->a(Lcom/keniu/security/protection/q;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/protection/s;->a:I

    iget-object v2, p0, Lcom/keniu/security/protection/s;->b:Lcom/keniu/security/protection/x;

    iget-object v2, v2, Lcom/keniu/security/protection/x;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/keniu/security/protection/s;->b:Lcom/keniu/security/protection/x;

    iget-object v3, v3, Lcom/keniu/security/protection/x;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/keniu/security/protection/s;->b:Lcom/keniu/security/protection/x;

    iget-boolean v4, v4, Lcom/keniu/security/protection/x;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 85
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 86
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/keniu/security/protection/s;->c:Lcom/keniu/security/protection/q;

    invoke-static {v1}, Lcom/keniu/security/protection/q;->b(Lcom/keniu/security/protection/q;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    :cond_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
