.class Lcom/avast/android/mobilesecurity/app/manager/j;
.super Landroid/support/v4/e/a;
.source "ManagerAppFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/text/NumberFormat;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    .line 448
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v4/e/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 450
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->f:Ljava/text/NumberFormat;

    .line 451
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->f:Ljava/text/NumberFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 453
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->g:I

    .line 454
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->h:I

    .line 456
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-direct {v0, p2}, Lcom/avast/android/mobilesecurity/app/manager/a/e;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;Lcom/avast/android/mobilesecurity/app/manager/a/e;)Lcom/avast/android/mobilesecurity/app/manager/a/e;

    .line 457
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/e;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->c(I)V

    .line 458
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/e;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/manager/k;

    invoke-direct {v1, p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/k;-><init>(Lcom/avast/android/mobilesecurity/app/manager/j;Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a(Lcom/avast/android/mobilesecurity/app/manager/a/h;)V

    .line 466
    const v0, 0x7f0c00d1

    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->j:Ljava/lang/String;

    .line 467
    const v0, 0x7f0c00d2

    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->k:Ljava/lang/String;

    .line 468
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/database/Cursor;Lcom/avast/android/mobilesecurity/app/manager/l;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 518
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->d:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    .line 520
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 521
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->e:Landroid/widget/ProgressBar;

    double-to-float v3, v0

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->c(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 522
    const-wide/high16 v2, 0x4090

    div-double/2addr v0, v2

    .line 523
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->f:Ljava/text/NumberFormat;

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    :cond_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 527
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->g:Landroid/widget/ProgressBar;

    double-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 531
    :cond_1
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 532
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->i:Landroid/widget/ProgressBar;

    double-to-float v3, v0

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->c(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 533
    const-wide/high16 v2, 0x4090

    div-double/2addr v0, v2

    .line 534
    const-wide/high16 v2, 0x4090

    cmpl-double v2, v0, v2

    if-lez v2, :cond_8

    .line 535
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->f:Ljava/text/NumberFormat;

    const-wide/high16 v5, 0x4090

    div-double/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 545
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/e;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->i:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a(I)I

    move-result v0

    int-to-double v0, v0

    .line 546
    const-wide/high16 v2, -0x4010

    cmpl-double v2, v0, v2

    if-lez v2, :cond_9

    .line 547
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    .line 548
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->e:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 550
    :cond_3
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->f:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->e:Landroid/widget/ProgressBar;

    double-to-float v3, v0

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 554
    const-wide/high16 v2, 0x4090

    div-double/2addr v0, v2

    .line 555
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->f:Ljava/text/NumberFormat;

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 563
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/e;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->i:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->b(I)I

    move-result v0

    int-to-double v0, v0

    .line 564
    const-wide/high16 v2, -0x4010

    cmpl-double v2, v0, v2

    if-lez v2, :cond_a

    .line 565
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->g:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 566
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->h:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->g:Landroid/widget/ProgressBar;

    double-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 569
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 577
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/e;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->c:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    .line 578
    const-wide/high16 v2, -0x4010

    cmpl-double v2, v0, v2

    if-lez v2, :cond_c

    .line 579
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->b()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_6

    .line 580
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->i:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 582
    :cond_6
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->i:Landroid/widget/ProgressBar;

    double-to-float v3, v0

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->b()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 586
    const-wide/high16 v2, 0x4090

    div-double/2addr v0, v2

    .line 587
    const-wide/high16 v2, 0x4090

    cmpl-double v2, v0, v2

    if-lez v2, :cond_b

    .line 588
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->f:Ljava/text/NumberFormat;

    const-wide/high16 v5, 0x4090

    div-double/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    :cond_7
    :goto_3
    return-void

    .line 538
    :cond_8
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->f:Ljava/text/NumberFormat;

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 557
    :cond_9
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 558
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->f:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 571
    :cond_a
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->g:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 572
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 591
    :cond_b
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->f:Ljava/text/NumberFormat;

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 594
    :cond_c
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->i:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 595
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->j:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private b(Landroid/content/Context;Landroid/database/Cursor;Lcom/avast/android/mobilesecurity/app/manager/l;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v6, 0x8

    .line 601
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)I

    move-result v0

    if-nez v0, :cond_1

    .line 602
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 603
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 606
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)I

    move-result v0

    if-eq v0, v7, :cond_2

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 610
    :cond_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->d:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 611
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    .line 612
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->c:Landroid/widget/ProgressBar;

    long-to-float v3, v0

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->c(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 613
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 614
    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    .line 616
    :cond_3
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->f:Ljava/text/NumberFormat;

    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 624
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->d:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 625
    if-ltz v0, :cond_6

    .line 626
    iget-object v1, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v1, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 618
    :cond_5
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 619
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->d:Landroid/widget/TextView;

    const v1, 0x7f0c02d7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 629
    :cond_6
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->d:Landroid/widget/TextView;

    const v1, 0x7f0c02dc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/manager/l;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/manager/l;

    .line 492
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/manager/l;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->b:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->e:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 495
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/manager/l;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->g:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 501
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->c:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 504
    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/manager/l;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_1
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/manager/l;->g:Landroid/widget/ProgressBar;

    if-nez v1, :cond_1

    .line 510
    invoke-direct {p0, p2, p3, v0}, Lcom/avast/android/mobilesecurity/app/manager/j;->b(Landroid/content/Context;Landroid/database/Cursor;Lcom/avast/android/mobilesecurity/app/manager/l;)V

    .line 514
    :goto_2
    return-void

    .line 497
    :cond_0
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/manager/l;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->h:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 512
    :cond_1
    invoke-direct {p0, p2, p3, v0}, Lcom/avast/android/mobilesecurity/app/manager/j;->a(Landroid/content/Context;Landroid/database/Cursor;Lcom/avast/android/mobilesecurity/app/manager/l;)V

    goto :goto_2

    .line 505
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 665
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->mCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 666
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/e/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 639
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 641
    new-instance v2, Lcom/avast/android/mobilesecurity/app/manager/l;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/manager/l;-><init>(Lcom/avast/android/mobilesecurity/app/manager/j;)V

    .line 642
    const v0, 0x7f070059

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/manager/l;->b:Landroid/widget/ImageView;

    .line 643
    const v0, 0x7f070140

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/manager/l;->a:Landroid/widget/TextView;

    .line 644
    const v0, 0x7f070110

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/manager/l;->c:Landroid/widget/ProgressBar;

    .line 645
    const v0, 0x7f07018e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/manager/l;->d:Landroid/widget/TextView;

    .line 647
    const v0, 0x7f07018f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/manager/l;->g:Landroid/widget/ProgressBar;

    .line 648
    iget-object v0, v2, Lcom/avast/android/mobilesecurity/app/manager/l;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 649
    const v0, 0x7f070190

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/manager/l;->h:Landroid/widget/TextView;

    .line 651
    const v0, 0x7f070191

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/manager/l;->e:Landroid/widget/ProgressBar;

    .line 652
    const v0, 0x7f070192

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/manager/l;->f:Landroid/widget/TextView;

    .line 654
    const v0, 0x7f070193

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/manager/l;->i:Landroid/widget/ProgressBar;

    .line 655
    const v0, 0x7f070194

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/manager/l;->j:Landroid/widget/TextView;

    .line 658
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 660
    return-object v1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6
    .parameter

    .prologue
    .line 472
    if-eqz p1, :cond_0

    .line 473
    sget-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->k:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->b:I

    .line 474
    sget-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->l:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->i:I

    .line 475
    sget-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->i:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->c:I

    .line 476
    sget-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->t:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->d:I

    .line 477
    sget-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->u:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->e:I

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030074

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 481
    const v1, 0x7f07018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/e;

    move-result-object v0

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->c:I

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->i:I

    iget v4, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->d:I

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/j;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a(Landroid/database/Cursor;IIII)V

    .line 485
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/e/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
