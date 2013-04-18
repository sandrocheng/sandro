.class final Lcom/ijinshan/kinghelper/firewall/da;
.super Ljava/lang/Object;
.source "IpProvinceCityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

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
    .line 43
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    const-class v2, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->b(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)Lcom/ijinshan/kinghelper/firewall/db;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 45
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->c(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-static {v1, v2}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    const/4 v1, 0x4

    if-ge p3, v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->finish()V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/mydb/opt/a;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/db;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-static {v3}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->e(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/db;-><init>(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;Lcom/ijinshan/kinghelper/firewall/db;)Lcom/ijinshan/kinghelper/firewall/db;

    .line 53
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->f(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)Lcom/ijinshan/kinghelper/firewall/db;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->f(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)Lcom/ijinshan/kinghelper/firewall/db;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 56
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->e(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-static {v1, v2}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->a(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->d(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/da;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->finish()V

    goto :goto_0
.end method
