.class public Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;
.super Landroid/app/ListActivity;
.source "ServicesSmsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field protected static final a:Z = true

.field public static final b:Ljava/lang/String; = "address = ? and type = 1"

.field public static final c:Ljava/lang/String; = "_id = ? and type = 1"

.field private static final e:Ljava/lang/String; = "address like ? or address like ? or address like ? or address like ?"

.field private static final f:[Ljava/lang/String;


# instance fields
.field private d:Lcom/ijinshan/kinghelper/firewall/eg;

.field private g:Landroid/os/Handler;

.field private h:Landroid/app/Dialog;

.field private i:Lcom/ijinshan/kinghelper/firewall/dq;

.field private j:Landroid/app/ProgressDialog;

.field private k:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "10%"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "12%"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "9%"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4%"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h:Landroid/app/Dialog;

    .line 78
    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->i:Lcom/ijinshan/kinghelper/firewall/dq;

    .line 300
    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->k:Landroid/view/View;

    .line 775
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/dq;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->i:Lcom/ijinshan/kinghelper/firewall/dq;

    .line 143
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/dy;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dy;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->g:Landroid/os/Handler;

    .line 150
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->j:Landroid/app/ProgressDialog;

    .line 152
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->j:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0148

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->j:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 154
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 156
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-direct {v0, p0, p0}, Lcom/ijinshan/kinghelper/firewall/eg;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    .line 159
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/dz;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dz;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/dz;->start()V

    .line 171
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 58
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/eg;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0, v2}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->b(Z)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/firewall/eg;->a(Z)V

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 58
    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ea;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/ea;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b01dd

    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/ijinshan/kinghelper/firewall/eb;

    invoke-direct {v0, p0, v2, v1}, Lcom/ijinshan/kinghelper/firewall/eb;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eb;->start()V

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 183
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/eg;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    :goto_0
    invoke-direct {p0, v2}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->b(Z)V

    .line 195
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/firewall/eg;->a(Z)V

    .line 196
    return-void

    .line 190
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V
    .locals 6
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/w;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "address like ? or address like ? or address like ? or address like ?"

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->f:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/eg;->a(Landroid/database/Cursor;)V

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f08009e

    const v3, 0x7f080025

    const v0, 0x7f080024

    const/4 v2, 0x0

    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    const v1, 0x7f0b00d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    const v1, 0x7f0b00d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 125
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    const v1, 0x7f0b01e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 134
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    const v0, 0x7f0b00d3

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/w;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "address like ? or address like ? or address like ? or address like ?"

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->f:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 202
    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/eg;->a(Landroid/database/Cursor;)V

    .line 205
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 4
    .parameter

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 243
    invoke-virtual {p0, p1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->a(Z)V

    .line 298
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->b()Ljava/util/List;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ea;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/ea;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V

    .line 260
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 261
    const v3, 0x7f0b01dd

    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 262
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 263
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 265
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 267
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/eb;

    invoke-direct {v0, p0, v2, v1}, Lcom/ijinshan/kinghelper/firewall/eb;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eb;->start()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->j:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 213
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 214
    const v1, 0x7f030031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 216
    new-instance v1, Lcom/keniu/security/util/aq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b01e9

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b00d6

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h:Landroid/app/Dialog;

    .line 221
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 222
    return-void
.end method

.method static synthetic e(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Lcom/ijinshan/kinghelper/firewall/eg;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 305
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 306
    const v2, 0x7f030032

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->k:Landroid/view/View;

    .line 309
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 310
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 312
    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ec;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/ec;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 322
    const v1, 0x7f0b00d6

    invoke-virtual {v0, v1, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 324
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 325
    return-void
.end method

.method static synthetic f(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->k:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 328
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const v0, 0x7f0b01e0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030032

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->k:Landroid/view/View;

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ec;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/ec;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    invoke-virtual {v0, v1, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->i:Lcom/ijinshan/kinghelper/firewall/dq;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/dq;->a()V

    .line 341
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->a()V

    .line 342
    return-void
.end method

.method static synthetic g(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->i:Lcom/ijinshan/kinghelper/firewall/dq;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/dq;->a()V

    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->a()V

    return-void
.end method

.method static synthetic h(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Lcom/ijinshan/kinghelper/firewall/dq;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->i:Lcom/ijinshan/kinghelper/firewall/dq;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->b()Ljava/util/List;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    .line 229
    iget v2, v0, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    sget v3, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    if-lt v2, v3, :cond_0

    .line 230
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->i:Lcom/ijinshan/kinghelper/firewall/dq;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    invoke-virtual {v2, v0}, Lcom/ijinshan/kinghelper/firewall/dq;->c(I)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->i:Lcom/ijinshan/kinghelper/firewall/dq;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    invoke-virtual {v2, v0}, Lcom/ijinshan/kinghelper/firewall/dq;->a(I)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0, p1}, Lcom/ijinshan/kinghelper/firewall/eg;->b(Z)V

    .line 236
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->notifyDataSetChanged()V

    .line 237
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 806
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 808
    if-ne p1, v0, :cond_0

    .line 809
    if-ne p2, v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->notifyDataSetChanged()V

    .line 813
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 756
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 757
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h:Landroid/app/Dialog;

    const v1, 0x7f080111

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 762
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->i:Lcom/ijinshan/kinghelper/firewall/dq;

    invoke-virtual {v1, v0, v0}, Lcom/ijinshan/kinghelper/firewall/dq;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 766
    if-eqz v1, :cond_0

    .line 767
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v2, v1, v0, v0}, Lcom/ijinshan/kinghelper/firewall/eg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->notifyDataSetChanged()V

    .line 773
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0b00d6

    const v5, 0x7f0b00d5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080024

    if-ne v0, v1, :cond_3

    .line 347
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->c()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b01e0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030032

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->k:Landroid/view/View;

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ec;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/ec;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V

    invoke-virtual {v0, v5, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0, v6, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_0

    .line 350
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030031

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b01e9

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 353
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08009e

    if-ne v0, v1, :cond_4

    .line 354
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 356
    const v1, 0x7f0b01ed

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 357
    const v1, 0x7f0b01ee

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 358
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ed;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/ed;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V

    invoke-virtual {v0, v5, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 366
    invoke-virtual {v0, v6, v3}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 367
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    .line 368
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto/16 :goto_0

    .line 369
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080025

    if-ne v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 372
    invoke-direct {p0, v4}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->b(Z)V

    .line 373
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0, v4}, Lcom/ijinshan/kinghelper/firewall/eg;->a(Z)V

    .line 374
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 376
    :cond_5
    invoke-direct {p0, v2}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->b(Z)V

    .line 377
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/firewall/eg;->a(Z)V

    .line 378
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 83
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->requestWindowFeature(I)Z

    .line 85
    const v0, 0x7f0300ea

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->setContentView(I)V

    .line 87
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    if-nez p1, :cond_0

    .line 91
    const-string v0, "smsman_srv"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 95
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v1, 0x7f0b01e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 112
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->a()V

    .line 113
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 784
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 786
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ek;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/ek;-><init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V

    .line 788
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/firewall/eg;->d()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    .line 789
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->i:Lcom/ijinshan/kinghelper/firewall/dq;

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/ek;->b:Lcom/ijinshan/kinghelper/firewall/dq;

    .line 791
    invoke-static {}, Lcom/keniu/security/util/ac;->a()Lcom/keniu/security/util/ac;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/keniu/security/util/ac;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 793
    const-string v2, "groupsmsparam"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    const-string v1, "groupindex"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 796
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 801
    :goto_0
    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0, p3}, Lcom/ijinshan/kinghelper/firewall/eg;->a(I)V

    .line 799
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 818
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-direct {p0, v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->b(Z)V

    .line 821
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/eg;->a(Z)V

    .line 822
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d:Lcom/ijinshan/kinghelper/firewall/eg;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->notifyDataSetChanged()V

    .line 823
    const/4 v0, 0x1

    .line 827
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 177
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 179
    :cond_0
    return-void
.end method
