.class final Lcom/ijinshan/kinghelper/firewall/es;
.super Ljava/lang/Object;
.source "SmsBackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/er;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/er;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/es;->a:Lcom/ijinshan/kinghelper/firewall/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 549
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/es;->a:Lcom/ijinshan/kinghelper/firewall/er;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const-string v1, "SD\u5361\u6ca1\u6709\u51c6\u5907\u597d!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 550
    return-void
.end method