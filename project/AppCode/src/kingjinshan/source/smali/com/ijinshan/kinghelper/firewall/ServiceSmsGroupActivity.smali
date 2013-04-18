.class public Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;
.super Landroid/app/ListActivity;
.source "ServiceSmsGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final a:Ljava/lang/String; = "groupsmsparam"

.field public static final b:Ljava/lang/String; = "groupindex"

.field private static final c:Ljava/text/SimpleDateFormat;


# instance fields
.field private d:Lcom/ijinshan/kinghelper/firewall/do;

.field private e:Z

.field private f:I

.field private g:Lcom/ijinshan/kinghelper/firewall/ek;

.field private h:Z

.field private i:I

.field private j:Landroid/content/DialogInterface$OnClickListener;

.field private k:I

.field private l:Landroid/view/View;

.field private m:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 46
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    .line 52
    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->e:Z

    .line 53
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f:I

    .line 54
    iput-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    .line 55
    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->h:Z

    .line 448
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->i:I

    .line 450
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/dk;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dk;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 470
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->k:I

    .line 516
    iput-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->l:Landroid/view/View;

    .line 517
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/dn;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dn;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->k:I

    return p1
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)Lcom/ijinshan/kinghelper/firewall/do;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    return-object v0
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f08033f

    const v0, 0x7f08033e

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->a()V

    .line 140
    :goto_0
    iput-boolean p1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->e:Z

    .line 141
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->notifyDataSetChanged()V

    .line 142
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->a()V

    goto :goto_0
.end method

.method static synthetic b()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->c:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->h:Z

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->e()Ljava/util/List;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/dh;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/dh;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V

    .line 190
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 191
    const v3, 0x7f0b01dd

    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 193
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 195
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 197
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/di;

    invoke-direct {v0, p0, v2, v1}, Lcom/ijinshan/kinghelper/firewall/di;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/di;->start()V

    .line 223
    return-void
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->e()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/dh;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/dh;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b01dd

    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->getString(I)Ljava/lang/String;

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

    new-instance v0, Lcom/ijinshan/kinghelper/firewall/di;

    invoke-direct {v0, p0, v2, v1}, Lcom/ijinshan/kinghelper/firewall/di;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/di;->start()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const v0, 0x7f0b01df

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 244
    :goto_0
    return-void

    .line 231
    :cond_0
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 233
    const v1, 0x7f0b01db

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 234
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 235
    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/dj;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/dj;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 241
    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 243
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_0
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->e:Z

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 472
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->k:I

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f:I

    if-ne v0, v1, :cond_0

    .line 488
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    .line 476
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->k:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ei;

    .line 478
    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->i:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 480
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->i:I

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 481
    iget-object v0, v1, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->notifyDataSetChanged()V

    .line 485
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->b:Lcom/ijinshan/kinghelper/firewall/dq;

    iget-object v2, v2, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    iget v1, v1, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    invoke-virtual {v0, v2, v1}, Lcom/ijinshan/kinghelper/firewall/dq;->a(Ljava/lang/String;I)V

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->h:Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 46
    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->e:Ljava/lang/String;

    aput-object v0, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b01e8

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f:I

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->k:I

    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f:I

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/dl;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/firewall/dl;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/dm;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/dm;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    return-void
.end method

