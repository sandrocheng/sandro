.class public final Lcom/ijinshan/kinghelper/firewall/s;
.super Landroid/widget/BaseExpandableListAdapter;
.source "FirewallCommonServiceQueryActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;

.field private b:Landroid/database/Cursor;

.field private c:Ljava/util/List;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;Landroid/database/Cursor;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/s;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 91
    iput-object p4, p0, Lcom/ijinshan/kinghelper/firewall/s;->d:Landroid/content/Context;

    .line 92
    iput-object p3, p0, Lcom/ijinshan/kinghelper/firewall/s;->c:Ljava/util/List;

    .line 93
    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/s;->b:Landroid/database/Cursor;

    .line 94
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/s;->d:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 136
    const v1, 0x7f0300ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 137
    const v0, 0x7f08033b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    const v1, 0x7f080344

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 140
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/s;->c:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    .line 142
    invoke-interface {p0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 144
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-object v2
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .parameter

    .prologue
    .line 154
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/s;->d:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 121
    const v1, 0x7f0300ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 122
    const v0, 0x7f08033b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/s;->b:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 126
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/s;->b:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/s;->b:Landroid/database/Cursor;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/FirewallCommonServiceQueryActivity;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-object v1
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method
