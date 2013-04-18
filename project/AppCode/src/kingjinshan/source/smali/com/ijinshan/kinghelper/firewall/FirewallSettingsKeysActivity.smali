.class public Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;
.super Landroid/app/ListActivity;
.source "FirewallSettingsKeysActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final a:Ljava/lang/String; = ""


# instance fields
.field private b:Ljava/util/ArrayList;

.field private c:Lcom/ijinshan/kinghelper/firewall/aq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    const-string v0, "[^A-Za-z0-9\\u4E00-\\u9FA5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;)Lcom/ijinshan/kinghelper/firewall/aq;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->c:Lcom/ijinshan/kinghelper/firewall/aq;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 120
    const-string v0, "[^A-Za-z0-9\\u4E00-\\u9FA5]"

    .line 121
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->requestWindowFeature(I)Z

    .line 39
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    invoke-super {p0}, Landroid/app/ListActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 45
    const v1, 0x7f08004c

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 46
    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ap;

    invoke-direct {v2, p0, v0}, Lcom/ijinshan/kinghelper/firewall/ap;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->h()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->b:Ljava/util/ArrayList;

    .line 74
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->b:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/aq;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/ijinshan/kinghelper/firewall/aq;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->c:Lcom/ijinshan/kinghelper/firewall/aq;

    .line 82
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->c:Lcom/ijinshan/kinghelper/firewall/aq;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 98
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 99
    if-lez v1, :cond_2

    .line 100
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 101
    if-nez v3, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 104
    :cond_0
    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->c(Ljava/lang/String;)Z

    .line 112
    :goto_2
    return-void

    .line 109
    :cond_2
    const-string v0, ""

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->c(Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;->c:Lcom/ijinshan/kinghelper/firewall/aq;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/aq;->notifyDataSetChanged()V

    .line 92
    return-void
.end method
