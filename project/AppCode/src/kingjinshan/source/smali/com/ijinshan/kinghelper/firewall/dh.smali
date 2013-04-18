.class final Lcom/ijinshan/kinghelper/firewall/dh;
.super Landroid/os/Handler;
.source "ServiceSmsGroupActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/dh;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dh;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->a(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)Lcom/ijinshan/kinghelper/firewall/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->f()V

    .line 184
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dh;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->b(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)Z

    .line 185
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dh;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->a(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)Lcom/ijinshan/kinghelper/firewall/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->notifyDataSetChanged()V

    .line 186
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dh;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    const v1, 0x7f0b0174

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    return-void
.end method
