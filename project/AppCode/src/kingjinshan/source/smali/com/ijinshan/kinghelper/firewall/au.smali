.class final Lcom/ijinshan/kinghelper/firewall/au;
.super Ljava/lang/Object;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/au;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    .line 128
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 130
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 132
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 134
    const-string v0, "logtype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/au;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/au;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f070013

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 146
    sget v2, Lcom/ijinshan/kinghelper/firewall/a/a;->i:I

    if-ne v0, v2, :cond_0

    .line 147
    const-string v0, "http://"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 149
    new-instance v7, Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/au;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 151
    const v0, 0x7f0b025d

    invoke-virtual {v7, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 152
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/av;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ijinshan/kinghelper/firewall/av;-><init>(Lcom/ijinshan/kinghelper/firewall/au;IJLjava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 171
    invoke-virtual {v7}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 193
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_0
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/au;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 175
    const v2, 0x7f0b025d

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 176
    new-instance v6, Lcom/ijinshan/kinghelper/firewall/aw;

    move-object v7, p0

    move-wide v8, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/ijinshan/kinghelper/firewall/aw;-><init>(Lcom/ijinshan/kinghelper/firewall/au;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v6}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 190
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto :goto_0
.end method
