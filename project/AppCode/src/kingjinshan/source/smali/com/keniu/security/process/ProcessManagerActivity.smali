.class public Lcom/keniu/security/process/ProcessManagerActivity;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "ProcessManagerActivity.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static final H:I = 0x2

.field private static final I:I = 0x4

.field private static final J:I = 0x5

.field private static final K:I = 0x6

.field private static final s:I = 0x1

.field private static final t:I = -0x1

.field private static final u:I = 0x3

.field private static final v:I = -0x3


# instance fields
.field private A:J

.field private B:Z

.field private C:Z

.field private D:Lcom/jxphone/mosecurity/d/m;

.field private E:Landroid/content/SharedPreferences;

.field private F:Lcom/keniu/security/a;

.field private G:Landroid/view/View$OnClickListener;

.field private L:Landroid/os/Handler;

.field public a:Z

.field b:Landroid/widget/AdapterView$OnItemClickListener;

.field c:Landroid/widget/AdapterView$OnItemLongClickListener;

.field public d:Landroid/os/Handler;

.field e:Landroid/os/HandlerThread;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/RadioGroup;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/Button;

.field private m:I

.field private n:Landroid/app/ActivityManager;

.field private o:Lcom/jxphone/mosecurity/b/c;

.field private p:Lcom/keniu/security/process/r;

.field private q:Lcom/keniu/security/process/o;

.field private r:Lcom/keniu/security/process/o;

.field private w:I

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    .line 99
    iput-boolean v2, p0, Lcom/keniu/security/process/ProcessManagerActivity;->a:Z

    .line 100
    iput v2, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    .line 101
    iput v2, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    .line 102
    const-string v0, "0"

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->z:Ljava/lang/String;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->A:J

    .line 104
    iput-boolean v2, p0, Lcom/keniu/security/process/ProcessManagerActivity;->B:Z

    .line 105
    iput-boolean v2, p0, Lcom/keniu/security/process/ProcessManagerActivity;->C:Z

    .line 279
    new-instance v0, Lcom/keniu/security/process/f;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/f;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->G:Landroid/view/View$OnClickListener;

    .line 340
    new-instance v0, Lcom/keniu/security/process/g;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/g;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 366
    new-instance v0, Lcom/keniu/security/process/h;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/h;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->c:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->L:Landroid/os/Handler;

    .line 456
    new-instance v0, Lcom/keniu/security/process/i;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/i;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->d:Landroid/os/Handler;

    .line 853
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "updateDbCache"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->e:Landroid/os/HandlerThread;

    .line 73
    return-void
.end method

.method private a()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 393
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/process/o;

    .line 394
    if-nez v0, :cond_0

    move v0, v3

    .line 434
    :goto_0
    return v0

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v2

    move v4, v3

    .line 400
    :goto_1
    if-ge v3, v2, :cond_3

    .line 401
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/d/e;

    .line 403
    invoke-virtual {v1}, Lcom/keniu/security/d/e;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 404
    iget-wide v5, p0, Lcom/keniu/security/process/ProcessManagerActivity;->A:J

    invoke-virtual {v1}, Lcom/keniu/security/d/e;->d()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/keniu/security/process/ProcessManagerActivity;->A:J

    .line 405
    add-int/lit8 v4, v4, 0x1

    .line 406
    iget v5, v1, Lcom/keniu/security/d/e;->c:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 407
    iget-object v5, p0, Lcom/keniu/security/process/ProcessManagerActivity;->D:Lcom/jxphone/mosecurity/d/m;

    invoke-virtual {v1}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/jxphone/mosecurity/d/m;->b(Ljava/lang/String;)V

    .line 408
    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    sub-int/2addr v1, v9

    iput v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    move v1, v4

    .line 400
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    goto :goto_1

    .line 409
    :cond_1
    iget v5, v1, Lcom/keniu/security/d/e;->c:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 410
    iget-object v5, p0, Lcom/keniu/security/process/ProcessManagerActivity;->D:Lcom/jxphone/mosecurity/d/m;

    invoke-virtual {v1}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/jxphone/mosecurity/d/m;->a(Ljava/lang/String;)V

    .line 411
    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    sub-int/2addr v1, v9

    iput v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    :cond_2
    move v1, v4

    goto :goto_2

    .line 415
    :cond_3
    sub-int v1, v2, v9

    move v2, v1

    :goto_3
    if-ltz v2, :cond_5

    .line 416
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/d/e;

    .line 418
    invoke-virtual {v1}, Lcom/keniu/security/d/e;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 419
    invoke-virtual {v0, v2}, Lcom/keniu/security/process/o;->a(I)V

    .line 415
    :cond_4
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_3

    .line 423
    :cond_5
    if-lez v4, :cond_6

    .line 424
    iget-wide v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->A:J

    invoke-direct {p0, v4, v0, v1}, Lcom/keniu/security/process/ProcessManagerActivity;->a(IJ)V

    .line 429
    const-string v0, "cl"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/keniu/security/process/ProcessManagerActivity;->d()V

    .line 432
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->A:J

    move v0, v4

    .line 434
    goto :goto_0

    :cond_6
    move v0, v4

    .line 426
    goto :goto_0
