.class final Lcom/ijinshan/kinghelper/firewall/et;
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
    .line 568
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/et;->a:Lcom/ijinshan/kinghelper/firewall/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/et;->a:Lcom/ijinshan/kinghelper/firewall/er;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const-string v1, "\u89e3\u5bc6\u5907\u4efd\u6587\u4ef6\u5931\u8d25!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 572
    return-void
.end method
