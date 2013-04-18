.class final Lcom/ijinshan/kinghelper/firewall/y;
.super Landroid/widget/BaseAdapter;
.source "FirewallDeskSMSActivityApiLevel4.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/y;->a:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 676
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 683
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/y;->a:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->c(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 684
    return-void
.end method

.method public final a(Lcom/ijinshan/kinghelper/firewall/x;)V
    .locals 1
    .parameter

    .prologue
    .line 679
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/y;->a:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->c(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/y;->a:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->c(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 695
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/y;->a:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->c(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 701
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 706
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/y;->a:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->d(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 707
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/y;->a:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->c(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/x;

    .line 709
    const v0, 0x7f08027a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    return-object v1
.end method
