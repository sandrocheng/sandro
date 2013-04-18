.class final Lcom/ijinshan/kinghelper/firewall/ea;
.super Landroid/os/Handler;
.source "ServicesSmsListActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ea;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 253
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ea;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->a(Z)V

    .line 254
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ea;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    const v1, 0x7f0b0174

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    return-void
.end method
