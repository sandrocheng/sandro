.class public Lcom/ijinshan/cleaner/SDcardCleanerActivity;
.super Landroid/app/ListActivity;
.source "SDcardCleanerActivity.java"


# static fields
.field private static final q:Ljava/lang/String; = "softdetail"

.field private static final r:I = 0x3

.field private static final s:I = 0x4

.field private static final t:I = 0x6

.field private static final u:I = 0x7

.field private static final x:I = 0x2710


# instance fields
.field private A:Lcom/ijinshan/cleaner/at;

.field private B:Z

.field private C:Z

.field private D:Lcom/keniu/security/a;

.field private E:Lcom/hoi/widget/o;

.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/RelativeLayout;

.field c:Ljava/util/List;

.field d:Lcom/ijinshan/cleaner/aq;

.field e:Landroid/os/Handler;

.field f:J

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/ListView;

.field private m:Ljava/util/List;

.field private n:Ljava/util/List;

.field private o:Ljava/util/List;

.field private p:Ljava/util/List;

.field private v:Landroid/database/sqlite/SQLiteDatabase;

.field private w:Landroid/content/pm/PackageManager;

.field private y:I

.field private z:Lcom/ijinshan/cleaner/adapter/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->c:Ljava/util/List;

    .line 52
    iput-object v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    .line 53
    iput-object v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->n:Ljava/util/List;

    .line 54
    iput-object v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->o:Ljava/util/List;

    .line 55
    iput-object v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p:Ljava/util/List;

    .line 73
    iput-boolean v2, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->B:Z

    .line 74
    iput-boolean v2, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->C:Z

    .line 83
    sget-object v0, Lcom/ijinshan/cleaner/aq;->a:Lcom/ijinshan/cleaner/aq;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d:Lcom/ijinshan/cleaner/aq;

    .line 389
    new-instance v0, Lcom/ijinshan/cleaner/al;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/al;-><init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->e:Landroid/os/Handler;

    .line 647
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->f:J

    .line 672
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->v:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;Lcom/ijinshan/cleaner/at;)Lcom/ijinshan/cleaner/at;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->A:Lcom/ijinshan/cleaner/at;

    return-object p1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x4480

    .line 769
    const/4 v0, 0x0

    .line 770
    const-wide/16 v1, 0x400

    cmp-long v1, p0, v1

    if-ltz v1, :cond_2

    .line 772
    const-string v0, "KB"

    .line 773
    long-to-double v1, p0

    const-wide/high16 v3, 0x4090

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 774
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_0

    .line 775
    const-string v0, "MB"

    .line 776
    div-float/2addr v1, v5

    .line 778
    :cond_0
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_1

    .line 779
    const-string v0, "GB"

    .line 780
    div-float/2addr v1, v5

    .line 785
    :cond_1
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    float-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 787
    if-eqz v0, :cond_3

    .line 788
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 783
    :cond_2
    long-to-float v1, p0

    goto :goto_0

    .line 790
    :cond_3
    const-string v0, "B"

    .line 791
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p:Ljava/util/List;

    return-object p1
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 132
    iput p1, v0, Landroid/os/Message;->what:I

    .line 133
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 4
    .parameter

    .prologue
    .line 610
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 620
    :goto_0
    return-void

    .line 613
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 614
    array-length v1, v0

    .line 615
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 616
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Ljava/io/File;)V

    .line 615
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 618
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 572
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x1

    .line 584
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 560
    .line 561
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 562
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 563
    sub-int/2addr v0, v3

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 564
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 568
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 589
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/c;

    .line 591
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v4

    .line 598
    :goto_0
    return v0

    .line 594
    :cond_1
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    sub-int/2addr v2, v4

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    :goto_1
    if-eqz v0, :cond_0

    move v0, v4

    .line 595
    goto :goto_0

    :cond_2
    move v0, v5

    .line 598
    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1
.end method

.method private b(Ljava/io/File;)J
    .locals 4
    .parameter

    .prologue
    .line 651
    .line 654
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_0

    .line 658
    array-length v1, v0

    .line 659
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 661
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->b(Ljava/io/File;)J

    .line 659
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    :cond_0
    iget-wide v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->f:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->f:J

    .line 669
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->f:J

    return-wide v0

    .line 666
    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    iget-wide v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->f:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->f:J

    goto :goto_1
.end method

