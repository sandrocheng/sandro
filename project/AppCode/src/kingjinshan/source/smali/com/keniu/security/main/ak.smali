.class final Lcom/keniu/security/main/ak;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/keniu/security/main/ak;->b:Lcom/keniu/security/main/MainActivity;

    iput-object p2, p0, Lcom/keniu/security/main/ak;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1543
    iget-object v0, p0, Lcom/keniu/security/main/ak;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/d/k;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/k;

    move-result-object v0

    .line 1545
    iget-object v1, p0, Lcom/keniu/security/main/ak;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1547
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1548
    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/d/k;->a(Ljava/lang/String;)I

    move-result v0

    .line 1550
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/main/ak;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 1551
    packed-switch v0, :pswitch_data_0

    .line 1579
    :goto_1
    return-void

    .line 1553
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/main/ak;->b:Lcom/keniu/security/main/MainActivity;

    iget-object v1, p0, Lcom/keniu/security/main/ak;->b:Lcom/keniu/security/main/MainActivity;

    const v2, 0x7f0b0614

    invoke-virtual {v1, v2}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1558
    iget-object v0, p0, Lcom/keniu/security/main/ak;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearComposingText()V

    .line 1559
    iget-object v0, p0, Lcom/keniu/security/main/ak;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1560
    iget-object v0, p0, Lcom/keniu/security/main/ak;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {p1, v3}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/DialogInterface;Z)V

    .line 1561
    iget-object v0, p0, Lcom/keniu/security/main/ak;->b:Lcom/keniu/security/main/MainActivity;

    iput-boolean v3, v0, Lcom/keniu/security/main/MainActivity;->g:Z

    goto :goto_1

    .line 1565
    :pswitch_1
    invoke-virtual {v1, v3}, Lcom/keniu/security/a;->c(Z)V

    .line 1566
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1567
    iget-object v0, p0, Lcom/keniu/security/main/ak;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->r(Lcom/keniu/security/main/MainActivity;)V

    .line 1568
    iget-object v0, p0, Lcom/keniu/security/main/ak;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {p1, v4}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/DialogInterface;Z)V

    .line 1569
    iget-object v0, p0, Lcom/keniu/security/main/ak;->b:Lcom/keniu/security/main/MainActivity;

    iput-boolean v4, v0, Lcom/keniu/security/main/MainActivity;->g:Z

    goto :goto_1

    .line 1573
    :pswitch_2
    invoke-virtual {v1, v4}, Lcom/keniu/security/a;->c(Z)V

    .line 1574
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1575
    iget-object v0, p0, Lcom/keniu/security/main/ak;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {p1, v4}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/DialogInterface;Z)V

    .line 1576
    iget-object v0, p0, Lcom/keniu/security/main/ak;->b:Lcom/keniu/security/main/MainActivity;

    iput-boolean v4, v0, Lcom/keniu/security/main/MainActivity;->g:Z

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    .line 1551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
