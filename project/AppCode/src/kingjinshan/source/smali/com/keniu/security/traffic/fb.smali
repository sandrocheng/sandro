.class final Lcom/keniu/security/traffic/fb;
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
    .line 112
    iput-object p1, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 115
    iget-object v0, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 116
    iget-object v0, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->f(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->g(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->f(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->h(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->finish()V

    .line 136
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->g(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    const-string v1, "\u8bf7\u9009\u62e9\u6240\u5728\u7701\u5e02"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/SafeViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 127
    iget-object v0, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->b()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/SafeViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 128
    iget-object v0, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->showNext()V

    .line 129
    iget-object v0, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0, v2}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Z)Z

    .line 131
    iget-object v0, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 132
    iget-object v0, p0, Lcom/keniu/security/traffic/fb;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/fe;

    .line 134
    invoke-virtual {p0}, Lcom/keniu/security/traffic/fe;->notifyDataSetChanged()V

    goto :goto_0
.end method
