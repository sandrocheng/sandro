.class final Lcom/ijinshan/kinghelper/firewall/ce;
.super Landroid/widget/BaseAdapter;
.source "IpDialNoUseNumberListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ce;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 266
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ce;->b:Landroid/view/LayoutInflater;

    .line 268
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ce;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ce;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 283
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ce;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 290
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ce;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300ad

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 292
    const v1, 0x7f08028f

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 294
    const v2, 0x7f080290

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 296
    const v3, 0x7f080291

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 297
    const-string v3, "ip_dial_no_use_number_title"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    const-string v1, "ip_dial_no_use_number_body"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/cf;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/cf;-><init>(Lcom/ijinshan/kinghelper/firewall/ce;)V

    .line 301
    iput p1, v0, Lcom/ijinshan/kinghelper/firewall/cf;->a:I

    .line 302
    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 303
    return-object v4
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/cf;

    .line 309
    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/cf;->a:I

    .line 311
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ce;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->f(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 312
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ce;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->f(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 313
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ce;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ce;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->b(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)V

    .line 315
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ce;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->c(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)V

    .line 316
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ce;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)Lcom/ijinshan/kinghelper/firewall/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/ce;->notifyDataSetChanged()V

    .line 317
    return-void
.end method
