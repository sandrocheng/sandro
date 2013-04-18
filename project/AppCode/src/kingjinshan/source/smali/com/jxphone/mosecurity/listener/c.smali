.class final Lcom/jxphone/mosecurity/listener/c;
.super Ljava/lang/Object;
.source "FirewallCallTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/jxphone/mosecurity/listener/c;->a:Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/c;->a:Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;

    invoke-static {v0}, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->a(Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->c(Landroid/content/Context;Z)V

    .line 48
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/c;->a:Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;

    invoke-static {v0}, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->b(Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jxphone/mosecurity/listener/e;->a(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/c;->a:Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;

    invoke-static {v0}, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->a(Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/listener/c;->a:Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;

    invoke-static {v1}, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->b(Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/util/af;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->a()Lcom/keniu/security/commui/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/commui/b;->c()V

    .line 51
    return-void
.end method
