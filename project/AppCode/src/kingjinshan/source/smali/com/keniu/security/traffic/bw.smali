.class final Lcom/keniu/security/traffic/bw;
.super Ljava/lang/Object;
.source "TrafficSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field final synthetic a:Lcom/keniu/security/util/CustomCheckBoxPreference;

.field final synthetic b:Lcom/keniu/security/traffic/TrafficSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficSettingActivity;Lcom/keniu/security/util/CustomCheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/keniu/security/traffic/bw;->b:Lcom/keniu/security/traffic/TrafficSettingActivity;

    iput-object p2, p0, Lcom/keniu/security/traffic/bw;->a:Lcom/keniu/security/util/CustomCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 587
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/keniu/security/traffic/bw;->b:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iput-boolean v4, v0, Lcom/keniu/security/traffic/y;->a:Z

    .line 590
    iget-object v0, p0, Lcom/keniu/security/traffic/bw;->b:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->c(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/bw;->b:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const v2, 0x7f0b03c0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 593
    iget-object v0, p0, Lcom/keniu/security/traffic/bw;->b:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;)V

    move v0, v4

    .line 641
    :goto_0
    return v0

    .line 599
    :cond_0
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/traffic/bw;->b:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-direct {v0, v1, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 601
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 602
    const v1, 0x7f0b02a6

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 603
    const v1, 0x7f0b042d

    new-instance v2, Lcom/keniu/security/traffic/bx;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/bx;-><init>(Lcom/keniu/security/traffic/bw;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 628
    const v1, 0x7f0b021a

    new-instance v2, Lcom/keniu/security/traffic/by;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/by;-><init>(Lcom/keniu/security/traffic/bw;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 639
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    move v0, v3

    .line 641
    goto :goto_0
.end method
