.class final Lcom/keniu/security/traffic/cd;
.super Ljava/lang/Object;
.source "TrafficSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/keniu/security/traffic/cd;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 769
    iget-object v0, p0, Lcom/keniu/security/traffic/cd;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/keniu/security/traffic/cd;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->g(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/util/CustomCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/CustomCheckBoxPreference;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/keniu/security/traffic/cd;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v3, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->a(ZLandroid/content/Context;)V

    .line 818
    :goto_0
    return v3

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/cd;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->h(Lcom/keniu/security/traffic/TrafficSettingActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/keniu/security/traffic/cd;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficSettingActivity;->a(ZLandroid/content/Context;)V

    goto :goto_0

    .line 784
    :cond_1
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/traffic/cd;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-direct {v0, v1, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 786
    const v1, 0x7f0b0343

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 787
    const v1, 0x7f0b0321

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 788
    const v1, 0x7f0b0322

    new-instance v2, Lcom/keniu/security/traffic/ce;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/ce;-><init>(Lcom/keniu/security/traffic/cd;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 800
    const v1, 0x7f0b03aa

    new-instance v2, Lcom/keniu/security/traffic/cf;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/cf;-><init>(Lcom/keniu/security/traffic/cd;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 812
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto :goto_0
.end method
