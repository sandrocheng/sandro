.class final Lcom/keniu/security/traffic/fd;
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
    .line 187
    iput-object p1, p0, Lcom/keniu/security/traffic/fd;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

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
    .line 192
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/fg;

    iget-object v0, v0, Lcom/keniu/security/traffic/fg;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/keniu/security/traffic/fd;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->j(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/keniu/security/traffic/fd;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/keniu/security/traffic/fd;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/keniu/security/traffic/fd;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    iget-object v3, p0, Lcom/keniu/security/traffic/fd;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/fd;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/fe;

    .line 201
    invoke-virtual {p0}, Lcom/keniu/security/traffic/fe;->notifyDataSetChanged()V

    .line 202
    return-void
.end method
