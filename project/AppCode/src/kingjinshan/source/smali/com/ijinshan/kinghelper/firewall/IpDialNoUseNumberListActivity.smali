.class public Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;
.super Landroid/app/ListActivity;
.source "IpDialNoUseNumberListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:Ljava/lang/String; = ""

.field private static final b:I = 0x2011

.field private static final c:I = 0x2012

.field private static final d:I = 0x1


# instance fields
.field private e:Ljava/util/ArrayList;

.field private f:Lcom/ijinshan/kinghelper/firewall/ce;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Ljava/util/ArrayList;

.field private j:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->i:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/cd;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/cd;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 256
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const v3, 0x7f08004d

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 78
    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->b()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v2, ";"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->d()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 93
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 103
    const-string v3, "ip_dial_no_use_number_title"

    aget-object v4, v0, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v3, "ip_dial_no_use_number_body"

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->d()Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Ljava/lang/String;)Z

    .line 142
    return-void

    .line 138
    :cond_0
    const-string v2, ";"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 139
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private c()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 123
    const v1, 0x7f0b0098

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 124
    const v1, 0x7f070037

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 126
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->a()V

    return-void
.end method

.method private d()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 145
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 148
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b008e

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v2

    .line 152
    const v0, 0x7f080169

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 154
    const v3, 0x7f08016a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 157
    const v3, 0x7f0b0682

    new-instance v4, Lcom/ijinshan/kinghelper/firewall/cb;

    invoke-direct {v4, p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/cb;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 177
    const v0, 0x7f0b0683

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/cc;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/cc;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)V

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 184
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 186
    return-object v0
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)Lcom/ijinshan/kinghelper/firewall/ce;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->f:Lcom/ijinshan/kinghelper/firewall/ce;

    return-object v0
.end method

.method static synthetic e(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 248
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 250
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Ljava/lang/String;)Z

    .line 254
    return-void
.end method

.method static synthetic f(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->b()V

    .line 209
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e()V

    .line 210
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->f:Lcom/ijinshan/kinghelper/firewall/ce;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/ce;->notifyDataSetChanged()V

    .line 211
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->a()V

    .line 213
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800a4

    if-ne v0, v1, :cond_1

    .line 198
    const/16 v0, 0x2011

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->showDialog(I)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800a5

    if-ne v0, v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->requestWindowFeature(I)Z

    .line 54
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->setContentView(I)V

    .line 55
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e:Ljava/util/ArrayList;

    .line 59
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->b()V

    .line 60
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e()V

    .line 62
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/ce;

    invoke-direct {v0, p0, p0}, Lcom/ijinshan/kinghelper/firewall/ce;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->f:Lcom/ijinshan/kinghelper/firewall/ce;

    .line 63
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->f:Lcom/ijinshan/kinghelper/firewall/ce;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->g:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->h:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->setResult(I)V

    .line 72
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->a()V

    .line 73
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 113
    const/16 v0, 0x2011

    if-ne p1, v0, :cond_0

    .line 114
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0098

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f070037

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 115
    :cond_0
    const/16 v0, 0x2012

    if-ne p1, v0, :cond_1

    .line 116
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b008e

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v2

    const v0, 0x7f080169

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v3, 0x7f08016a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v3, 0x7f0b0682

    new-instance v4, Lcom/ijinshan/kinghelper/firewall/cb;

    invoke-direct {v4, p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/cb;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0683

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/cc;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/cc;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)V

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 192
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->e()V

    .line 193
    return-void
.end method
