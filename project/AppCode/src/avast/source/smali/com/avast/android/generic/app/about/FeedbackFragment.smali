.class public Lcom/avast/android/generic/app/about/FeedbackFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "FeedbackFragment.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:I

.field private c:Landroid/widget/ScrollView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/avast/android/generic/ui/widget/SelectorRow;

.field private l:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:[B

.field private r:[B

.field private s:Lcom/avast/android/generic/g/c;

.field private t:Lcom/avast/android/generic/app/about/n;

.field private u:Landroid/app/ProgressDialog;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avast/android/generic/app/about/FeedbackFragment;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 144
    return-void
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 425
    iput p1, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->b:I

    .line 426
    iget v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->b:I

    if-ne v0, v3, :cond_1

    .line 427
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->l:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)V

    .line 428
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)V

    .line 429
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)V

    .line 439
    :goto_0
    iget v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->b:I

    if-ne v0, v3, :cond_0

    .line 440
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    :cond_0
    return-void

    .line 430
    :cond_1
    iget v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 431
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->l:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)V

    .line 432
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)V

    .line 433
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    goto :goto_0

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->l:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 436
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 437
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/generic/app/about/FeedbackFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/about/FeedbackFragment;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/about/FeedbackFragment;Lcom/avast/android/generic/app/about/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/about/FeedbackFragment;->a(Lcom/avast/android/generic/app/about/n;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/about/FeedbackFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/about/FeedbackFragment;->a(Z)V

    return-void
.end method

.method private a(Lcom/avast/android/generic/app/about/n;)V
    .locals 2
    .parameter

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->g()V

    .line 566
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->u:Landroid/app/ProgressDialog;

    .line 567
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->u:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 568
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->u:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/avast/android/generic/app/about/l;

    invoke-direct {v1, p0, p1}, Lcom/avast/android/generic/app/about/l;-><init>(Lcom/avast/android/generic/app/about/FeedbackFragment;Lcom/avast/android/generic/app/about/n;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 575
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->u:Landroid/app/ProgressDialog;

    sget v1, Lcom/avast/android/generic/z;->bt:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 577
    return-void
.end method

.method private a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)V
    .locals 1
    .parameter

    .prologue
    .line 493
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 494
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 495
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 550
    if-eqz p1, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->cs:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 552
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->j()V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->g:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/generic/app/about/FeedbackFragment;)[B
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->q:[B

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/app/about/FeedbackFragment;[B)[B
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->q:[B

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/app/about/FeedbackFragment;Lcom/avast/android/generic/app/about/n;)Lcom/avast/android/generic/app/about/n;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->t:Lcom/avast/android/generic/app/about/n;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/app/about/FeedbackFragment;)[B
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->r:[B

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/generic/app/about/FeedbackFragment;[B)[B
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->r:[B

    return-object p1
.end method

.method private c()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 450
    new-instance v4, Lcom/avast/android/generic/util/ac;

    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/avast/android/generic/util/ac;-><init>(Landroid/content/Context;)V

    .line 453
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->q:[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->r:[B

    if-eqz v0, :cond_6

    .line 454
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 455
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->q:[B

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 457
    :goto_0
    iget-object v5, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 458
    iget-object v5, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->r:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 461
    :cond_0
    iget-object v5, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->q:[B

    array-length v5, v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/avast/android/generic/util/ac;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 462
    iget-object v6, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->r:[B

    array-length v6, v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lcom/avast/android/generic/util/ac;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 464
    iget-object v7, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcom/avast/android/generic/z;->ax:I

    invoke-virtual {p0, v9}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Ljava/lang/String;)V

    .line 466
    iget-object v5, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/avast/android/generic/z;->bc:I

    invoke-virtual {p0, v8}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Ljava/lang/String;)V

    .line 469
    :goto_1
    iget-object v5, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->s:Lcom/avast/android/generic/g/c;

    if-eqz v5, :cond_2

    .line 470
    iget-object v5, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->l:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 471
    iget-object v5, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->s:Lcom/avast/android/generic/g/c;

    invoke-virtual {v5}, Lcom/avast/android/generic/g/c;->w()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 473
    :cond_1
    iget-object v5, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->s:Lcom/avast/android/generic/g/c;

    invoke-virtual {v5}, Lcom/avast/android/generic/g/c;->w()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/avast/android/generic/util/ac;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 475
    iget-object v6, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->l:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/avast/android/generic/z;->as:I

    invoke-virtual {p0, v8}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Ljava/lang/String;)V

    .line 478
    :cond_2
    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 479
    iget-object v2, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->o:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/avast/android/generic/z;->bR:I

    invoke-virtual {p0, v5}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v0, v1}, Lcom/avast/android/generic/util/ac;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :cond_3
    :goto_2
    return-void

    .line 482
    :cond_4
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->o:Landroid/widget/Button;

    sget v1, Lcom/avast/android/generic/z;->bR:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    move-wide v0, v2

    goto/16 :goto_0

    :cond_6
    move-wide v0, v2

    goto :goto_1
.end method

.method private c(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 291
    sget v0, Lcom/avast/android/generic/t;->o:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->d:Landroid/widget/EditText;

    .line 292
    sget v0, Lcom/avast/android/generic/t;->e:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->e:Landroid/widget/TextView;

    .line 293
    sget v0, Lcom/avast/android/generic/t;->L:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->f:Landroid/widget/TextView;

    .line 294
    sget v0, Lcom/avast/android/generic/t;->aL:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->g:Landroid/widget/EditText;

    .line 295
    sget v0, Lcom/avast/android/generic/t;->aH:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->h:Landroid/widget/EditText;

    .line 296
    sget v0, Lcom/avast/android/generic/t;->bd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->i:Landroid/widget/TextView;

    .line 297
    sget v0, Lcom/avast/android/generic/t;->A:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->j:Landroid/widget/TextView;

    .line 299
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/avast/android/generic/app/about/f;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/about/f;-><init>(Lcom/avast/android/generic/app/about/FeedbackFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->i:Landroid/widget/TextView;

    sget v1, Lcom/avast/android/generic/z;->cV:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/avast/android/generic/app/about/g;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/about/g;-><init>(Lcom/avast/android/generic/app/about/FeedbackFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 334
    return-void
.end method

.method static synthetic c(Lcom/avast/android/generic/app/about/FeedbackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->c()V

    return-void
.end method

.method static synthetic d(Lcom/avast/android/generic/app/about/FeedbackFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->b:I

    return v0
.end method

.method private d(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 342
    sget v0, Lcom/avast/android/generic/t;->t:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/SelectorRow;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->k:Lcom/avast/android/generic/ui/widget/SelectorRow;

    .line 343
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->k:Lcom/avast/android/generic/ui/widget/SelectorRow;

    sget v1, Lcom/avast/android/generic/z;->bM:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/SelectorRow;->c(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->k:Lcom/avast/android/generic/ui/widget/SelectorRow;

    sget v1, Lcom/avast/android/generic/z;->bL:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/SelectorRow;->a(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->k:Lcom/avast/android/generic/ui/widget/SelectorRow;

    sget v1, Lcom/avast/android/generic/o;->b:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/SelectorRow;->a(I)V

    .line 346
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 348
    iget-object v1, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->k:Lcom/avast/android/generic/ui/widget/SelectorRow;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->a([I)V

    .line 349
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->k:Lcom/avast/android/generic/ui/widget/SelectorRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->c()I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->b:I

    .line 350
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->k:Lcom/avast/android/generic/ui/widget/SelectorRow;

    new-instance v1, Lcom/avast/android/generic/app/about/h;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/about/h;-><init>(Lcom/avast/android/generic/app/about/FeedbackFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/SelectorRow;->a(Lcom/avast/android/generic/ui/widget/u;)V

    .line 356
    return-void

    .line 346
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 503
    const/4 v0, 0x1

    .line 505
    iget-object v2, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->h:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 507
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v2

    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v1

    .line 511
    :goto_0
    iget-object v3, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->d:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 512
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 513
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v3

    .line 515
    and-int/lit8 v2, v2, 0x0

    .line 517
    :cond_0
    if-nez v2, :cond_1

    .line 519
    iget-object v3, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->c:Landroid/widget/ScrollView;

    invoke-virtual {v3, v1, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 521
    :cond_1
    return v2

    :cond_2
    move v2, v0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/avast/android/generic/app/about/FeedbackFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private e(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 364
    new-instance v1, Lcom/avast/android/generic/app/about/i;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/about/i;-><init>(Lcom/avast/android/generic/app/about/FeedbackFragment;)V

    .line 371
    sget v0, Lcom/avast/android/generic/t;->T:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->l:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 372
    sget v0, Lcom/avast/android/generic/t;->ag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 373
    sget v0, Lcom/avast/android/generic/t;->aP:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 375
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->l:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 376
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->l:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    sget v2, Lcom/avast/android/generic/z;->cF:I

    invoke-virtual {p0, v2}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->l:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    sget v2, Lcom/avast/android/generic/z;->as:I

    invoke-virtual {p0, v2}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->l:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 379
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->l:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 381
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 382
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    sget v2, Lcom/avast/android/generic/z;->bI:I

    invoke-virtual {p0, v2}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    sget v2, Lcom/avast/android/generic/z;->ax:I

    invoke-virtual {p0, v2}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 386
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 387
    return-void
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avast/android/generic/app/about/FeedbackFragment;->a:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/avast/android/generic/app/about/FeedbackFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method private f(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 395
    sget v0, Lcom/avast/android/generic/t;->ba:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->o:Landroid/widget/Button;

    .line 396
    sget v0, Lcom/avast/android/generic/t;->bc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->p:Landroid/widget/Button;

    .line 397
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->o:Landroid/widget/Button;

    new-instance v1, Lcom/avast/android/generic/app/about/j;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/about/j;-><init>(Lcom/avast/android/generic/app/about/FeedbackFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->p:Landroid/widget/Button;

    new-instance v1, Lcom/avast/android/generic/app/about/k;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/about/k;-><init>(Lcom/avast/android/generic/app/about/FeedbackFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    return-void
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 540
    iget v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/avast/android/generic/app/about/FeedbackFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->u:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->u:Landroid/app/ProgressDialog;

    .line 587
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/avast/android/generic/app/about/FeedbackFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->l:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic i(Lcom/avast/android/generic/app/about/FeedbackFragment;)Lcom/avast/android/generic/g/c;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->s:Lcom/avast/android/generic/g/c;

    return-object v0
.end method

.method static synthetic j(Lcom/avast/android/generic/app/about/FeedbackFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->m:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic k(Lcom/avast/android/generic/app/about/FeedbackFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->n:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic l(Lcom/avast/android/generic/app/about/FeedbackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->g()V

    return-void
.end method

.method static synthetic m(Lcom/avast/android/generic/app/about/FeedbackFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/avast/android/generic/app/about/FeedbackFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/avast/android/generic/app/about/FeedbackFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic p(Lcom/avast/android/generic/app/about/FeedbackFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/avast/android/generic/app/about/FeedbackFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic r(Lcom/avast/android/generic/app/about/FeedbackFragment;)Lcom/avast/android/generic/app/about/n;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->t:Lcom/avast/android/generic/app/about/n;

    return-object v0
.end method

.method static synthetic s(Lcom/avast/android/generic/app/about/FeedbackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->j()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string v0, "/ms/about/feedback"

    return-object v0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 201
    sget v0, Lcom/avast/android/generic/z;->B:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 239
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 247
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->t:Lcom/avast/android/generic/app/about/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->t:Lcom/avast/android/generic/app/about/n;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/about/n;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->t:Lcom/avast/android/generic/app/about/n;

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->a(Lcom/avast/android/generic/app/about/n;)V

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "community_iq"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/avast/android/generic/internet/a/a;->a(Lcom/avast/android/generic/g/e;Landroid/content/Context;Landroid/os/Bundle;)Lcom/avast/android/generic/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->s:Lcom/avast/android/generic/g/c;

    .line 255
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->q:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->r:[B

    if-nez v0, :cond_2

    .line 256
    :cond_1
    new-instance v0, Lcom/avast/android/generic/app/about/m;

    invoke-direct {v0, p0, v3}, Lcom/avast/android/generic/app/about/m;-><init>(Lcom/avast/android/generic/app/about/FeedbackFragment;Lcom/avast/android/generic/app/about/f;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/about/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 259
    :cond_2
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->c()V

    .line 260
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->setRetainInstance(Z)V

    .line 208
    if-eqz p1, :cond_0

    const-string v0, "zipped_log"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zipped_dumpsys"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "zipped_log"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->q:[B

    .line 211
    const-string v0, "zipped_dumpsys"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->r:[B

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    const-string v1, "not_ams"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->v:Z

    .line 215
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    sget v0, Lcom/avast/android/generic/v;->m:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->c:Landroid/widget/ScrollView;

    .line 220
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->c:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onDestroy()V

    .line 273
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->t:Lcom/avast/android/generic/app/about/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->t:Lcom/avast/android/generic/app/about/n;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/about/n;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->t:Lcom/avast/android/generic/app/about/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/about/n;->cancel(Z)Z

    .line 277
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 281
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onDetach()V

    .line 282
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->g()V

    .line 283
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->q:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->r:[B

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "zipped_log"

    iget-object v1, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->q:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 266
    const-string v0, "zipped_dumpsys"

    iget-object v1, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->r:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 268
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 227
    iget-boolean v0, p0, Lcom/avast/android/generic/app/about/FeedbackFragment;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;

    if-nez v0, :cond_0

    .line 228
    sget v0, Lcom/avast/android/generic/t;->z:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_0
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/about/FeedbackFragment;->c(Landroid/view/View;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/about/FeedbackFragment;->d(Landroid/view/View;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/about/FeedbackFragment;->e(Landroid/view/View;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/about/FeedbackFragment;->f(Landroid/view/View;)V

    .line 235
    return-void
.end method
