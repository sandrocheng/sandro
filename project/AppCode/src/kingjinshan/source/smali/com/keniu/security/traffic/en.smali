.class final Lcom/keniu/security/traffic/en;
.super Landroid/widget/BaseAdapter;
.source "TrafficZiFeiSettingActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;


# direct methods
.method public constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/keniu/security/traffic/en;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 808
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    .line 810
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/keniu/security/traffic/en;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->z(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 868
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 873
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

    .line 820
    if-nez p2, :cond_2

    .line 823
    new-instance v1, Lcom/keniu/security/traffic/ep;

    iget-object v0, p0, Lcom/keniu/security/traffic/en;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-direct {v1, v0}, Lcom/keniu/security/traffic/ep;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 824
    iget-object v0, p0, Lcom/keniu/security/traffic/en;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->G(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030118

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 826
    const v0, 0x7f0803f3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/keniu/security/traffic/ep;->a:Landroid/widget/RadioButton;

    .line 828
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 833
    :goto_0
    iget-object v3, v1, Lcom/keniu/security/traffic/ep;->a:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/keniu/security/traffic/en;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->z(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iget-object v0, v1, Lcom/keniu/security/traffic/ep;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setId(I)V

    .line 837
    iget-object v0, v1, Lcom/keniu/security/traffic/ep;->a:Landroid/widget/RadioButton;

    new-instance v3, Lcom/keniu/security/traffic/eo;

    invoke-direct {v3, p0}, Lcom/keniu/security/traffic/eo;-><init>(Lcom/keniu/security/traffic/en;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 854
    iget-object v0, v1, Lcom/keniu/security/traffic/ep;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 855
    iget-object v3, p0, Lcom/keniu/security/traffic/en;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->r(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/keniu/security/traffic/en;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->r(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/keniu/security/traffic/en;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->s(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/keniu/security/traffic/en;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->s(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 859
    :cond_1
    iget-object v0, v1, Lcom/keniu/security/traffic/ep;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 863
    :goto_1
    return-object v2

    .line 831
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/ep;

    move-object v1, v0

    move-object v2, p2

    goto :goto_0

    .line 861
    :cond_3
    iget-object v0, v1, Lcom/keniu/security/traffic/ep;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method