.method static synthetic b(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p:Ljava/util/List;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 602
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    const/4 v0, 0x1

    .line 605
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/keniu/security/a;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->D:Lcom/keniu/security/a;

    return-object v0
.end method

.method static synthetic d(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/hoi/widget/o;

    invoke-direct {v0, p0, v2}, Lcom/hoi/widget/o;-><init>(Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    const v1, 0x7f0b0270

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    invoke-virtual {v0}, Lcom/hoi/widget/o;->b()V

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    invoke-virtual {v0, v2}, Lcom/hoi/widget/o;->a(I)V

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    iget-object v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->b(I)V

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    invoke-virtual {v0}, Lcom/hoi/widget/o;->show()V

    return-void
.end method

.method static synthetic e(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/ijinshan/cleaner/at;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->A:Lcom/ijinshan/cleaner/at;

    return-object v0
.end method

.method static synthetic f(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->v:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic g(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->k:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 119
    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a:Landroid/widget/RelativeLayout;

    .line 120
    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->b:Landroid/widget/RelativeLayout;

    .line 121
    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->j:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b0270

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/ijinshan/cleaner/ar;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/ar;-><init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->h:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->k:Landroid/widget/ProgressBar;

    .line 127
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->i:Landroid/widget/TextView;

    .line 128
    return-void
.end method

.method static synthetic i(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->y:I

    return v0
.end method

.method private static i()[Ljava/io/File;
    .locals 3

    .prologue
    .line 549
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 550
    const/4 v1, 0x0

    .line 551
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 555
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic j(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 639
    new-instance v0, Lcom/hoi/widget/o;

    invoke-direct {v0, p0, v2}, Lcom/hoi/widget/o;-><init>(Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    .line 640
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    const v1, 0x7f0b0270

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->setTitle(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    invoke-virtual {v0}, Lcom/hoi/widget/o;->b()V

    .line 642
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    invoke-virtual {v0, v2}, Lcom/hoi/widget/o;->a(I)V

    .line 643
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    iget-object v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->b(I)V

    .line 644
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    invoke-virtual {v0}, Lcom/hoi/widget/o;->show()V

    .line 645
    return-void
.end method

.method static synthetic k(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/ijinshan/cleaner/adapter/f;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->z:Lcom/ijinshan/cleaner/adapter/f;

    return-object v0
.end method

.method private k()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 734
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 735
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g:Landroid/widget/Button;

    const v1, 0x7f0b0277

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 738
    sget-object v0, Lcom/ijinshan/cleaner/aq;->c:Lcom/ijinshan/cleaner/aq;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d:Lcom/ijinshan/cleaner/aq;

    .line 739
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->i:Landroid/widget/TextView;

    .line 741
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v7

    move-wide v3, v9

    .line 742
    :goto_0
    if-ge v2, v1, :cond_1

    .line 743
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/c;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/c;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 742
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 747
    :cond_1
    cmp-long v0, v3, v9

    if-lez v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f0b0287

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    :goto_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 755
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->z:Lcom/ijinshan/cleaner/adapter/f;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/adapter/f;->notifyDataSetChanged()V

    .line 756
    return-void

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->i:Landroid/widget/TextView;

    const v2, 0x7f0b0288

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic l(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic o(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/hoi/widget/o;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    return-object v0
.end method

.method static synthetic q(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/hoi/widget/o;
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->E:Lcom/hoi/widget/o;

    return-object v0
.end method

.method static synthetic r(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g:Landroid/widget/Button;

    const v1, 0x7f0b0277

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/ijinshan/cleaner/aq;->c:Lcom/ijinshan/cleaner/aq;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d:Lcom/ijinshan/cleaner/aq;

    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v7

    move-wide v3, v9

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/c;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/c;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    cmp-long v0, v3, v9

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f0b0287

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->z:Lcom/ijinshan/cleaner/adapter/f;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/adapter/f;->notifyDataSetChanged()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->i:Landroid/widget/TextView;

    const v2, 0x7f0b0288

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic s(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->B:Z

    return v0
.end method

.method static synthetic t(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->C:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 14

    .prologue
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->o:Ljava/util/List;

    .line 215
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v8, v0

    .line 216
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    .line 218
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 219
    if-eqz v8, :cond_1

    .line 220
    array-length v11, v8

    .line 222
    const/16 v0, 0x2710

    div-int/2addr v0, v11

    iput v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->y:I

    .line 223
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->k:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 225
    const/4 v0, 0x0

    .line 227
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v11, :cond_1

    .line 228
    iget-boolean v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->B:Z

    if-eqz v1, :cond_0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->A:Lcom/ijinshan/cleaner/at;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->A:Lcom/ijinshan/cleaner/at;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_0
    :goto_2
    iget-boolean v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->C:Z

    if-eqz v1, :cond_2

    .line 343
    :cond_1
    return-void

    .line 233
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 240
    :cond_2
    aget-object v1, v8, v12

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 243
    const/4 v1, 0x3

    invoke-direct {p0, v1, v13}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(ILjava/lang/Object;)V

    .line 244
    if-eqz v0, :cond_3

    .line 245
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->v:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "softdetail"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filepath like \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 249
    const-string v1, "Tencent"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 250
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 259
    :cond_5
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 261
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_7

    .line 263
    iget-object v4, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->o:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 267
    new-instance v4, Lcom/ijinshan/cleaner/a/c;

    invoke-direct {v4}, Lcom/ijinshan/cleaner/a/c;-><init>()V

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ijinshan/cleaner/a/c;->c(Ljava/lang/String;)V

    .line 269
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->f:J

    .line 270
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->b(Ljava/io/File;)J

    move-result-wide v5

    .line 272
    invoke-virtual {v4, v2}, Lcom/ijinshan/cleaner/a/c;->a(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v4, v5, v6}, Lcom/ijinshan/cleaner/a/c;->a(J)V

    .line 274
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/ijinshan/cleaner/a/c;->a(Z)V

    .line 275
    invoke-virtual {v4}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v2

    const-wide/32 v5, 0xa00000

    cmp-long v2, v2, v5

    if-lez v2, :cond_6

    .line 277
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/ijinshan/cleaner/a/c;->a(Z)V

    .line 280
    :cond_6
    invoke-virtual {v4, v1}, Lcom/ijinshan/cleaner/a/c;->b(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->o:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 340
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 227
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto/16 :goto_1

    .line 262
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 263
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_b
    move-object v8, v1

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->z:Lcom/ijinshan/cleaner/adapter/f;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/adapter/f;->notifyDataSetChanged()V

    .line 351
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 352
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 355
    iput-boolean v2, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->B:Z

    .line 356
    iput-boolean v2, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->C:Z

    .line 357
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g:Landroid/widget/Button;

    const v1, 0x7f0b0278

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 358
    sget-object v0, Lcom/ijinshan/cleaner/aq;->a:Lcom/ijinshan/cleaner/aq;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d:Lcom/ijinshan/cleaner/aq;

    .line 359
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 360
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 362
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 489
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 491
    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 492
    const v1, 0x7f0b0281

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 493
    const v1, 0x7f0b00d6

    new-instance v2, Lcom/ijinshan/cleaner/am;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/am;-><init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 505
    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/cleaner/an;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/an;-><init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 533
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 534
    return-void
.end method

.method public final d()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 538
    invoke-virtual {p0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 539
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 540
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 541
    :goto_0
    if-ge v3, v2, :cond_0

    .line 542
    iget-object v4, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->c:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 544
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 6

    .prologue
    .line 623
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 624
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 625
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 626
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_1
    const/4 v4, 0x6

    invoke-direct {p0, v4, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(ILjava/lang/Object;)V

    .line 632
    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Ljava/io/File;)V

    .line 624
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    .line 636
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f0b00d5

    const/4 v4, 0x0

    .line 688
    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 690
    const v0, 0x7f0b00bf

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 691
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 692
    const v0, 0x7f0b0289

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 693
    invoke-virtual {v2, v5, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 729
    :goto_0
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 730
    return-void

    .line 695
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 697
    const v0, 0x7f08011d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 699
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 700
    const v1, 0x7f08011b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 702
    const v4, 0x7f0b0286

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 703
    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 704
    const v1, 0x7f0b00d6

    new-instance v3, Lcom/ijinshan/cleaner/ao;

    invoke-direct {v3, p0, v0}, Lcom/ijinshan/cleaner/ao;-><init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 714
    new-instance v1, Lcom/ijinshan/cleaner/ap;

    invoke-direct {v1, p0, v0}, Lcom/ijinshan/cleaner/ap;-><init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v5, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_0
.end method

.method public final g()J
    .locals 8

    .prologue
    .line 760
    const-wide/16 v0, 0x0

    .line 761
    iget-object v2, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 762
    const/4 v3, 0x0

    move v7, v3

    move-wide v3, v0

    move v1, v7

    :goto_0
    if-ge v1, v2, :cond_0

    .line 763
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/c;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 762
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 765
    :cond_0
    return-wide v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->setContentView(I)V

    .line 89
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 91
    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->j:Landroid/widget/TextView;

    const v2, 0x7f0b0270

    invoke-virtual {p0, v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g:Landroid/widget/Button;

    new-instance v2, Lcom/ijinshan/cleaner/ar;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/ar;-><init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->k:Landroid/widget/ProgressBar;

    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->i:Landroid/widget/TextView;

    .line 92
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->D:Lcom/keniu/security/a;

    .line 93
    const-string v0, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f0b0276

    invoke-virtual {p0, v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->n:Ljava/util/List;

    .line 106
    invoke-virtual {p0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->l:Landroid/widget/ListView;

    .line 107
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/ijinshan/cleaner/au;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/au;-><init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    new-instance v0, Lcom/ijinshan/cleaner/adapter/f;

    iget-object v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->m:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/ijinshan/cleaner/adapter/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->z:Lcom/ijinshan/cleaner/adapter/f;

    .line 109
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->z:Lcom/ijinshan/cleaner/adapter/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    invoke-virtual {p0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->w:Landroid/content/pm/PackageManager;

    .line 114
    new-instance v0, Lcom/ijinshan/cleaner/at;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/at;-><init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V

    iput-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->A:Lcom/ijinshan/cleaner/at;

    .line 115
    iget-object v0, p0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->A:Lcom/ijinshan/cleaner/at;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/at;->start()V

    goto :goto_0
.end method