.end method

.method private static a(Landroid/os/Debug$MemoryInfo;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 552
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTotalPss"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 553
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/keniu/security/process/ProcessManagerActivity;)I
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 73
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/process/o;

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/d/e;

    invoke-virtual {v1}, Lcom/keniu/security/d/e;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v5, p0, Lcom/keniu/security/process/ProcessManagerActivity;->A:J

    invoke-virtual {v1}, Lcom/keniu/security/d/e;->d()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/keniu/security/process/ProcessManagerActivity;->A:J

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lcom/keniu/security/d/e;->c:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/keniu/security/process/ProcessManagerActivity;->D:Lcom/jxphone/mosecurity/d/m;

    invoke-virtual {v1}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/jxphone/mosecurity/d/m;->b(Ljava/lang/String;)V

    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    sub-int/2addr v1, v9

    iput v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    move v1, v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    iget v5, v1, Lcom/keniu/security/d/e;->c:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/keniu/security/process/ProcessManagerActivity;->D:Lcom/jxphone/mosecurity/d/m;

    invoke-virtual {v1}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/jxphone/mosecurity/d/m;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    sub-int/2addr v1, v9

    iput v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    sub-int v1, v2, v9

    move v2, v1

    :goto_3
    if-ltz v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/d/e;

    invoke-virtual {v1}, Lcom/keniu/security/d/e;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Lcom/keniu/security/process/o;->a(I)V

    :cond_4
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_3

    :cond_5
    if-lez v4, :cond_6

    iget-wide v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->A:J

    invoke-direct {p0, v4, v0, v1}, Lcom/keniu/security/process/ProcessManagerActivity;->a(IJ)V

    const-string v0, "cl"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/keniu/security/process/ProcessManagerActivity;->d()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->A:J

    move v0, v4

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/process/ProcessManagerActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->m:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/process/ProcessManagerActivity;Lcom/keniu/security/process/o;)Lcom/keniu/security/process/o;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->q:Lcom/keniu/security/process/o;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/process/ProcessManagerActivity;Lcom/keniu/security/process/r;)Lcom/keniu/security/process/r;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->p:Lcom/keniu/security/process/r;

    return-object p1
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 966
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->q:Lcom/keniu/security/process/o;

    invoke-virtual {v0}, Lcom/keniu/security/process/o;->a()Ljava/util/List;

    move-result-object v0

    .line 967
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->r:Lcom/keniu/security/process/o;

    invoke-virtual {v1}, Lcom/keniu/security/process/o;->a()Ljava/util/List;

    move-result-object v1

    .line 969
    packed-switch p1, :pswitch_data_0

    .line 980
    :goto_0
    :pswitch_0
    return-void

    .line 971
    :pswitch_1
    new-instance v2, Lcom/keniu/security/process/m;

    invoke-direct {v2, p0}, Lcom/keniu/security/process/m;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    .line 972
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 973
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 977
    :pswitch_2
    new-instance v2, Lcom/keniu/security/process/n;

    invoke-direct {v2, p0}, Lcom/keniu/security/process/n;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    .line 978
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 979
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 969
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(IJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 438
    const v0, 0x7f0b0540

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 440
    if-lez p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b0541

    invoke-virtual {p0, v1}, Lcom/keniu/security/process/ProcessManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/keniu/security/util/ax;->f(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/process/ProcessManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 448
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/process/ProcessManagerActivity;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/keniu/security/process/ProcessManagerActivity;->a(IJ)V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/process/ProcessManagerActivity;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :pswitch_1
    new-instance v0, Lcom/keniu/security/process/n;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/n;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/keniu/security/process/m;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/m;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .parameter

    .prologue
    .line 818
    const/4 v0, 0x0

    .line 819
    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    packed-switch v1, :pswitch_data_0

    .line 829
    :goto_0
    :pswitch_0
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 830
    return-void

    .line 822
    :pswitch_1
    new-instance v0, Lcom/keniu/security/process/n;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/n;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    goto :goto_0

    .line 826
    :pswitch_2
    new-instance v0, Lcom/keniu/security/process/m;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/m;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    goto :goto_0

    .line 819
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/keniu/security/process/ProcessManagerActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->C:Z

    return p1
.end method

.method static synthetic b(Lcom/keniu/security/process/ProcessManagerActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    return p1
.end method

.method static synthetic b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/process/ProcessManagerActivity;Lcom/keniu/security/process/o;)Lcom/keniu/security/process/o;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->r:Lcom/keniu/security/process/o;

    return-object p1
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 505
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 507
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->q:Lcom/keniu/security/process/o;

    invoke-virtual {v1}, Lcom/keniu/security/process/o;->a()Ljava/util/List;

    move-result-object v2

    .line 508
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->r:Lcom/keniu/security/process/o;

    invoke-virtual {v1}, Lcom/keniu/security/process/o;->a()Ljava/util/List;

    move-result-object v3

    .line 510
    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    .line 511
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    add-int v4, v0, v1

    .line 512
    new-array v1, v4, [I

    move v5, v9

    .line 513
    :goto_0
    if-ge v5, v4, :cond_1

    .line 514
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    if-ge v5, v0, :cond_0

    .line 515
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->e()I

    move-result v0

    aput v0, v1, v5

    .line 513
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 517
    :cond_0
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    sub-int v0, v5, v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->e()I

    move-result v0

    aput v0, v1, v5

    goto :goto_1

    .line 521
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->n:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getProcessMemoryInfo"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [I

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 523
    iget-object v5, p0, Lcom/keniu/security/process/ProcessManagerActivity;->n:Landroid/app/ActivityManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Debug$MemoryInfo;

    move v5, v9

    .line 525
    :goto_2
    if-ge v5, v4, :cond_3

    .line 526
    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    if-ge v5, v1, :cond_2

    .line 527
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/d/e;

    aget-object v6, v0, v5

    invoke-static {v6}, Lcom/keniu/security/process/ProcessManagerActivity;->a(Landroid/os/Debug$MemoryInfo;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x400

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Lcom/keniu/security/d/e;->b(J)V

    .line 525
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    .line 530
    :cond_2
    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    sub-int v1, v5, v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/d/e;

    aget-object v6, v0, v5

    invoke-static {v6}, Lcom/keniu/security/process/ProcessManagerActivity;->a(Landroid/os/Debug$MemoryInfo;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x400

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Lcom/keniu/security/d/e;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 534
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 549
    :cond_3
    return-void

    .line 538
    :cond_4
    new-instance v0, Lcom/keniu/security/process/l;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/l;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    .line 539
    invoke-virtual {v0}, Lcom/keniu/security/process/l;->a()V

    .line 540
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/d/e;

    .line 541
    invoke-virtual {p0}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keniu/security/process/l;->a(Ljava/lang/String;)I

    move-result v2

    .line 542
    mul-int/lit16 v2, v2, 0x400

    div-int/lit8 v2, v2, 0x8

    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/keniu/security/d/e;->b(J)V

    goto :goto_4

    .line 544
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/d/e;

    .line 545
    invoke-virtual {p0}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keniu/security/process/l;->a(Ljava/lang/String;)I

    move-result v2

    .line 546
    mul-int/lit16 v2, v2, 0x400

    div-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/keniu/security/d/e;->b(J)V

    goto :goto_5
.end method

.method static synthetic b(Lcom/keniu/security/process/ProcessManagerActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->B:Z

    return p1
.end method

.method static synthetic c(Lcom/keniu/security/process/ProcessManagerActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    return p1
.end method

.method static synthetic c(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/keniu/security/process/o;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->q:Lcom/keniu/security/process/o;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 637
    iput-boolean v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->a:Z

    .line 638
    iput v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    .line 639
    iput v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    .line 640
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->A:J

    .line 641
    return-void
.end method

.method static synthetic d(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 835
    invoke-static {}, Lcom/keniu/security/process/ProcessManagerActivity;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->z:Ljava/lang/String;

    .line 837
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 838
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->n:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 839
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 840
    invoke-static {v0, v1}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v0

    .line 841
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 842
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->g:Landroid/widget/TextView;

    const v2, 0x7f0b0537

    invoke-virtual {p0, v2}, Lcom/keniu/security/process/ProcessManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    iget v5, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/keniu/security/process/ProcessManagerActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    const v0, 0x7f0801e7

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v1, 0x7f0b0545

    invoke-virtual {p0, v1}, Lcom/keniu/security/process/ProcessManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 848
    const v0, 0x7f0801e8

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v1, 0x7f0b0546

    invoke-virtual {p0, v1}, Lcom/keniu/security/process/ProcessManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 851
    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1052
    const-string v0, "/proc/meminfo"

    .line 1057
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 1058
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1060
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1061
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, "kB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1063
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    .line 1064
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1068
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "0"

    goto :goto_0
.end method

.method static synthetic e(Lcom/keniu/security/process/ProcessManagerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->C:Z

    return v0
.end method

.method static synthetic f(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->l:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/keniu/security/process/o;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->r:Lcom/keniu/security/process/o;

    return-object v0
.end method

.method static synthetic h(Lcom/keniu/security/process/ProcessManagerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->B:Z

    return v0
.end method

.method static synthetic i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->o:Lcom/jxphone/mosecurity/b/c;

    return-object v0
.end method

.method static synthetic j(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->j:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic k(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->L:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/d/m;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->D:Lcom/jxphone/mosecurity/d/m;

    return-object v0
.end method

.method static synthetic m(Lcom/keniu/security/process/ProcessManagerActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->m:I

    return v0
.end method

.method static synthetic n(Lcom/keniu/security/process/ProcessManagerActivity;)I
    .locals 2
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    return v0
.end method

.method static synthetic o(Lcom/keniu/security/process/ProcessManagerActivity;)I
    .locals 2
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    return v0
.end method

.method static synthetic p(Lcom/keniu/security/process/ProcessManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/keniu/security/process/ProcessManagerActivity;->d()V

    return-void
.end method

.method static synthetic q(Lcom/keniu/security/process/ProcessManagerActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->a:Z

    iput v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    iput v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->A:J

    return-void
.end method

.method static synthetic r(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/keniu/security/process/r;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->p:Lcom/keniu/security/process/r;

    return-object v0
.end method

.method static synthetic t(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/app/ActivityManager;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->n:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic u(Lcom/keniu/security/process/ProcessManagerActivity;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 73
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->q:Lcom/keniu/security/process/o;

    invoke-virtual {v1}, Lcom/keniu/security/process/o;->a()Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->r:Lcom/keniu/security/process/o;

    invoke-virtual {v1}, Lcom/keniu/security/process/o;->a()Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    add-int v4, v0, v1

    new-array v1, v4, [I

    move v5, v9

    :goto_0
    if-ge v5, v4, :cond_1

    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    if-ge v5, v0, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->e()I

    move-result v0

    aput v0, v1, v5

    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    sub-int v0, v5, v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->e()I

    move-result v0

    aput v0, v1, v5

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->n:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getProcessMemoryInfo"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [I

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v5, p0, Lcom/keniu/security/process/ProcessManagerActivity;->n:Landroid/app/ActivityManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Debug$MemoryInfo;

    move v5, v9

    :goto_2
    if-ge v5, v4, :cond_3

    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    if-ge v5, v1, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/d/e;

    aget-object v6, v0, v5

    invoke-static {v6}, Lcom/keniu/security/process/ProcessManagerActivity;->a(Landroid/os/Debug$MemoryInfo;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x400

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Lcom/keniu/security/d/e;->b(J)V

    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    sub-int v1, v5, v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/d/e;

    aget-object v6, v0, v5

    invoke-static {v6}, Lcom/keniu/security/process/ProcessManagerActivity;->a(Landroid/os/Debug$MemoryInfo;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x400

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Lcom/keniu/security/d/e;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Lcom/keniu/security/process/l;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/l;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    invoke-virtual {v0}, Lcom/keniu/security/process/l;->a()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/d/e;

    invoke-virtual {p0}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keniu/security/process/l;->a(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    div-int/lit8 v2, v2, 0x8

    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/keniu/security/d/e;->b(J)V

    goto :goto_4

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/d/e;

    invoke-virtual {p0}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keniu/security/process/l;->a(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    div-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/keniu/security/d/e;->b(J)V

    goto :goto_5
.end method

.method static synthetic v(Lcom/keniu/security/process/ProcessManagerActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    return v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 256
    sget v0, Lcom/keniu/security/monitor/a;->o:I

    if-ne p1, v0, :cond_4

    .line 257
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    .line 259
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->q:Lcom/keniu/security/process/o;

    invoke-virtual {v1, v0}, Lcom/keniu/security/process/o;->b(I)Lcom/keniu/security/d/e;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lcom/keniu/security/d/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->q:Lcom/keniu/security/process/o;

    invoke-virtual {v1, v0}, Lcom/keniu/security/process/o;->a(I)V

    .line 262
    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->x:I

    .line 258
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 266
    :cond_1
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_3

    .line 267
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->r:Lcom/keniu/security/process/o;

    invoke-virtual {v1, v0}, Lcom/keniu/security/process/o;->b(I)Lcom/keniu/security/d/e;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Lcom/keniu/security/d/e;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->r:Lcom/keniu/security/process/o;

    invoke-virtual {v1, v0}, Lcom/keniu/security/process/o;->a(I)V

    .line 270
    iget v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->y:I

    .line 266
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 274
    :cond_3
    invoke-direct {p0}, Lcom/keniu/security/process/ProcessManagerActivity;->d()V

    .line 276
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 113
    const v0, 0x7f030071

    const v1, 0x7f0b03db

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 116
    const-string v0, "pm"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->F:Lcom/keniu/security/a;

    .line 120
    const-string v0, "com.ijinshan.mguard_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/process/ProcessManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->E:Landroid/content/SharedPreferences;

    .line 121
    new-instance v0, Lcom/jxphone/mosecurity/d/m;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/d/m;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->D:Lcom/jxphone/mosecurity/d/m;

    .line 122
    const v0, 0x7f0801e5

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->g:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0801eb

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->f:Landroid/widget/ListView;

    .line 124
    const v0, 0x7f0801ec

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->h:Landroid/widget/LinearLayout;

    .line 126
    const v0, 0x7f0801e3

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->i:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/process/c;

    invoke-direct {v1, p0}, Lcom/keniu/security/process/c;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v0, 0x7f0801e0

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/process/d;

    invoke-direct {v1, p0}, Lcom/keniu/security/process/d;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f0801e6

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->j:Landroid/widget/RadioGroup;

    .line 154
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->j:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/keniu/security/process/e;

    invoke-direct {v1, p0}, Lcom/keniu/security/process/e;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 181
    const v0, 0x7f0801e9

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->k:Landroid/widget/RelativeLayout;

    .line 183
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->c:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->f:Landroid/widget/ListView;

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 186
    const v0, 0x7f0801e2

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->l:Landroid/widget/Button;

    .line 187
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/keniu/security/process/ProcessManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->o:Lcom/jxphone/mosecurity/b/c;

    .line 190
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->n:Landroid/app/ActivityManager;

    .line 191
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->d:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 194
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->L:Landroid/os/Handler;

    .line 196
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->F:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->F:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->K()V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->D:Lcom/jxphone/mosecurity/d/m;

    const-string v2, "com.ijinshan.duba"

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/d/m;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    const-string v1, "#com.ijinshan.duba"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->D:Lcom/jxphone/mosecurity/d/m;

    const-string v2, "com.ijinshan.kbatterydoctor"

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/d/m;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    const-string v1, "#com.ijinshan.kbatterydoctor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->F:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->G()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->F:Lcom/keniu/security/a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keniu/security/a;->a(Ljava/lang/String;)V

    .line 215
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->q:Lcom/keniu/security/process/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->r:Lcom/keniu/security/process/o;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 663
    :goto_0
    return v0

    .line 648
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/process/ProcessManagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 649
    const v1, 0x7f0c0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move v0, v2

    .line 650
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 651
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 652
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 658
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 654
    :pswitch_0
    const v2, 0x7f0201ac

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 657
    :pswitch_1
    const v2, 0x7f0201ae

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 663
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 652
    :pswitch_data_0
    .packed-switch 0x7f080425
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 1020
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onDestroy()V

    .line 1021
    new-instance v0, Lcom/keniu/security/process/j;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/j;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;)V

    .line 1029
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->L:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1030
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/monitor/a;->o:I

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 1032
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1043
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->d:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1045
    iget-object v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1048
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/keniu/security/main/BaseTitleActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x3

    const/4 v2, -0x3

    const/4 v1, 0x1

    .line 668
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v5

    .line 700
    :goto_0
    return v0

    .line 670
    :pswitch_0
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    if-eq v0, v4, :cond_0

    .line 671
    iput v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    .line 673
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->a(I)V

    .line 674
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    if-ne v0, v1, :cond_1

    .line 675
    iput v4, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    .line 676
    const v0, 0x7f0201ad

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 698
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->q:Lcom/keniu/security/process/o;

    invoke-virtual {v0}, Lcom/keniu/security/process/o;->notifyDataSetChanged()V

    .line 699
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->r:Lcom/keniu/security/process/o;

    invoke-virtual {v0}, Lcom/keniu/security/process/o;->notifyDataSetChanged()V

    move v0, v1

    .line 700
    goto :goto_0

    .line 678
    :cond_1
    iput v1, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    .line 679
    const v0, 0x7f0201ac

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 683
    :pswitch_1
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    if-eq v0, v2, :cond_2

    .line 684
    iput v2, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    .line 686
    :cond_2
    invoke-direct {p0, v5}, Lcom/keniu/security/process/ProcessManagerActivity;->a(I)V

    .line 687
    iget v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    if-ne v0, v3, :cond_3

    .line 688
    iput v2, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    .line 689
    const v0, 0x7f0201af

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 691
    :cond_3
    iput v3, p0, Lcom/keniu/security/process/ProcessManagerActivity;->w:I

    .line 692
    const v0, 0x7f0201ae

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 668
    :pswitch_data_0
    .packed-switch 0x7f080425
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1036
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onPause()V

    .line 1037
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1039
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 240
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onResume()V

    .line 241
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->q:Lcom/keniu/security/process/o;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->q:Lcom/keniu/security/process/o;

    invoke-virtual {v0}, Lcom/keniu/security/process/o;->notifyDataSetChanged()V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->r:Lcom/keniu/security/process/o;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->r:Lcom/keniu/security/process/o;

    invoke-virtual {v0}, Lcom/keniu/security/process/o;->notifyDataSetChanged()V

    .line 245
    :cond_1
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/monitor/a;->o:I

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 247
    iget-object v0, p0, Lcom/keniu/security/process/ProcessManagerActivity;->E:Landroid/content/SharedPreferences;

    const-string v1, "isSceenLockClear"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/monitor/a;->o:I

    const v2, 0x4fffffff

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 252
    :cond_2
    return-void
.end method
