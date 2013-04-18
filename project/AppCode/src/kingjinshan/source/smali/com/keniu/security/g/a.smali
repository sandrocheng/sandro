.class public final Lcom/keniu/security/g/a;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"


# static fields
.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2


# instance fields
.field public a:Landroid/content/Context;

.field private b:Lcom/hoi/widget/q;

.field private c:Landroid/app/ProgressDialog;

.field private d:Lcom/hoi/widget/q;

.field private e:Lcom/keniu/security/util/ap;

.field private f:Z

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/g/a;->f:Z

    .line 279
    new-instance v0, Lcom/keniu/security/g/d;

    invoke-direct {v0, p0}, Lcom/keniu/security/g/d;-><init>(Lcom/keniu/security/g/a;)V

    iput-object v0, p0, Lcom/keniu/security/g/a;->g:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    .line 45
    iput-boolean p2, p0, Lcom/keniu/security/g/a;->f:Z

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/keniu/security/g/a;->b:Lcom/hoi/widget/q;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/g/a;Lcom/hoi/widget/q;)Lcom/hoi/widget/q;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/keniu/security/g/a;->b:Lcom/hoi/widget/q;

    return-object p1
.end method

.method private a(I)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 593
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 597
    :cond_0
    new-instance v1, Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v8}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 600
    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0409

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 601
    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 602
    const v2, 0x7f03003b

    invoke-virtual {v0, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 603
    const v0, 0x7f080121

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v5, 0x7f0b03fb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

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

    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v5, 0x7f0b0427

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    packed-switch p1, :pswitch_data_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v6, 0x7f0b0424

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    const v0, 0x7f080122

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 610
    new-instance v3, Lcom/keniu/security/g/h;

    invoke-direct {v3, p0}, Lcom/keniu/security/g/h;-><init>(Lcom/keniu/security/g/a;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 625
    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b05e2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 628
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto/16 :goto_0

    .line 605
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v6, 0x7f0b03fc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v6, 0x7f0b03fd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v6, 0x7f0b0417

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/keniu/security/f/t;Lcom/keniu/security/f/v;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 187
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 189
    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 190
    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b040d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/keniu/security/f/v;->f:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget v5, p2, Lcom/keniu/security/f/v;->e:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 193
    const v1, 0x7f0b042e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 194
    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b03fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/g/b;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/g/b;-><init>(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 204
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 205
    return-void
.end method

.method private a(Lcom/keniu/security/f/v;Lcom/keniu/security/f/t;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 410
    iget-object v0, p1, Lcom/keniu/security/f/v;->c:Ljava/lang/String;

    .line 411
    iget-object v1, p1, Lcom/keniu/security/f/v;->d:Ljava/lang/String;

    .line 412
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v2

    .line 413
    invoke-virtual {v2}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    move-result-object v2

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v5, 0x7f0b040e

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v9

    const/4 v2, 0x1

    aput-object v0, v6, v2

    const/4 v0, 0x2

    iget v2, p1, Lcom/keniu/security/f/v;->b:I

    int-to-long v7, v2

    invoke-static {v7, v8}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    new-instance v1, Lcom/keniu/security/util/aq;

    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v9}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 424
    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v3, 0x7f0b0409

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 425
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 426
    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    if-eqz p3, :cond_0

    const v2, 0x7f0b03f6

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 429
    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b03fa

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/keniu/security/g/e;

    invoke-direct {v2, p0, p2}, Lcom/keniu/security/g/e;-><init>(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 445
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 446
    return-void

    .line 426
    :cond_0
    const v2, 0x7f0b0513

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/g/a;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 35
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v1, Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v8}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0409

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

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

    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v5, 0x7f0b03fb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

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

    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v5, 0x7f0b0427

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    packed-switch p1, :pswitch_data_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

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

    new-instance v3, Lcom/keniu/security/g/h;

    invoke-direct {v3, p0}, Lcom/keniu/security/g/h;-><init>(Lcom/keniu/security/g/a;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b05e2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    :cond_0
    return-void

    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v6, 0x7f0b03fc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v6, 0x7f0b03fd

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

    iget-object v5, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v6, 0x7f0b0417

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;Lcom/keniu/security/f/v;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 35
    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030120

    invoke-virtual {v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f080406

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    const v1, 0x7f080407

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/keniu/security/g/f;

    invoke-direct {v2, p0, p2, p1}, Lcom/keniu/security/g/f;-><init>(Lcom/keniu/security/g/a;Lcom/keniu/security/f/v;Lcom/keniu/security/f/t;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080408

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v4, 0x7f0b0401

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, p2, Lcom/keniu/security/f/v;->b:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f080409

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v5, 0x7f0b0402

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p2, Lcom/keniu/security/f/v;->e:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v5, 0x7f0b0410

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p2, Lcom/keniu/security/f/v;->c:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v0, v4, v9}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v5, 0x7f0b0219

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    iget-object v3, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v4, 0x7f0b03fa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keniu/security/g/g;

    invoke-direct {v4, p0, v1, p1, v2}, Lcom/keniu/security/g/g;-><init>(Lcom/keniu/security/g/a;Landroid/widget/RadioButton;Lcom/keniu/security/f/t;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v3, v4}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b021a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/g/a;->e:Lcom/keniu/security/util/ap;

    iget-object v0, p0, Lcom/keniu/security/g/a;->e:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/g/a;Lcom/keniu/security/f/v;Lcom/keniu/security/f/t;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 35
    iget-object v0, p1, Lcom/keniu/security/f/v;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/keniu/security/f/v;->d:Ljava/lang/String;

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v5, 0x7f0b040e

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v9

    const/4 v2, 0x1

    aput-object v0, v6, v2

    const/4 v0, 0x2

    iget v2, p1, Lcom/keniu/security/f/v;->b:I

    int-to-long v7, v2

    invoke-static {v7, v8}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/util/aq;

    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v9}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v3, 0x7f0b0409

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    if-eqz p3, :cond_0

    const v2, 0x7f0b03f6

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b03fa

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/keniu/security/g/e;

    invoke-direct {v2, p0, p2}, Lcom/keniu/security/g/e;-><init>(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    return-void

    :cond_0
    const v2, 0x7f0b0513

    goto :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/g/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/keniu/security/g/a;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/g/a;Lcom/hoi/widget/q;)Lcom/hoi/widget/q;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/keniu/security/g/a;->d:Lcom/hoi/widget/q;

    return-object p1
.end method

.method private b(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 632
    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v1, 0x7f0b0427

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 633
    packed-switch p1, :pswitch_data_0

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0424

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 652
    :goto_0
    return-object v0

    .line 638
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b03fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 643
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b03fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 646
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0417

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 633
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/keniu/security/f/t;Lcom/keniu/security/f/v;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 211
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 213
    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 214
    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b040c

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/keniu/security/f/v;->f:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget v5, p2, Lcom/keniu/security/f/v;->e:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 217
    const v1, 0x7f0b042e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 218
    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b03fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/g/c;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/g/c;-><init>(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 228
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 229
    return-void
.end method

.method static synthetic b(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;Lcom/keniu/security/f/v;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 35
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b040d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/keniu/security/f/v;->f:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget v5, p2, Lcom/keniu/security/f/v;->e:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b042e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b03fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/g/b;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/g/b;-><init>(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 233
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/keniu/security/e;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 237
    const-string v1, "antivirus.db"

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v3, 0x7f0b041c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v3, 0x7f0b042a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0409

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    new-instance v2, Lcom/keniu/security/util/aq;

    iget-object v3, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 248
    invoke-virtual {v2, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 249
    const v1, 0x7f0b0218

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 250
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 251
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 253
    return-void
.end method

.method private c(Lcom/keniu/security/f/t;Lcom/keniu/security/f/v;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 450
    iget-object v0, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 451
    const v1, 0x7f030120

    invoke-virtual {v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 453
    const v0, 0x7f080406

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 455
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 456
    const v1, 0x7f080407

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 458
    new-instance v2, Lcom/keniu/security/g/f;

    invoke-direct {v2, p0, p2, p1}, Lcom/keniu/security/g/f;-><init>(Lcom/keniu/security/g/a;Lcom/keniu/security/f/v;Lcom/keniu/security/f/t;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    const v1, 0x7f080408

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 467
    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v4, 0x7f0b0401

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, p2, Lcom/keniu/security/f/v;->b:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const v2, 0x7f080409

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 472
    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v5, 0x7f0b0402

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p2, Lcom/keniu/security/f/v;->e:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v5, 0x7f0b0410

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p2, Lcom/keniu/security/f/v;->c:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 477
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v0, v4, v9}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 480
    iget-object v4, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v5, 0x7f0b0219

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 482
    invoke-virtual {v0, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 483
    iget-object v3, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v4, 0x7f0b03fa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keniu/security/g/g;

    invoke-direct {v4, p0, v1, p1, v2}, Lcom/keniu/security/g/g;-><init>(Lcom/keniu/security/g/a;Landroid/widget/RadioButton;Lcom/keniu/security/f/t;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v3, v4}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 500
    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b021a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 501
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/g/a;->e:Lcom/keniu/security/util/ap;

    .line 502
    iget-object v0, p0, Lcom/keniu/security/g/a;->e:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 503
    return-void
.end method

.method static synthetic c(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;Lcom/keniu/security/f/v;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 35
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b040c

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/keniu/security/f/v;->f:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget v5, p2, Lcom/keniu/security/f/v;->e:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b042e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b03fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/g/c;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/g/c;-><init>(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    return-void
.end method

.method static synthetic c(Lcom/keniu/security/g/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/keniu/security/g/a;->f:Z

    return v0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 257
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/keniu/security/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->n()Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v4, 0x7f0b041b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v4, 0x7f0b042b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0409

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v2, Lcom/keniu/security/util/aq;

    iget-object v3, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 272
    invoke-virtual {v2, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 273
    const v1, 0x7f0b0218

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 274
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 275
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 277
    return-void
.end method

.method static synthetic d(Lcom/keniu/security/g/a;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 35
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/keniu/security/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v4, 0x7f0b041b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v4, 0x7f0b042b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0409

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/util/aq;

    iget-object v3, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v2, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0218

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 380
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 382
    const v1, 0x7f0b0409

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 384
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v1

    .line 386
    const-string v2, "antivirus.db"

    invoke-virtual {v1, v2}, Lcom/keniu/security/f/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v3, 0x7f0b0247

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 389
    const v1, 0x7f0b0218

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 390
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 391
    return-void
.end method

.method static synthetic e(Lcom/keniu/security/g/a;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/keniu/security/e;->b(Landroid/content/Context;)Ljava/lang/String;

    const-string v1, "antivirus.db"

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v3, 0x7f0b041c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v3, 0x7f0b042a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0409

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/util/aq;

    iget-object v3, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v2, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0218

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 395
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 397
    const v1, 0x7f0b0409

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 399
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, Lcom/keniu/security/f/ab;->n()Ljava/lang/String;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v3, 0x7f0b0247

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 404
    const v1, 0x7f0b0218

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 405
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 406
    return-void
.end method

.method static synthetic f(Lcom/keniu/security/g/a;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 35
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0409

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v1

    const-string v2, "antivirus.db"

    invoke-virtual {v1, v2}, Lcom/keniu/security/f/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v3, 0x7f0b0247

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0218

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    return-void
.end method

.method static synthetic g(Lcom/keniu/security/g/a;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 35
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0409

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/f/ab;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v3, 0x7f0b0247

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0218

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    return-void
.end method

.method static synthetic h(Lcom/keniu/security/g/a;)Lcom/keniu/security/util/ap;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/keniu/security/g/a;->e:Lcom/keniu/security/util/ap;

    return-object v0
.end method

.method static synthetic i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/keniu/security/g/a;->d:Lcom/hoi/widget/q;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/keniu/security/g/n;

    invoke-direct {v0, p0}, Lcom/keniu/security/g/n;-><init>(Lcom/keniu/security/g/a;)V

    .line 50
    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/g/n;->a(Landroid/content/Context;Z)V

    .line 51
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 54
    new-instance v0, Lcom/keniu/security/g/n;

    invoke-direct {v0, p0}, Lcom/keniu/security/g/n;-><init>(Lcom/keniu/security/g/a;)V

    .line 55
    iget-object v1, p0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/keniu/security/g/n;->a(Landroid/content/Context;Z)V

    .line 56
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 792
    iget-object v0, p0, Lcom/keniu/security/g/a;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/g/a;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/keniu/security/g/a;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 795
    iput-object v1, p0, Lcom/keniu/security/g/a;->c:Landroid/app/ProgressDialog;

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/g/a;->d:Lcom/hoi/widget/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/g/a;->d:Lcom/hoi/widget/q;

    invoke-virtual {v0}, Lcom/hoi/widget/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/keniu/security/g/a;->d:Lcom/hoi/widget/q;

    invoke-virtual {v0}, Lcom/hoi/widget/q;->dismiss()V

    .line 800
    iput-object v1, p0, Lcom/keniu/security/g/a;->d:Lcom/hoi/widget/q;

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/g/a;->b:Lcom/hoi/widget/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/g/a;->b:Lcom/hoi/widget/q;

    invoke-virtual {v0}, Lcom/hoi/widget/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    iget-object v0, p0, Lcom/keniu/security/g/a;->b:Lcom/hoi/widget/q;

    invoke-virtual {v0}, Lcom/hoi/widget/q;->dismiss()V

    .line 805
    iput-object v1, p0, Lcom/keniu/security/g/a;->b:Lcom/hoi/widget/q;

    .line 807
    :cond_2
    return-void
.end method
