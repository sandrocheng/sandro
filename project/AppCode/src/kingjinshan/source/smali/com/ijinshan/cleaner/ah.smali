.class final Lcom/ijinshan/cleaner/ah;
.super Ljava/lang/Object;
.source "MonitorUninstallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/ijinshan/cleaner/MonitorUninstallActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/ijinshan/cleaner/ah;->b:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    iput-object p2, p0, Lcom/ijinshan/cleaner/ah;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lcom/ijinshan/cleaner/ah;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/ijinshan/cleaner/ah;->b:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-static {v1, v0}, Lcom/keniu/security/protection/ui/ag;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/ijinshan/cleaner/ah;->b:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    iget-object v1, p0, Lcom/ijinshan/cleaner/ah;->b:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    const v2, 0x7f0b0614

    invoke-virtual {v1, v2}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    iget-object v0, p0, Lcom/ijinshan/cleaner/ah;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearComposingText()V

    .line 227
    iget-object v0, p0, Lcom/ijinshan/cleaner/ah;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/ijinshan/cleaner/ah;->b:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-static {p1, v3}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a(Landroid/content/DialogInterface;Z)V

    .line 241
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 231
    iget-object v0, p0, Lcom/ijinshan/cleaner/ah;->b:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->finish()V

    .line 232
    iget-object v0, p0, Lcom/ijinshan/cleaner/ah;->b:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a(Landroid/content/DialogInterface;Z)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/ah;->b:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    iget-object v1, p0, Lcom/ijinshan/cleaner/ah;->b:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    const v2, 0x7f0b0615

    invoke-virtual {v1, v2}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    iget-object v0, p0, Lcom/ijinshan/cleaner/ah;->b:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-static {p1, v3}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a(Landroid/content/DialogInterface;Z)V

    goto :goto_0
.end method
