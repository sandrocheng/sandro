.class final Lcom/keniu/security/traffic/ej;
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
    .line 420
    iput-object p1, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 426
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/ep;

    iget-object v0, v0, Lcom/keniu/security/traffic/ep;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 428
    iget-object v0, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->z(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v2, v4

    .line 429
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->A(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v2, v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->A(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v3, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->A(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v1, v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    iget-object v1, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1, v2}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;I)I

    .line 433
    iget-object v1, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->r(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcn/com/wali/zft/plugin;->getcities(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 436
    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 438
    iget-object v3, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->w(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 440
    array-length v3, v1

    if-ne v3, v5, :cond_0

    .line 441
    iget-object v3, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    aget-object v1, v1, v4

    invoke-static {v3, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    iget-object v1, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->w(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 443
    iget-object v1, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;

    move-result-object v1

    const v3, 0x7f0b079d

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 429
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 451
    iget-object v0, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    .line 453
    iget-object v0, p0, Lcom/keniu/security/traffic/ej;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->g(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/en;

    invoke-virtual {p0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    .line 456
    return-void
.end method
