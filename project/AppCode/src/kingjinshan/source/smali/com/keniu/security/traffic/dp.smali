.class final Lcom/keniu/security/traffic/dp;
.super Ljava/lang/Object;
.source "TrafficWarningDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficWarningDialog;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficWarningDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/keniu/security/traffic/dp;->a:Lcom/keniu/security/traffic/TrafficWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/keniu/security/traffic/dp;->a:Lcom/keniu/security/traffic/TrafficWarningDialog;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->a(Lcom/keniu/security/traffic/TrafficWarningDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u672c\u6708\u5269\u4f59\u6d41\u91cf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/keniu/security/traffic/dp;->a:Lcom/keniu/security/traffic/TrafficWarningDialog;

    const-string v1, "2_2"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/keniu/security/traffic/dp;->a:Lcom/keniu/security/traffic/TrafficWarningDialog;

    const-class v2, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/keniu/security/traffic/dp;->a:Lcom/keniu/security/traffic/TrafficWarningDialog;

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->startActivity(Landroid/content/Intent;)V

    .line 106
    iget-object v0, p0, Lcom/keniu/security/traffic/dp;->a:Lcom/keniu/security/traffic/TrafficWarningDialog;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->finish()V

    .line 108
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/dp;->a:Lcom/keniu/security/traffic/TrafficWarningDialog;

    const-string v1, "2_3"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
