.class final Lcom/keniu/security/traffic/ek;
.super Ljava/lang/Object;
.source "TrafficZiFeiSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/keniu/security/traffic/ek;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/ep;

    iget-object v0, v0, Lcom/keniu/security/traffic/ep;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 469
    iget-object v0, p0, Lcom/keniu/security/traffic/ek;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->z(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 470
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/keniu/security/traffic/ek;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 471
    iget-object v2, p0, Lcom/keniu/security/traffic/ek;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/keniu/security/traffic/ek;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v3, p0, Lcom/keniu/security/traffic/ek;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    iget-object v2, p0, Lcom/keniu/security/traffic/ek;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keniu/security/util/SafeViewFlipper;->showNext()V

    .line 470
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/ek;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 478
    return-void
.end method
