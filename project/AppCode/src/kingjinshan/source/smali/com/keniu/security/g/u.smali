.class final Lcom/keniu/security/g/u;
.super Landroid/os/Handler;
.source "UpdateUIHelper.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/g/r;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/r;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/keniu/security/g/u;->a:Lcom/keniu/security/g/r;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 133
    :pswitch_1
    iget-object v1, p0, Lcom/keniu/security/g/u;->a:Lcom/keniu/security/g/r;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/keniu/security/g/r;->a(Lcom/keniu/security/g/r;I)I

    .line 134
    iget-object v0, p0, Lcom/keniu/security/g/u;->a:Lcom/keniu/security/g/r;

    iget-object v0, v0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/g/u;->a:Lcom/keniu/security/g/r;

    invoke-static {v1}, Lcom/keniu/security/g/r;->b(Lcom/keniu/security/g/r;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->b(I)V

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/g/u;->a:Lcom/keniu/security/g/r;

    invoke-static {v0}, Lcom/keniu/security/g/r;->c(Lcom/keniu/security/g/r;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/keniu/security/g/u;->a:Lcom/keniu/security/g/r;

    iget-object v0, v0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->b(Lcom/keniu/security/g/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/keniu/security/g/u;->a:Lcom/keniu/security/g/r;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
