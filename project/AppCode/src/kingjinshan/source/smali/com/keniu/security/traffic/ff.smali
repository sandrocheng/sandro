.class final Lcom/keniu/security/traffic/ff;
.super Ljava/lang/Object;
.source "TrafficZiFeiSubProviceSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/fe;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/fe;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/keniu/security/traffic/ff;->a:Lcom/keniu/security/traffic/fe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 303
    if-eqz p2, :cond_1

    .line 304
    iget-object v0, p0, Lcom/keniu/security/traffic/ff;->a:Lcom/keniu/security/traffic/fe;

    iget-object v0, v0, Lcom/keniu/security/traffic/fe;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->o(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/keniu/security/traffic/ff;->a:Lcom/keniu/security/traffic/fe;

    iget-object v0, v0, Lcom/keniu/security/traffic/fe;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ff;->a:Lcom/keniu/security/traffic/fe;

    iget-object v1, v1, Lcom/keniu/security/traffic/fe;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->o(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 306
    if-eqz v0, :cond_0

    .line 307
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/ff;->a:Lcom/keniu/security/traffic/fe;

    iget-object v0, v0, Lcom/keniu/security/traffic/fe;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;I)I

    .line 312
    :cond_1
    return-void
.end method
