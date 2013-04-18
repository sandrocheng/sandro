.class final Lcom/ijinshan/kinghelper/firewall/ag;
.super Ljava/lang/Object;
.source "FirewallQuerySpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ag;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/ag;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ijinshan/kinghelper/firewall/ag;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ag;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ag;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ag;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallQuerySpActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ag;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->aP()V

    .line 122
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ag;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->b(Landroid/content/Context;)V

    .line 123
    return-void
.end method
