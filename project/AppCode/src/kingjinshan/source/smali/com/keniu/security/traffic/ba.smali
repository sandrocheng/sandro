.class final Lcom/keniu/security/traffic/ba;
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
    .line 774
    iput-object p1, p0, Lcom/keniu/security/traffic/ba;->a:Lcom/keniu/security/traffic/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 779
    iget-object v0, p0, Lcom/keniu/security/traffic/ba;->a:Lcom/keniu/security/traffic/az;

    iget-object v0, v0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->l(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/keniu/security/traffic/ba;->a:Lcom/keniu/security/traffic/az;

    iget-object v0, v0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->l(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/keniu/security/traffic/ba;->a:Lcom/keniu/security/traffic/az;

    iget-object v0, v0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->l(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/ba;->a:Lcom/keniu/security/traffic/az;

    iget-object v0, v0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Lcom/keniu/security/traffic/TrafficMainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/ba;->a:Lcom/keniu/security/traffic/az;

    iget-object v0, v0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/keniu/security/traffic/ba;->a:Lcom/keniu/security/traffic/az;

    iget-object v0, v0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const-string v1, "8"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/keniu/security/traffic/ba;->a:Lcom/keniu/security/traffic/az;

    iget-object v0, v0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->m(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    .line 796
    return-void
.end method
