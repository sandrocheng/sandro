.class public Lcom/keniu/security/traffic/TrafficSoftListActivity2;
.super Landroid/app/ListActivity;
.source "TrafficSoftListActivity2.java"


# static fields
.field public static a:Z = false

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3


# instance fields
.field private f:Landroid/widget/RadioGroup;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/keniu/security/traffic/cz;

.field private k:Ljava/util/Vector;

.field private l:Ljava/util/Vector;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/AdapterView$OnItemClickListener;

.field private r:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->g:Landroid/widget/LinearLayout;

    .line 115
    new-instance v0, Lcom/keniu/security/traffic/cw;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/cw;-><init>(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 245
    new-instance v0, Lcom/keniu/security/traffic/cy;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/cy;-><init>(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->r:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/RadioGroup;)Landroid/widget/RadioGroup;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Lcom/keniu/security/traffic/cz;)Lcom/keniu/security/traffic/cz;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->j:Lcom/keniu/security/traffic/cz;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->k:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->k:Ljava/util/Vector;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 171
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 175
    const v0, 0x7f0803e4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 179
    const v0, 0x7f0803e5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    .line 183
    const v0, 0x7f0803e6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    .line 186
    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    if-nez v0, :cond_5

    .line 189
    const v0, 0x7f0803e1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/traffic/cx;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/cx;-><init>(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 32
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0803e6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    if-nez v0, :cond_2

    const v0, 0x7f0803e1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const v0, 0x7f0803e7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    if-nez v0, :cond_5

    const v0, 0x7f0803e4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-wide v1, v0, Lcom/keniu/security/traffic/y;->j:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_7

    new-instance v1, Ljava/util/Date;

    iget-wide v2, v0, Lcom/keniu/security/traffic/y;->j:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u81f3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    if-nez v0, :cond_6

    const v0, 0x7f0803e5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_7
    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 393
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 394
    const v0, 0x7f0803e6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 398
    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    if-nez v0, :cond_2

    .line 402
    const v0, 0x7f0803e1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 405
    const v0, 0x7f0803e7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    if-nez v0, :cond_4

    .line 408
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    .line 409
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 411
    const v0, 0x7f0803e4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    .line 412
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    if-eqz p1, :cond_8

    .line 415
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 418
    iget-wide v1, v0, Lcom/keniu/security/traffic/y;->j:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_7

    .line 423
    new-instance v1, Ljava/util/Date;

    iget-wide v2, v0, Lcom/keniu/security/traffic/y;->j:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 424
    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 434
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u81f3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 441
    const v0, 0x7f0803e5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    .line 443
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    return-void

    .line 428
    :cond_7
    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    .line 436
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Lcom/keniu/security/traffic/cz;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->j:Lcom/keniu/security/traffic/cz;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->l:Ljava/util/Vector;

    return-object p1
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v5}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 207
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 208
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 209
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/z;->f(Landroid/content/Context;)Ljava/util/Vector;

    move-result-object v1

    .line 210
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;J)Ljava/util/Vector;

    move-result-object v2

    .line 212
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    .line 213
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->r:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 234
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->r:Landroid/os/Handler;

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 224
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->r:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_1

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->r:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficSoftListActivity2;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->l:Ljava/util/Vector;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 337
    const/4 v0, 0x1

    sput-boolean v0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a:Z

    .line 339
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 340
    const v0, 0x7f0803e6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 343
    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 346
    const v0, 0x7f0803e7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u6d41\u91cf\u6392\u884c\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    if-nez v0, :cond_3

    .line 350
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    if-nez v0, :cond_4

    .line 353
    const v0, 0x7f0803e4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 357
    const v0, 0x7f0803e5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    .line 359
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 364
    const/4 v0, 0x1

    sput-boolean v0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a:Z

    .line 366
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 367
    const v0, 0x7f0803e6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 370
    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    if-nez v0, :cond_2

    .line 373
    const v0, 0x7f0803e1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 376
    const v0, 0x7f0803e7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u6d41\u91cf\u6392\u884c\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    if-nez v0, :cond_4

    .line 380
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    .line 381
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 383
    const v0, 0x7f0803e4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    .line 384
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 387
    const v0, 0x7f0803e5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    .line 389
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    return-void
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a:Z

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0803e6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const v0, 0x7f0803e7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u6d41\u91cf\u6392\u884c\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const v0, 0x7f0803e4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    if-nez v0, :cond_5

    const v0, 0x7f0803e5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a:Z

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0803e6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    if-nez v0, :cond_2

    const v0, 0x7f0803e1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const v0, 0x7f0803e7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u6d41\u91cf\u6392\u884c\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    if-nez v0, :cond_5

    const v0, 0x7f0803e4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    if-nez v0, :cond_6

    const v0, 0x7f0803e5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic f(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/z;->f(Landroid/content/Context;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;J)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->r:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->r:Landroid/os/Handler;

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->r:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->r:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic j(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030112

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    .line 60
    const v0, 0x7f0803e6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    .line 61
    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f0803e1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    .line 63
    const v0, 0x7f0803e7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0803e4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0803e5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0803e0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->g:Landroid/widget/LinearLayout;

    .line 67
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    const v1, 0x7f0803e2

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 68
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/keniu/security/traffic/cv;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/cv;-><init>(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 107
    invoke-static {}, Lcom/keniu/security/traffic/z;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->q:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 146
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->j:Lcom/keniu/security/traffic/cz;

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->j:Lcom/keniu/security/traffic/cz;

    .line 149
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 448
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->finish()V

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->startActivity(Landroid/content/Intent;)V

    .line 452
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 242
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 153
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 155
    const v0, 0x7f0803e7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    .line 157
    :cond_0
    invoke-static {}, Lcom/keniu/security/traffic/z;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 158
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->k:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a:Z

    if-eqz v0, :cond_8

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const v0, 0x7f0803e4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const v0, 0x7f0803e5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    const v0, 0x7f0803e6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    if-nez v0, :cond_7

    const v0, 0x7f0803e1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    :cond_7
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/traffic/cx;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/cx;-><init>(Lcom/keniu/security/traffic/TrafficSoftListActivity2;)V

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 161
    sget-boolean v0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a:Z

    if-eqz v0, :cond_8

    .line 162
    sput-boolean v2, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a:Z

    .line 168
    :cond_8
    :goto_0
    return-void

    .line 165
    :cond_9
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    const v1, 0x7f0b037c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
