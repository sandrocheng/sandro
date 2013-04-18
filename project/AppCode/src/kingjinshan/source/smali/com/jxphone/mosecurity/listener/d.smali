.class final Lcom/jxphone/mosecurity/listener/d;
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
    .line 53
    iput-object p1, p0, Lcom/jxphone/mosecurity/listener/d;->a:Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/d;->a:Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;

    invoke-static {v0}, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->a(Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->c(Landroid/content/Context;Z)V

    .line 58
    invoke-static {}, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->a()Lcom/keniu/security/commui/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/commui/b;->c()V

    .line 59
    return-void
.end method
