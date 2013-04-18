.class public Lcom/keniu/security/software/APKManagerActivity;
.super Landroid/app/Activity;
.source "APKManagerActivity.java"


# static fields
.field private static final s:I = 0x0

.field private static final t:I = 0x1

.field private static final u:I = 0x0

.field private static final v:I = 0x0

.field private static final w:I = 0x1

.field private static final x:I = 0x2

.field private static final y:I = 0x3

.field private static final z:I = 0x4


# instance fields
.field private A:Landroid/os/Handler;

.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Lcom/keniu/security/software/k;

.field private g:I

.field private h:I

.field private i:Landroid/widget/ListView;

.field private j:J

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->c:Ljava/util/List;

    .line 63
    iput-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->d:Ljava/util/List;

    .line 64
    iput-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->e:Ljava/util/List;

    .line 65
    iput-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->f:Lcom/keniu/security/software/k;

    .line 68
    iput v3, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    .line 69
    iput v3, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    .line 70
    iput-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    .line 72
    iput-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->k:Landroid/widget/TextView;

    .line 73
    iput-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->l:Landroid/widget/TextView;

    .line 74
    iput-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->m:Landroid/widget/Button;

    .line 75
    iput-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->n:Landroid/widget/Button;

    .line 76
    iput v3, p0, Lcom/keniu/security/software/APKManagerActivity;->o:I

    .line 77
    iput-boolean v3, p0, Lcom/keniu/security/software/APKManagerActivity;->p:Z

    .line 78
    iput-boolean v3, p0, Lcom/keniu/security/software/APKManagerActivity;->q:Z

    .line 79
    iput-boolean v3, p0, Lcom/keniu/security/software/APKManagerActivity;->r:Z

    .line 667
    new-instance v0, Lcom/keniu/security/software/b;

    invoke-direct {v0, p0}, Lcom/keniu/security/software/b;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    iput-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->A:Landroid/os/Handler;

    .line 994
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/software/APKManagerActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/keniu/security/software/APKManagerActivity;->o:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/software/APKManagerActivity;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    return-wide v0
.end method

.method static synthetic a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/software/APKManagerActivity;Lcom/keniu/security/software/k;)Lcom/keniu/security/software/k;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/keniu/security/software/APKManagerActivity;->f:Lcom/keniu/security/software/k;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/software/APKManagerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/keniu/security/software/APKManagerActivity;->d:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 219
    move v1, v5

    move v2, v5

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 222
    iget v3, v0, Lcom/keniu/security/d/a;->e:I

    .line 223
    if-eq v3, v6, :cond_3

    .line 225
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 228
    invoke-virtual {v0}, Lcom/keniu/security/d/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 220
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v6

    .line 233
    goto :goto_1

    .line 238
    :cond_1
    if-eqz v2, :cond_2

    .line 239
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->n:Landroid/widget/Button;

    const v1, 0x7f0b056b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 243
    :goto_2
    return-void

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->n:Landroid/widget/Button;

    const v1, 0x7f0b056c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/keniu/security/software/APKManagerActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/keniu/security/software/APKManagerActivity;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/keniu/security/software/APKManagerActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    return p1
.end method

