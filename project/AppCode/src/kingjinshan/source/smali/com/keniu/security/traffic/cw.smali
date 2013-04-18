.class final Lcom/keniu/security/traffic/cw;
.super Ljava/lang/Object;
.source "TrafficSoftListActivity2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/keniu/security/traffic/cw;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

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

    .line 121
    iget-object v0, p0, Lcom/keniu/security/traffic/cw;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/ae;

    .line 123
    iget v1, v0, Lcom/keniu/security/traffic/ae;->a:I

    const v2, 0xf4242

    if-ne v1, v2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/keniu/security/traffic/cw;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const-string v1, "\u5df2\u5378\u8f7d\u8f6f\u4ef6\u65e0\u8be6\u7ec6\u6570\u636e"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-wide v1, v0, Lcom/keniu/security/traffic/ae;->f:J

    const-wide/16 v3, -0x3e8

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/keniu/security/traffic/cw;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const-string v1, "\u6b64\u7c7b\u8f6f\u4ef6\u6682\u65e0\u8be6\u7ec6\u6570\u636e"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 133
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/traffic/cw;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    const-class v3, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    const-string v2, "userId"

    iget v3, v0, Lcom/keniu/security/traffic/ae;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string v2, "packagename"

    iget-object v3, v0, Lcom/keniu/security/traffic/ae;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v2, "label"

    iget-object v0, v0, Lcom/keniu/security/traffic/ae;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/keniu/security/traffic/cw;->a:Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
