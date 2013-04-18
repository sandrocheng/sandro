.class final Lcom/keniu/security/traffic/fa;
.super Ljava/lang/Object;
.source "TrafficZiFeiSubProviceSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->finish()V

    .line 108
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->c()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/SafeViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 97
    iget-object v0, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->d()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/SafeViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 98
    iget-object v0, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->showPrevious()V

    .line 99
    iget-object v0, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Z)Z

    .line 100
    iget-object v0, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b0513

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 101
    iget-object v0, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b079c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 103
    iget-object v0, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 104
    iget-object v0, p0, Lcom/keniu/security/traffic/fa;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/fe;

    .line 106
    invoke-virtual {p0}, Lcom/keniu/security/traffic/fe;->notifyDataSetChanged()V

    goto :goto_0
.end method
