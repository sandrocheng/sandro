.class final Lcom/ijinshan/kinghelper/firewall/aq;
.super Landroid/widget/BaseAdapter;
.source "FirewallSettingsKeysActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 134
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/aq;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 130
    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/aq;->c:Landroid/content/Context;

    .line 132
    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/aq;->d:Ljava/util/List;

    .line 135
    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/aq;->c:Landroid/content/Context;

    .line 136
    iput-object p3, p0, Lcom/ijinshan/kinghelper/firewall/aq;->d:Ljava/util/List;

    .line 137
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/aq;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/aq;->b:Landroid/view/LayoutInflater;

    .line 138
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/aq;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/aq;->d:Ljava/util/List;

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/aq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/aq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 156
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/aq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/aq;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300ab

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 163
    const v1, 0x7f080288

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 164
    const v3, 0x7f080289

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 165
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/ar;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/ar;-><init>(Lcom/ijinshan/kinghelper/firewall/aq;)V

    .line 168
    iput p1, v0, Lcom/ijinshan/kinghelper/firewall/ar;->a:I

    .line 169
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 170
    return-object v2
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ar;

    .line 176
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/aq;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/ar;->a:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/aq;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;)Lcom/ijinshan/kinghelper/firewall/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/aq;->notifyDataSetChanged()V

    .line 178
    return-void
.end method
