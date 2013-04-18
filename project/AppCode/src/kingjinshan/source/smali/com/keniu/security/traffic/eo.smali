.class final Lcom/keniu/security/traffic/eo;
.super Ljava/lang/Object;
.source "TrafficZiFeiSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/en;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/en;)V
    .locals 0
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/keniu/security/traffic/eo;->a:Lcom/keniu/security/traffic/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 843
    if-eqz p2, :cond_1

    .line 844
    iget-object v0, p0, Lcom/keniu/security/traffic/eo;->a:Lcom/keniu/security/traffic/en;

    iget-object v0, v0, Lcom/keniu/security/traffic/en;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->H(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 845
    iget-object v0, p0, Lcom/keniu/security/traffic/eo;->a:Lcom/keniu/security/traffic/en;

    iget-object v0, v0, Lcom/keniu/security/traffic/en;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/eo;->a:Lcom/keniu/security/traffic/en;

    iget-object v1, v1, Lcom/keniu/security/traffic/en;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->H(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 846
    if-eqz v0, :cond_0

    .line 847
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/eo;->a:Lcom/keniu/security/traffic/en;

    iget-object v0, v0, Lcom/keniu/security/traffic/en;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;I)I

    .line 852
    :cond_1
    return-void
.end method
