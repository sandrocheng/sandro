.class final Lcom/ijinshan/kinghelper/firewall/af;
.super Ljava/lang/Object;
.source "FirewallQuerySpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallQuerySpActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallQuerySpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/af;->a:Lcom/ijinshan/kinghelper/firewall/FirewallQuerySpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/af;->a:Lcom/ijinshan/kinghelper/firewall/FirewallQuerySpActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallQuerySpActivity;->a(Landroid/content/Context;Z)V

    .line 39
    return-void
.end method
