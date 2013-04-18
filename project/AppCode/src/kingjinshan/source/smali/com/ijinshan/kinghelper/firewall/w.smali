.class final Lcom/ijinshan/kinghelper/firewall/w;
.super Ljava/lang/Object;
.source "FirewallDeskSMSActivityApiLevel4.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/w;->b:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    iput p2, p0, Lcom/ijinshan/kinghelper/firewall/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/w;->b:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/w;->a:I

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->b(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;I)V

    .line 730
    return-void
.end method
