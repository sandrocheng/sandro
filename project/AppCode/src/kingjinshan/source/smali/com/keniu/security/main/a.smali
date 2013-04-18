.class public final Lcom/keniu/security/main/a;
.super Ljava/lang/Object;
.source "BatteryDownloadProgressDialog.java"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4


# instance fields
.field private i:Lcom/hoi/widget/q;

.field private j:Lcom/ijinshan/battery/recommand/a;

.field private k:Z

.field private l:Landroid/content/Context;

.field private m:Z

.field private n:I

.field private o:I

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/keniu/security/main/a;->k:Z

    .line 44
    iput-boolean v0, p0, Lcom/keniu/security/main/a;->m:Z

    .line 54
    iput v0, p0, Lcom/keniu/security/main/a;->n:I

    .line 55
    iput v0, p0, Lcom/keniu/security/main/a;->o:I

    .line 67
    new-instance v0, Lcom/keniu/security/main/b;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/b;-><init>(Lcom/keniu/security/main/a;)V

    iput-object v0, p0, Lcom/keniu/security/main/a;->p:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/main/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/keniu/security/main/a;->o:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/main/a;)Lcom/hoi/widget/q;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    return-object v0
.end method

.method private a(I)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 255
    iget-boolean v0, p0, Lcom/keniu/security/main/a;->m:Z

    if-nez v0, :cond_0

    .line 256
    new-instance v1, Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    invoke-direct {v1, v0, v8}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 257
    iget-object v0, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v2, 0x7f0b0219

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 259
    iget-object v0, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 261
    const v2, 0x7f03003b

    invoke-virtual {v0, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 262
    const v0, 0x7f080121

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v5, 0x7f0b0315

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v5, 0x7f0b0426

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v5, 0x7f0b0427

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v6, 0x7f0b0424

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    const v0, 0x7f080122

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 270
    new-instance v3, Lcom/keniu/security/main/e;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/e;-><init>(Lcom/keniu/security/main/a;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 285
    iget-object v0, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v2, 0x7f0b05e2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 288
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 290
    :cond_0
    return-void

    .line 264
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v6, 0x7f0b03fc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v6, 0x7f0b0417

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/keniu/security/main/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/keniu/security/main/a;->n:I

    return p1
.end method

.method private b(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v1, 0x7f0b0427

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    packed-switch p1, :pswitch_data_0

    .line 304
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v2, 0x7f0b0424

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    .line 296
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v2, 0x7f0b03fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v2, 0x7f0b0417

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/keniu/security/main/a;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 26
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    iget v1, p0, Lcom/keniu/security/main/a;->n:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->a(I)V

    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    iget v1, p0, Lcom/keniu/security/main/a;->o:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->c(I)V

    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    iget-object v1, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v2, 0x7f0b0316

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/keniu/security/main/a;->n:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    invoke-virtual {v0, v7}, Lcom/hoi/widget/q;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/keniu/security/main/a;)Lcom/ijinshan/battery/recommand/a;
    .locals 1
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/main/a;->j:Lcom/ijinshan/battery/recommand/a;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/main/a;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 26
    iget-boolean v0, p0, Lcom/keniu/security/main/a;->m:Z

    if-nez v0, :cond_0

    new-instance v1, Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    invoke-direct {v1, v0, v8}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iget-object v0, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v2, 0x7f0b0219

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f03003b

    invoke-virtual {v0, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080121

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v5, 0x7f0b0315

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v5, 0x7f0b0426

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v5, 0x7f0b0427

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v6, 0x7f0b0424

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080122

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Lcom/keniu/security/main/e;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/e;-><init>(Lcom/keniu/security/main/a;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v2, 0x7f0b05e2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    :cond_0
    return-void

    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v6, 0x7f0b03fc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v6, 0x7f0b0417

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/keniu/security/main/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 58
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    iget v1, p0, Lcom/keniu/security/main/a;->n:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->a(I)V

    .line 59
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    iget v1, p0, Lcom/keniu/security/main/a;->o:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->c(I)V

    .line 60
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    iget-object v1, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v2, 0x7f0b0316

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/keniu/security/main/a;->n:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->a(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    invoke-virtual {v0, v7}, Lcom/hoi/widget/q;->a(Z)V

    .line 65
    return-void
.end method

.method static synthetic e(Lcom/keniu/security/main/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/keniu/security/main/a;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/keniu/security/main/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/main/a;->k:Z

    return v0
.end method

.method static synthetic g(Lcom/keniu/security/main/a;)Lcom/ijinshan/battery/recommand/a;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/keniu/security/main/a;->j:Lcom/ijinshan/battery/recommand/a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/main/a;->m:Z

    .line 52
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    invoke-virtual {v0}, Lcom/hoi/widget/q;->dismiss()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    .line 212
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 215
    iput-boolean v4, p0, Lcom/keniu/security/main/a;->k:Z

    .line 217
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v1, 0x7f0b0313

    invoke-static {v0, v1}, Lcom/hoi/widget/q;->a(Landroid/content/Context;I)Lcom/hoi/widget/q;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    .line 221
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v3, 0x7f0b0311

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/keniu/security/main/c;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/c;-><init>(Lcom/keniu/security/main/a;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hoi/widget/q;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v3, 0x7f0b0312

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/keniu/security/main/d;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/d;-><init>(Lcom/keniu/security/main/a;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hoi/widget/q;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    invoke-virtual {v0}, Lcom/hoi/widget/q;->show()V

    .line 242
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    iget-object v1, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    const v2, 0x7f0b0318

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->b(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/keniu/security/main/a;->i:Lcom/hoi/widget/q;

    invoke-virtual {v0, v4}, Lcom/hoi/widget/q;->a(Z)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/a;->j:Lcom/ijinshan/battery/recommand/a;

    if-nez v0, :cond_1

    .line 249
    new-instance v0, Lcom/ijinshan/battery/recommand/a;

    iget-object v1, p0, Lcom/keniu/security/main/a;->p:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keniu/security/main/a;->l:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ijinshan/battery/recommand/a;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/main/a;->j:Lcom/ijinshan/battery/recommand/a;

    .line 250
    iget-object v0, p0, Lcom/keniu/security/main/a;->j:Lcom/ijinshan/battery/recommand/a;

    invoke-virtual {v0}, Lcom/ijinshan/battery/recommand/a;->start()V

    .line 252
    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/keniu/security/main/a;->j:Lcom/ijinshan/battery/recommand/a;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/keniu/security/main/a;->j:Lcom/ijinshan/battery/recommand/a;

    invoke-virtual {v0}, Lcom/ijinshan/battery/recommand/a;->isAlive()Z

    move-result v0

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
