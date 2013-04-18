.class final Lcom/keniu/security/traffic/bb;
.super Ljava/lang/Object;
.source "TrafficMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/az;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/az;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/keniu/security/traffic/bb;->a:Lcom/keniu/security/traffic/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 808
    iget-object v0, p0, Lcom/keniu/security/traffic/bb;->a:Lcom/keniu/security/traffic/az;

    iget-object v0, v0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->l(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/keniu/security/traffic/bb;->a:Lcom/keniu/security/traffic/az;

    iget-object v0, v0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->l(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/keniu/security/traffic/bb;->a:Lcom/keniu/security/traffic/az;

    iget-object v0, v0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->l(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/bb;->a:Lcom/keniu/security/traffic/az;

    iget-object v0, v0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Lcom/keniu/security/traffic/TrafficMainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 816
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 817
    iget-object v1, p0, Lcom/keniu/security/traffic/bb;->a:Lcom/keniu/security/traffic/az;

    iget-object v1, v1, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const-class v2, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 819
    iget-object v1, p0, Lcom/keniu/security/traffic/bb;->a:Lcom/keniu/security/traffic/az;

    iget-object v1, v1, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->n(Lcom/keniu/security/traffic/TrafficMainActivity;)Lcom/keniu/security/traffic/br;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 820
    const-string v1, "month_used"

    iget-object v2, p0, Lcom/keniu/security/traffic/bb;->a:Lcom/keniu/security/traffic/az;

    iget-object v2, v2, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->n(Lcom/keniu/security/traffic/TrafficMainActivity;)Lcom/keniu/security/traffic/br;

    move-result-object v2

    iget-wide v2, v2, Lcom/keniu/security/traffic/br;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 822
    :cond_2
    iget-object v1, p0, Lcom/keniu/security/traffic/bb;->a:Lcom/keniu/security/traffic/az;

    iget-object v1, v1, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 823
    return-void
.end method
