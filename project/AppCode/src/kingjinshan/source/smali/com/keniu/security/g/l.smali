.class final Lcom/keniu/security/g/l;
.super Landroid/os/Handler;
.source "UpdateUIHelper.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/g/i;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/i;)V
    .locals 0
    .parameter

    .prologue
    .line 767
    iput-object p1, p0, Lcom/keniu/security/g/l;->a:Lcom/keniu/security/g/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 770
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 772
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 773
    iget-object v1, p0, Lcom/keniu/security/g/l;->a:Lcom/keniu/security/g/i;

    iget-object v1, v1, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v1}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hoi/widget/q;->a(I)V

    goto :goto_0

    .line 776
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 777
    iget-object v1, p0, Lcom/keniu/security/g/l;->a:Lcom/keniu/security/g/i;

    iget-object v1, v1, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v1}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hoi/widget/q;->b(I)V

    goto :goto_0

    .line 780
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/g/l;->a:Lcom/keniu/security/g/i;

    invoke-static {v0}, Lcom/keniu/security/g/i;->b(Lcom/keniu/security/g/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/keniu/security/g/l;->a:Lcom/keniu/security/g/i;

    iget-object v0, v0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->b(Lcom/keniu/security/g/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/keniu/security/g/l;->a:Lcom/keniu/security/g/i;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
