.class final Lbry;
.super Ljava/lang/Object;

# interfaces
.implements Lsq$a;


# instance fields
.field private synthetic a:Lbrx;


# direct methods
.method constructor <init>(Lbrx;)V
    .locals 0

    iput-object p1, p0, Lbry;->a:Lbrx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    const v5, 0x7f0b02fd

    const v4, 0x7f0b02e0

    const/16 v3, 0xb

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resultType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbry;->a:Lbrx;

    iget-object v1, v1, Lbrx;->a:Lbrp;

    invoke-static {v1}, Lbrp;->V(Lbrp;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbry;->a:Lbrx;

    iget-object v1, v1, Lbrx;->a:Lbrp;

    invoke-static {v1}, Lbrp;->W(Lbrp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbry;->a:Lbrx;

    iget-object v1, v1, Lbrx;->a:Lbrp;

    invoke-static {v1}, Lbrp;->X(Lbrp;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->getVirusBaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "msg_virus_text"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbry;->a:Lbrx;

    iget-object v0, v0, Lbrx;->a:Lbrp;

    invoke-static {v0}, Lbrp;->D(Lbrp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lbry;->a:Lbrx;

    iget-object v0, v0, Lbrx;->a:Lbrp;

    invoke-static {v0}, Lbrp;->Y(Lbrp;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbry;->a:Lbrx;

    iget-object v1, v1, Lbrx;->a:Lbrp;

    invoke-static {v1}, Lbrp;->Z(Lbrp;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbry;->a:Lbrx;

    iget-object v1, v1, Lbrx;->a:Lbrp;

    invoke-static {v1}, Lbrp;->aa(Lbrp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbry;->a:Lbrx;

    iget-object v1, v1, Lbrx;->a:Lbrp;

    invoke-static {v1}, Lbrp;->ab(Lbrp;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->getVirusBaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "msg_virus_text"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbry;->a:Lbrx;

    iget-object v0, v0, Lbrx;->a:Lbrp;

    invoke-static {v0}, Lbrp;->D(Lbrp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lbry;->a:Lbrx;

    iget-object v0, v0, Lbrx;->a:Lbrp;

    invoke-static {v0}, Lbrp;->ac(Lbrp;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lha;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
