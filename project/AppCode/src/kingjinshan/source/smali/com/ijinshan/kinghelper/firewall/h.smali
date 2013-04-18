.class final Lcom/ijinshan/kinghelper/firewall/h;
.super Ljava/lang/Object;
.source "FirewallCallLogListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/h;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 106
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 107
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 109
    const-string v3, "number"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/h;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-virtual {v3}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 122
    :goto_0
    new-instance v4, Lcom/keniu/security/util/aq;

    iget-object v5, p0, Lcom/ijinshan/kinghelper/firewall/h;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-direct {v4, v5, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 124
    const-string v5, "\u66f4\u591a\u64cd\u4f5c"

    invoke-virtual {v4, v5}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 125
    new-instance v5, Lcom/ijinshan/kinghelper/firewall/i;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/i;-><init>(Lcom/ijinshan/kinghelper/firewall/h;Ljava/lang/String;J)V

    invoke-virtual {v4, v3, v5}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 139
    invoke-virtual {v4}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 141
    return v6

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/h;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-virtual {v3}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
