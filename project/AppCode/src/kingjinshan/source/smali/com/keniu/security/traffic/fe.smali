.class final Lcom/keniu/security/traffic/fe;
.super Landroid/widget/BaseAdapter;
.source "TrafficZiFeiSubProviceSettingActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;


# direct methods
.method public constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/keniu/security/traffic/fe;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 271
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    .line 273
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/keniu/security/traffic/fe;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->j(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 332
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 283
    if-nez p2, :cond_2

    .line 286
    new-instance v1, Lcom/keniu/security/traffic/fg;

    iget-object v0, p0, Lcom/keniu/security/traffic/fe;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-direct {v1, v0}, Lcom/keniu/security/traffic/fg;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)V

    .line 287
    iget-object v0, p0, Lcom/keniu/security/traffic/fe;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->n(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030118

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 289
    const v0, 0x7f0803f3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/keniu/security/traffic/fg;->a:Landroid/widget/RadioButton;

    .line 291
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    :goto_0
    iget-object v3, v1, Lcom/keniu/security/traffic/fg;->a:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/keniu/security/traffic/fe;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->j(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, v1, Lcom/keniu/security/traffic/fg;->a:Landroid/widget/RadioButton;

    new-instance v3, Lcom/keniu/security/traffic/ff;

    invoke-direct {v3, p0}, Lcom/keniu/security/traffic/ff;-><init>(Lcom/keniu/security/traffic/fe;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 314
    iget-object v0, v1, Lcom/keniu/security/traffic/fg;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    iget-object v3, p0, Lcom/keniu/security/traffic/fe;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->g(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/keniu/security/traffic/fe;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->g(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/keniu/security/traffic/fe;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->h(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/keniu/security/traffic/fe;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->h(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    :cond_1
    iget-object v0, v1, Lcom/keniu/security/traffic/fg;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 322
    :goto_1
    return-object v2

    .line 294
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/fg;

    move-object v1, v0

    move-object v2, p2

    goto :goto_0

    .line 321
    :cond_3
    iget-object v0, v1, Lcom/keniu/security/traffic/fg;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method