.method static synthetic b(Lcom/keniu/security/software/APKManagerActivity;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    return-wide v0
.end method

.method static synthetic b(Lcom/keniu/security/software/APKManagerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/keniu/security/software/APKManagerActivity;->e:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 254
    iget v0, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    iget v1, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    add-int/2addr v1, v0

    .line 255
    iget-wide v2, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    .line 259
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v9

    move v4, v0

    :goto_0
    if-ltz v4, :cond_2

    .line 260
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 261
    iget v5, v0, Lcom/keniu/security/d/a;->e:I

    if-eq v5, v9, :cond_0

    iget v5, v0, Lcom/keniu/security/d/a;->e:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/keniu/security/d/a;->h()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    iget v5, v0, Lcom/keniu/security/d/a;->e:I

    if-ne v5, v10, :cond_1

    .line 266
    iget v5, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    sub-int/2addr v5, v9

    iput v5, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    .line 267
    iget-object v5, p0, Lcom/keniu/security/software/APKManagerActivity;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 272
    :goto_1
    iget-wide v5, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->c()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    .line 273
    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 259
    :cond_0
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 269
    :cond_1
    iget v5, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    sub-int/2addr v5, v9

    iput v5, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    .line 270
    iget-object v5, p0, Lcom/keniu/security/software/APKManagerActivity;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->k:Landroid/widget/TextView;

    const v4, 0x7f0b0578

    invoke-virtual {p0, v4}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    iget v7, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    iget-wide v6, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    invoke-static {v6, v7}, Lcom/keniu/security/util/ax;->f(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->f:Lcom/keniu/security/software/k;

    invoke-virtual {v0}, Lcom/keniu/security/software/k;->notifyDataSetChanged()V

    .line 283
    const v0, 0x7f0b057b

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v10, [Ljava/lang/Object;

    iget v5, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    sub-int/2addr v1, v5

    iget v5, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    sub-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v11

    iget-wide v5, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    sub-long v1, v2, v5

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->f(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 291
    iget v0, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    iget v1, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->A:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 294
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/keniu/security/software/APKManagerActivity;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 58
    iget v0, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    iget v1, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    add-int/2addr v1, v0

    iget-wide v2, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v9

    move v4, v0

    :goto_0
    if-ltz v4, :cond_2

    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    iget v5, v0, Lcom/keniu/security/d/a;->e:I

    if-eq v5, v9, :cond_0

    iget v5, v0, Lcom/keniu/security/d/a;->e:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->h()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/keniu/security/d/a;->e:I

    if-ne v5, v10, :cond_1

    iget v5, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    sub-int/2addr v5, v9

    iput v5, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    iget-object v5, p0, Lcom/keniu/security/software/APKManagerActivity;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    iget-wide v5, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->c()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    sub-int/2addr v5, v9

    iput v5, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    iget-object v5, p0, Lcom/keniu/security/software/APKManagerActivity;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->k:Landroid/widget/TextView;

    const v4, 0x7f0b0578

    invoke-virtual {p0, v4}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    iget v7, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    iget-wide v6, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    invoke-static {v6, v7}, Lcom/keniu/security/util/ax;->f(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->f:Lcom/keniu/security/software/k;

    invoke-virtual {v0}, Lcom/keniu/security/software/k;->notifyDataSetChanged()V

    const v0, 0x7f0b057b

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v10, [Ljava/lang/Object;

    iget v5, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    sub-int/2addr v1, v5

    iget v5, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    sub-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v11

    iget-wide v5, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    sub-long v1, v2, v5

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->f(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget v0, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    iget v1, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->A:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/keniu/security/software/APKManagerActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/keniu/security/software/APKManagerActivity;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/keniu/security/software/APKManagerActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    return p1
.end method

.method private c()Landroid/app/Dialog;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 349
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/software/APKManagerActivity;->o:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 352
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->f()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 353
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 356
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/keniu/security/software/APKManagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 357
    const v3, 0x7f0300f6

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 359
    const v1, 0x7f080363

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/software/CustomTextView;

    .line 361
    const v4, 0x7f0b0573

    invoke-virtual {p0, v4}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->i()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/keniu/security/software/CustomTextView;->a(Ljava/lang/String;)V

    .line 364
    const v1, 0x7f080364

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 366
    const v4, 0x7f0b0574

    invoke-virtual {p0, v4}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keniu/security/util/ax;->f(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    const v1, 0x7f080365

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/software/CustomTextView;

    .line 371
    const v4, 0x7f0b0576

    invoke-virtual {p0, v4}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->e()Ljava/lang/String;

    move-result-object v7

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-virtual {v1, v4}, Lcom/keniu/security/software/CustomTextView;->a(Ljava/lang/String;)V

    .line 378
    const v1, 0x7f080366

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 380
    const v4, 0x7f0b0577

    invoke-virtual {p0, v4}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v9}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 385
    const v2, 0x7f0b0571

    invoke-virtual {p0, v2}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 386
    invoke-virtual {v1, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 396
    const v2, 0x7f0b0670

    new-instance v3, Lcom/keniu/security/software/e;

    invoke-direct {v3, p0, v0}, Lcom/keniu/security/software/e;-><init>(Lcom/keniu/security/software/APKManagerActivity;Lcom/keniu/security/d/a;)V

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 432
    const v0, 0x7f0b057c

    new-instance v2, Lcom/keniu/security/software/f;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/f;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 459
    new-instance v0, Lcom/keniu/security/software/g;

    invoke-direct {v0, p0}, Lcom/keniu/security/software/g;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    .line 466
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/software/APKManagerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/keniu/security/software/APKManagerActivity;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/software/APKManagerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/keniu/security/software/APKManagerActivity;->q:Z

    return v0
.end method

.method private d()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 470
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 471
    const v1, 0x7f030039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 472
    const v0, 0x7f08011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 474
    const v1, 0x7f08011b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 476
    const v3, 0x7f0b071d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 477
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 479
    const v3, 0x7f0b0564

    invoke-virtual {p0, v3}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 482
    new-instance v1, Lcom/keniu/security/software/h;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/h;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 499
    const v1, 0x7f0b054c

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 500
    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 501
    const v1, 0x7f0b0682

    invoke-virtual {p0, v1}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/software/i;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/i;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 508
    const v1, 0x7f0b021a

    invoke-virtual {p0, v1}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/software/j;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/j;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 515
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/software/APKManagerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/keniu/security/software/APKManagerActivity;->r:Z

    return v0
.end method

.method static synthetic f(Lcom/keniu/security/software/APKManagerActivity;)Lcom/keniu/security/software/k;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->f:Lcom/keniu/security/software/k;

    return-object v0
.end method

.method static synthetic g(Lcom/keniu/security/software/APKManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/keniu/security/software/APKManagerActivity;->a()V

    return-void
.end method

.method static synthetic h(Lcom/keniu/security/software/APKManagerActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/keniu/security/software/APKManagerActivity;->o:I

    return v0
.end method

.method static synthetic i(Lcom/keniu/security/software/APKManagerActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/keniu/security/software/APKManagerActivity;->j:J

    return-wide v0
.end method

.method static synthetic j(Lcom/keniu/security/software/APKManagerActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    return v0
.end method

.method static synthetic k(Lcom/keniu/security/software/APKManagerActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    return v0
.end method

.method static synthetic l(Lcom/keniu/security/software/APKManagerActivity;)I
    .locals 2
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    return v0
.end method

.method static synthetic m(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/keniu/security/software/APKManagerActivity;)I
    .locals 2
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    return v0
.end method

.method static synthetic o(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/keniu/security/software/APKManagerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic q(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic r(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->m:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic s(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic w(Lcom/keniu/security/software/APKManagerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/keniu/security/software/APKManagerActivity;->p:Z

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 522
    if-nez p1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget v2, p0, Lcom/keniu/security/software/APKManagerActivity;->o:I

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/d/a;

    .line 528
    iget v2, v1, Lcom/keniu/security/d/a;->e:I

    if-eq v2, v8, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/keniu/security/software/APKManagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 532
    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 534
    const/4 v3, 0x0

    .line 535
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 536
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/keniu/security/d/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v7

    .line 542
    :goto_1
    if-eqz v2, :cond_4

    .line 543
    iget-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v7

    move v4, v2

    :goto_2
    if-lez v4, :cond_4

    .line 545
    iget-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->e:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/keniu/security/d/a;

    move-object v3, v0

    .line 546
    invoke-virtual {v3}, Lcom/keniu/security/d/a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Lcom/keniu/security/d/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/keniu/security/d/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 549
    iget-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v7

    move v5, v2

    :goto_3
    if-lez v5, :cond_3

    .line 550
    iget-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->e:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keniu/security/d/a;

    .line 552
    invoke-virtual {v2}, Lcom/keniu/security/d/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/keniu/security/d/a;->a()Ljava/lang/String;

    move-result-object v6

    if-ne v2, v6, :cond_5

    .line 554
    iget-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->e:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 555
    iput v8, v1, Lcom/keniu/security/d/a;->e:I

    .line 556
    invoke-virtual {v1, v7}, Lcom/keniu/security/d/a;->b(Z)V

    .line 557
    invoke-virtual {v1, v7}, Lcom/keniu/security/d/a;->a(Z)V

    .line 558
    iget-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->d:Ljava/util/List;

    invoke-interface {v2, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 559
    iget v2, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/keniu/security/software/APKManagerActivity;->g:I

    .line 560
    iget v2, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    sub-int/2addr v2, v7

    iput v2, p0, Lcom/keniu/security/software/APKManagerActivity;->h:I

    .line 561
    add-int/lit8 v2, v4, -0x1

    .line 549
    :goto_4
    add-int/lit8 v4, v5, -0x1

    move v5, v4

    move v4, v2

    goto :goto_3

    :cond_3
    move v2, v4

    .line 544
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    goto :goto_2

    .line 576
    :cond_4
    iget-object v1, p0, Lcom/keniu/security/software/APKManagerActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 577
    iget-object v1, p0, Lcom/keniu/security/software/APKManagerActivity;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 578
    iget-object v1, p0, Lcom/keniu/security/software/APKManagerActivity;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 579
    new-instance v1, Lcom/keniu/security/software/k;

    invoke-virtual {p0}, Lcom/keniu/security/software/APKManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/software/APKManagerActivity;->c:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/keniu/security/software/k;-><init>(Lcom/keniu/security/software/APKManagerActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/keniu/security/software/APKManagerActivity;->f:Lcom/keniu/security/software/k;

    .line 582
    iget-object v1, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/keniu/security/software/APKManagerActivity;->f:Lcom/keniu/security/software/k;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 583
    iget-object v1, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    :cond_5
    move v2, v4

    goto :goto_4

    :cond_6
    move v2, v3

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->requestWindowFeature(I)Z

    .line 86
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->setContentView(I)V

    .line 87
    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    const v1, 0x7f0b071c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->m:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->m:Landroid/widget/Button;

    const v1, 0x7f0b0670

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 92
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->m:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/software/a;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/a;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->n:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->n:Landroid/widget/Button;

    const v1, 0x7f0b056b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 133
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->n:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/software/c;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/c;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v0, 0x7f08012d

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->a:Landroid/widget/ProgressBar;

    .line 191
    const v0, 0x7f08012f

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->b:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f08012e

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->l:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f08012c

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    .line 194
    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->k:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->A:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/software/d;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/d;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 214
    const-string v0, "mg_apk_main"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 338
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 344
    :goto_0
    return-object v0

    .line 340
    :pswitch_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/keniu/security/software/APKManagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030039

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f08011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f08011b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0b071d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v3, 0x7f0b0564

    invoke-virtual {p0, v3}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/keniu/security/software/h;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/h;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v9}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b054c

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0682

    invoke-virtual {p0, v1}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/software/i;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/i;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b021a

    invoke-virtual {p0, v1}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/software/j;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/j;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    .line 342
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/software/APKManagerActivity;->o:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->f()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/keniu/security/software/APKManagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f0300f6

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f080363

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/software/CustomTextView;

    const v4, 0x7f0b0573

    invoke-virtual {p0, v4}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->i()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/keniu/security/software/CustomTextView;->a(Ljava/lang/String;)V

    const v1, 0x7f080364

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0b0574

    invoke-virtual {p0, v4}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keniu/security/util/ax;->f(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080365

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/software/CustomTextView;

    const v4, 0x7f0b0576

    invoke-virtual {p0, v4}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->e()Ljava/lang/String;

    move-result-object v7

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/keniu/security/software/CustomTextView;->a(Ljava/lang/String;)V

    const v1, 0x7f080366

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0b0577

    invoke-virtual {p0, v4}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v9}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b0571

    invoke-virtual {p0, v2}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v2, 0x7f0b0670

    new-instance v3, Lcom/keniu/security/software/e;

    invoke-direct {v3, p0, v0}, Lcom/keniu/security/software/e;-><init>(Lcom/keniu/security/software/APKManagerActivity;Lcom/keniu/security/d/a;)V

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b057c

    new-instance v2, Lcom/keniu/security/software/f;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/f;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    new-instance v0, Lcom/keniu/security/software/g;

    invoke-direct {v0, p0}, Lcom/keniu/security/software/g;-><init>(Lcom/keniu/security/software/APKManagerActivity;)V

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto/16 :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/keniu/security/software/APKManagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 590
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/software/APKManagerActivity;->p:Z

    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 249
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b0220

    const v4, 0x7f0b021f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 614
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    .line 658
    :goto_0
    return v0

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    iget v0, v0, Lcom/keniu/security/d/a;->e:I

    if-ne v0, v2, :cond_5

    .line 620
    iget-boolean v0, p0, Lcom/keniu/security/software/APKManagerActivity;->q:Z

    if-eqz v0, :cond_3

    move v1, v2

    .line 621
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 623
    invoke-virtual {v0, v3}, Lcom/keniu/security/d/a;->b(Z)V

    .line 621
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 625
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 627
    iput-boolean v3, p0, Lcom/keniu/security/software/APKManagerActivity;->q:Z

    .line 656
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->f:Lcom/keniu/security/software/k;

    invoke-virtual {v0}, Lcom/keniu/security/software/k;->notifyDataSetChanged()V

    .line 657
    invoke-direct {p0}, Lcom/keniu/security/software/APKManagerActivity;->a()V

    move v0, v2

    .line 658
    goto :goto_0

    :cond_3
    move v1, v2

    .line 629
    :goto_3
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 630
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 631
    invoke-virtual {v0, v2}, Lcom/keniu/security/d/a;->b(Z)V

    .line 629
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 633
    :cond_4
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 634
    iput-boolean v2, p0, Lcom/keniu/security/software/APKManagerActivity;->q:Z

    goto :goto_2

    .line 636
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    iget v0, v0, Lcom/keniu/security/d/a;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 637
    iget-boolean v0, p0, Lcom/keniu/security/software/APKManagerActivity;->r:Z

    if-eqz v0, :cond_7

    move v1, v2

    .line 638
    :goto_4
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 639
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 640
    invoke-virtual {v0, v3}, Lcom/keniu/security/d/a;->b(Z)V

    .line 638
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 642
    :cond_6
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 644
    iput-boolean v3, p0, Lcom/keniu/security/software/APKManagerActivity;->r:Z

    goto :goto_2

    :cond_7
    move v1, v2

    .line 646
    :goto_5
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 647
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 648
    invoke-virtual {v0, v2}, Lcom/keniu/security/d/a;->b(Z)V

    .line 646
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 650
    :cond_8
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 651
    iput-boolean v2, p0, Lcom/keniu/security/software/APKManagerActivity;->r:Z

    goto/16 :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 595
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 596
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 597
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v0, v3

    .line 608
    :goto_0
    return v0

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    iget v0, v0, Lcom/keniu/security/d/a;->e:I

    if-ne v0, v3, :cond_2

    .line 601
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 602
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_1
    move v0, v3

    .line 608
    goto :goto_0

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/software/APKManagerActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/d/a;

    iget v0, p0, Lcom/keniu/security/d/a;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 604
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 605
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method
