.class final Lcom/keniu/security/g/q;
.super Landroid/os/Handler;
.source "UpdateUIHelper.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/g/n;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/n;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/keniu/security/g/q;->a:Lcom/keniu/security/g/n;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 579
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/keniu/security/g/q;->a:Lcom/keniu/security/g/n;

    invoke-static {v0}, Lcom/keniu/security/g/n;->b(Lcom/keniu/security/g/n;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/keniu/security/g/q;->a:Lcom/keniu/security/g/n;

    iget-object v0, v0, Lcom/keniu/security/g/n;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->b(Lcom/keniu/security/g/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/keniu/security/g/q;->a:Lcom/keniu/security/g/n;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 586
    :cond_0
    return-void
.end method