.method static synthetic f(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->i:I

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 491
    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 492
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->e:Ljava/lang/String;

    aput-object v0, v2, v3

    .line 493
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 496
    :cond_0
    const v0, 0x7f0b01e8

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 497
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f:I

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->k:I

    .line 499
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f:I

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/dl;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/firewall/dl;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 506
    const v0, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/dm;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/dm;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 513
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 514
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 543
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->i:I

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/do;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 544
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 545
    const v2, 0x7f0300ee

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->l:Landroid/view/View;

    .line 547
    new-instance v1, Lcom/keniu/security/util/aq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->l:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v1

    const v2, 0x7f0b00d5

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v1

    const v2, 0x7f0b00d6

    invoke-virtual {v1, v2, v4}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/util/ap;->show()V

    .line 554
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->l:Landroid/view/View;

    const v2, 0x7f080111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    .line 555
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 556
    return-void
.end method

.method static synthetic g(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 46
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->i:I

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/do;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ee

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->l:Landroid/view/View;

    new-instance v1, Lcom/keniu/security/util/aq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->l:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v1

    const v2, 0x7f0b00d5

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v1

    const v2, 0x7f0b00d6

    invoke-virtual {v1, v2, v4}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/util/ap;->show()V

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->l:Landroid/view/View;

    const v2, 0x7f080111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic h(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->k:I

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->k:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->i:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ijinshan/kinghelper/firewall/ej;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->i:I

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->b:Lcom/ijinshan/kinghelper/firewall/dq;

    iget-object v2, v2, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    iget v1, v1, Lcom/ijinshan/kinghelper/firewall/ei;->b:I

    invoke-virtual {v0, v2, v1}, Lcom/ijinshan/kinghelper/firewall/dq;->a(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->h:Z

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->l:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->c()Z

    .line 154
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 410
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 412
    if-ne p1, v1, :cond_0

    .line 413
    if-ne p2, v1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->notifyDataSetChanged()V

    .line 415
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->h:Z

    .line 418
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 575
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f080340

    if-ne v0, v1, :cond_0

    .line 576
    if-eqz p2, :cond_1

    .line 577
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->a()V

    .line 581
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->notifyDataSetChanged()V

    .line 583
    :cond_0
    return-void

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->b()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080341

    if-ne v0, v1, :cond_2

    .line 161
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->e:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->d()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b01df

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b01db

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/dj;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/dj;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08009e

    if-ne v0, v1, :cond_3

    .line 166
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->e:Z

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0, v3}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->a(Z)V

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080342

    if-ne v0, v1, :cond_0

    .line 171
    invoke-direct {p0, v2}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->a(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, 0x8

    .line 59
    invoke-virtual {p0, v5}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->requestWindowFeature(I)Z

    .line 60
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    const-string v0, "groupsmsparam"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/keniu/security/util/ac;->a()Lcom/keniu/security/util/ac;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/ac;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ek;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    .line 70
    :cond_0
    const-string v0, "groupindex"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 74
    new-instance v2, Lcom/ijinshan/kinghelper/firewall/do;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-direct {v2, p0, p0, v0}, Lcom/ijinshan/kinghelper/firewall/do;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    .line 78
    :goto_1
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f:I

    .line 80
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f0300e7

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->setContentView(I)V

    .line 83
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ei;->e:Ljava/lang/String;

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b01f2

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    const v1, 0x7f0b00d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    const v0, 0x7f080340

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 106
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    const v0, 0x7f080341

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v0, 0x7f080342

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 112
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 119
    return-void

    .line 76
    :cond_1
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/do;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v2}, Lcom/ijinshan/kinghelper/firewall/do;-><init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    goto/16 :goto_1

    :cond_2
    move v1, v4

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->e:Z

    if-nez v0, :cond_0

    .line 426
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0, p3}, Lcom/ijinshan/kinghelper/firewall/do;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 428
    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    .line 429
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->d:Ljava/lang/String;

    .line 430
    invoke-static {}, Lcom/keniu/security/util/ac;->a()Lcom/keniu/security/util/ac;

    move-result-object v3

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->g:Lcom/ijinshan/kinghelper/firewall/ek;

    invoke-virtual {v3, v4}, Lcom/keniu/security/util/ac;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 432
    sget-object v4, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->e:Ljava/lang/String;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 446
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0, p3}, Lcom/ijinshan/kinghelper/firewall/do;->a(I)V

    .line 442
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->a()V

    .line 443
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 561
    iput p3, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->i:I

    .line 562
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d:Lcom/ijinshan/kinghelper/firewall/do;

    invoke-virtual {v0, p3}, Lcom/ijinshan/kinghelper/firewall/do;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 563
    new-instance v1, Lcom/keniu/security/util/aq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 564
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 565
    const v0, 0x7f07003f

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 567
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    .line 568
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 392
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->e:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0, v1}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->a(Z)V

    move v0, v2

    .line 404
    :goto_0
    return v0

    .line 397
    :cond_0
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->h:Z

    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->setResult(I)V

    .line 404
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 400
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->setResult(I)V

    goto :goto_1
.end method
