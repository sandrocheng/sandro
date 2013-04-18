.class final Lcom/ijinshan/kinghelper/firewall/dk;
.super Ljava/lang/Object;
.source "ServiceSmsGroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/dk;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 453
    packed-switch p2, :pswitch_data_0

    .line 463
    :goto_0
    return-void

    .line 455
    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dk;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->e(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V

    goto :goto_0

    .line 458
    :pswitch_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dk;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->a(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)Lcom/ijinshan/kinghelper/firewall/do;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dk;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/do;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 459
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dk;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/keniu/security/util/af;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :pswitch_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dk;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V

    goto :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
