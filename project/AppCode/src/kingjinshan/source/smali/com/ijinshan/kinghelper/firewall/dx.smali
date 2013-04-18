.class public final Lcom/ijinshan/kinghelper/firewall/dx;
.super Landroid/widget/BaseAdapter;
.source "ServicesSmsDetailActivity.java"


# instance fields
.field a:Ljava/util/List;

.field b:Landroid/content/Context;

.field final synthetic c:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/dx;->c:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/dx;->b:Landroid/content/Context;

    .line 106
    iput-object p3, p0, Lcom/ijinshan/kinghelper/firewall/dx;->a:Ljava/util/List;

    .line 107
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 137
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;

    .line 123
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dx;->b:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    .line 124
    const v1, 0x7f0300e6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 125
    const v1, 0x7f08033d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 126
    const v1, 0x7f08033c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 128
    iget-object v3, v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->a()Ljava/text/SimpleDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->a:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-object v2
.end method
