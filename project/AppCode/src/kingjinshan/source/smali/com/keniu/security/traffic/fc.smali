.class final Lcom/keniu/security/traffic/fc;
.super Ljava/lang/Object;
.source "TrafficZiFeiSubProviceSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/fg;

    iget-object v0, v0, Lcom/keniu/security/traffic/fg;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->j(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v2, v5

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->k(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v2, v1, :cond_4

    .line 152
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->k(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    iget-object v3, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->k(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v1, v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1, v2}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;I)I

    .line 155
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    iget-object v3, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->g(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcn/com/wali/zft/plugin;->getcities(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 158
    iget-object v3, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->l(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v6, :cond_1

    .line 160
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->f(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    iget-object v3, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->g(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->f(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    iget-object v3, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    iput-object v3, v1, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-virtual {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->finish()V

    .line 151
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->h(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    iget-object v3, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v1

    iget-object v3, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/keniu/security/util/SafeViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 173
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v1

    iget-object v3, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->b()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/keniu/security/util/SafeViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 174
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/util/SafeViewFlipper;->showNext()V

    goto :goto_1

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    iget-object v3, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v4}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->h(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    iget-object v3, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 180
    iget-object v0, p0, Lcom/keniu/security/traffic/fc;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/fe;

    .line 182
    invoke-virtual {p0}, Lcom/keniu/security/traffic/fe;->notifyDataSetChanged()V

    .line 183
    return-void
.end method
