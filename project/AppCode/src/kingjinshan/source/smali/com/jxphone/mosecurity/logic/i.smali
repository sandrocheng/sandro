.class final Lcom/jxphone/mosecurity/logic/i;
.super Ljava/lang/Object;
.source "PhoneCallLogicImpl.java"

# interfaces
.implements Lcom/jxphone/mosecurity/logic/a/g;


# static fields
.field private static final a:Ljava/util/LinkedHashSet;

.field private static final b:Ljava/util/LinkedList;

.field private static c:J

.field private static volatile d:I


# instance fields
.field private final e:Z

.field private f:Landroid/view/WindowManager;

.field private g:Landroid/view/WindowManager$LayoutParams;

.field private h:Landroid/widget/TextView;

.field private i:Z

.field private j:Landroid/os/Handler;

.field private k:Landroid/telephony/TelephonyManager;

.field private l:Landroid/content/Context;

.field private m:Landroid/media/AudioManager;

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    sput-object v0, Lcom/jxphone/mosecurity/logic/i;->a:Ljava/util/LinkedHashSet;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/jxphone/mosecurity/logic/i;->b:Ljava/util/LinkedList;

    .line 89
    const/4 v0, -0x1

    sput v0, Lcom/jxphone/mosecurity/logic/i;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jxphone/mosecurity/logic/i;-><init>(Landroid/content/Context;Z)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    .line 93
    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    .line 94
    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/logic/i;->i:Z

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->j:Landroid/os/Handler;

    .line 101
    iput v1, p0, Lcom/jxphone/mosecurity/logic/i;->n:I

    .line 102
    iput v1, p0, Lcom/jxphone/mosecurity/logic/i;->o:I

    .line 103
    iput v1, p0, Lcom/jxphone/mosecurity/logic/i;->p:I

    .line 553
    new-instance v0, Lcom/jxphone/mosecurity/logic/k;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/logic/k;-><init>(Lcom/jxphone/mosecurity/logic/i;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->x:Ljava/lang/Runnable;

    .line 117
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    .line 118
    iput-boolean p2, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    .line 120
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->m:Landroid/media/AudioManager;

    .line 122
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->k:Landroid/telephony/TelephonyManager;

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/logic/i;)F
    .locals 1
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/jxphone/mosecurity/logic/i;->v:F

    return v0
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/logic/i;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/jxphone/mosecurity/logic/i;->v:F

    return p1
.end method

.method private a(Lcom/jxphone/mosecurity/c/j;Lcom/jxphone/mosecurity/c/b;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 221
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 224
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v4

    .line 310
    :goto_0
    return v0

    .line 226
    :pswitch_0
    if-nez p2, :cond_1

    .line 227
    invoke-virtual {v1}, Lcom/keniu/security/a;->ac()I

    move-result v1

    if-nez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/keniu/security/b/e;->e(Landroid/content/Context;)Lcom/keniu/security/b/r;

    move-result-object v1

    .line 230
    invoke-interface {v1, v0}, Lcom/keniu/security/b/r;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/jxphone/mosecurity/logic/i;->c:J

    .line 238
    sget-object v0, Lcom/jxphone/mosecurity/c/c;->d:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {p1, v0}, Lcom/jxphone/mosecurity/c/j;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 239
    const/4 v0, 0x0

    sget-wide v1, Lcom/keniu/security/e;->a:J

    invoke-static {}, Lcom/keniu/security/a;->a()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/c/j;J)V

    move v0, v7

    .line 241
    goto :goto_0

    :cond_0
    move v0, v4

    .line 245
    goto :goto_0

    .line 248
    :cond_1
    sget-object v2, Lcom/jxphone/mosecurity/logic/m;->a:[I

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    move v0, v4

    .line 287
    goto :goto_0

    .line 250
    :pswitch_1
    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jxphone/mosecurity/c/j;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 251
    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/b;->f()J

    move-result-wide v2

    invoke-static {p2, p1, v2, v3}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/c/j;J)V

    .line 253
    invoke-virtual {v1}, Lcom/keniu/security/a;->l()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 263
    :goto_1
    invoke-virtual {v1}, Lcom/keniu/security/a;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/i;->b(Landroid/content/Context;)V

    :cond_2
    move v0, v6

    .line 270
    goto :goto_0

    .line 255
    :pswitch_2
    invoke-virtual {p0, v4, v5}, Lcom/jxphone/mosecurity/logic/i;->a(II)V

    goto :goto_1

    .line 258
    :pswitch_3
    invoke-virtual {p0, v6, v5}, Lcom/jxphone/mosecurity/logic/i;->a(II)V

    goto :goto_1

    .line 261
    :pswitch_4
    invoke-virtual {p0, v4, v5}, Lcom/jxphone/mosecurity/logic/i;->a(II)V

    .line 262
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/logic/i;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 273
    :pswitch_5
    invoke-virtual {v1}, Lcom/keniu/security/a;->ac()I

    move-result v1

    packed-switch v1, :pswitch_data_3

    .line 277
    invoke-virtual {p0, v4, v5}, Lcom/jxphone/mosecurity/logic/i;->a(II)V

    .line 278
    sget-object v0, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {p1, v0}, Lcom/jxphone/mosecurity/c/j;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 279
    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/b;->f()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/c/j;J)V

    .line 280
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/logic/i;->a(Landroid/content/Context;)V

    move v0, v6

    .line 281
    goto/16 :goto_0

    .line 284
    :pswitch_6
    const-string v1, "white-list"

    const-string v2, "match "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 285
    goto/16 :goto_0

    .line 290
    :pswitch_7
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v0

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    sget-object v0, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {p1, v0}, Lcom/jxphone/mosecurity/c/j;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 292
    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/b;->f()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/c/j;J)V

    move v0, v7

    .line 293
    goto/16 :goto_0

    :cond_3
    move v0, v4

    .line 295
    goto/16 :goto_0

    .line 298
    :pswitch_8
    if-nez p2, :cond_4

    move v0, v4

    .line 299
    goto/16 :goto_0

    .line 300
    :cond_4
    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v0

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v0

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 302
    :cond_5
    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jxphone/mosecurity/c/j;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 303
    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/b;->f()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/c/j;J)V

    move v0, v7

    .line 304
    goto/16 :goto_0

    :cond_6
    move v0, v4

    .line 306
    goto/16 :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 248
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 253
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 273
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method private a(FF)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 524
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 525
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    float-to-int v3, p1

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 526
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    float-to-int v3, p2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 528
    iget v1, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    float-to-int v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    .line 529
    iget v1, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    float-to-int v2, p2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    .line 530
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/high16 v2, 0x42b4

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 538
    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x4348

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, v2, v0

    const/16 v2, 0x2f

    sub-int/2addr v0, v2

    .line 540
    iget v2, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    if-gez v2, :cond_3

    .line 541
    iput v4, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    .line 545
    :cond_2
    :goto_1
    iget v1, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    if-gez v1, :cond_4

    .line 546
    iput v4, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    goto :goto_0

    .line 542
    :cond_3
    iget v2, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    if-le v2, v1, :cond_2

    .line 543
    iput v1, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    goto :goto_1

    .line 547
    :cond_4
    iget v1, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    if-le v1, v0, :cond_0

    .line 548
    iput v0, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/logic/i;->a()V

    .line 848
    invoke-static {p1}, Lcom/keniu/security/util/af;->a(Landroid/content/Context;)V

    .line 849
    return-void
.end method

.method private static a(Landroid/widget/TextView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 612
    packed-switch p1, :pswitch_data_0

    .line 638
    :goto_0
    return-void

    .line 614
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 615
    const v0, 0x7f020010

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 619
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 620
    const v0, 0x7f02000f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 624
    :pswitch_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 625
    const v0, 0x7f02000c

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 629
    :pswitch_3
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 630
    const v0, 0x7f02000d

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 634
    :pswitch_4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 635
    const v0, 0x7f02000e

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/c/j;J)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 840
    sget-object v0, Lcom/jxphone/mosecurity/logic/i;->b:Ljava/util/LinkedList;

    monitor-enter v0

    .line 841
    :try_start_0
    sget-object v1, Lcom/jxphone/mosecurity/logic/i;->b:Ljava/util/LinkedList;

    new-instance v2, Lcom/jxphone/mosecurity/logic/n;

    sget-wide v3, Lcom/keniu/security/e;->a:J

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-direct {v2, p1, p0, v3, v4}, Lcom/jxphone/mosecurity/logic/n;-><init>(Lcom/jxphone/mosecurity/c/j;Lcom/jxphone/mosecurity/c/b;J)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 843
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Lcom/jxphone/mosecurity/c/j;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 837
    :goto_0
    return-void

    .line 828
    :pswitch_0
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/j;->c()J

    move-result-wide v0

    sub-long v0, p1, v0

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/j;->h()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/jxphone/mosecurity/c/j;->c(J)V

    goto :goto_0

    .line 832
    :pswitch_1
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/j;->c()J

    move-result-wide v0

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/jxphone/mosecurity/c/j;->b(J)V

    goto :goto_0

    .line 835
    :pswitch_2
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/j;->c()J

    move-result-wide v0

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/jxphone/mosecurity/c/j;->c(J)V

    goto :goto_0

    .line 826
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/jxphone/mosecurity/c/j;Lcom/jxphone/mosecurity/c/b;Landroid/view/Display;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 210
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 212
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v0

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v2}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 214
    :cond_0
    invoke-virtual {v1}, Lcom/keniu/security/a;->ag()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->e()Lcom/jxphone/mosecurity/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->e()Lcom/jxphone/mosecurity/c/k;

    move-result-object v0

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-virtual {v0, v3, v6}, Lcom/jxphone/mosecurity/c/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    const v5, 0x7f0b0697

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    :cond_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    :cond_3
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03005b

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    :cond_4
    invoke-direct {p0}, Lcom/jxphone/mosecurity/logic/i;->e()V

    :try_start_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_5
    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x31

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Lcom/keniu/security/a;->a(Landroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    invoke-virtual {v1, v0}, Lcom/keniu/security/a;->b(Landroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Lcom/keniu/security/a;->b(Landroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/keniu/security/a;->am()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Lcom/keniu/security/a;->ah()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/jxphone/mosecurity/logic/j;

    invoke-direct {v2, p0, v1}, Lcom/jxphone/mosecurity/logic/j;-><init>(Lcom/jxphone/mosecurity/logic/i;Lcom/keniu/security/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/logic/i;->i:Z

    invoke-virtual {v1}, Lcom/keniu/security/a;->an()I

    move-result v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->x:Ljava/lang/Runnable;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/logic/i;->d(I)V

    .line 218
    return-void

    .line 214
    :pswitch_0
    const/4 v2, -0x1

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f020010

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :pswitch_1
    const/4 v2, -0x1

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f02000f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_2
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f02000c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_3
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f02000d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_4
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f02000e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_8
    move-object v2, v0

    goto/16 :goto_1

    :cond_9
    move-object v0, v3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Lcom/jxphone/mosecurity/c/j;Lcom/keniu/security/e/d;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 796
    sget-object v0, Lcom/jxphone/mosecurity/logic/i;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/e/c;

    .line 797
    invoke-interface {v0, p0, p1}, Lcom/keniu/security/e/c;->a(Ljava/lang/Object;Lcom/keniu/security/e/d;)V

    goto :goto_0

    .line 798
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/logic/i;FF)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 83
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    float-to-int v3, p1

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    float-to-int v3, p2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    float-to-int v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    iget v1, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    float-to-int v2, p2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/high16 v2, 0x42b4

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x4348

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, v2, v0

    const/16 v2, 0x2f

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    if-gez v2, :cond_2

    iput v4, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    if-gez v1, :cond_3

    iput v4, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v2, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    if-le v2, v1, :cond_0

    iput v1, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    if-le v1, v0, :cond_1

    iput v0, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    goto :goto_1
.end method

.method private a(Lcom/keniu/security/a;)V
    .locals 2
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/jxphone/mosecurity/logic/j;

    invoke-direct {v1, p0, p1}, Lcom/jxphone/mosecurity/logic/j;-><init>(Lcom/jxphone/mosecurity/logic/i;Lcom/keniu/security/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 521
    return-void
.end method

.method private a(Lcom/keniu/security/a;Lcom/jxphone/mosecurity/c/j;Landroid/view/Display;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 426
    invoke-virtual {p1}, Lcom/keniu/security/a;->ag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 430
    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/j;->e()Lcom/jxphone/mosecurity/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->b()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    .line 435
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 436
    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/j;->e()Lcom/jxphone/mosecurity/c/k;

    move-result-object v0

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-virtual {v0, v2, v5}, Lcom/jxphone/mosecurity/c/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    const v4, 0x7f0b0697

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 446
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_3

    .line 450
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    .line 453
    :cond_3
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    if-nez v0, :cond_4

    .line 454
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03005b

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    .line 458
    :cond_4
    invoke-direct {p0}, Lcom/jxphone/mosecurity/logic/i;->e()V

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 463
    invoke-virtual {p3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 465
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 466
    if-eqz v3, :cond_5

    .line 467
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d6

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 469
    :cond_5
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 470
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 473
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x31

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 474
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 475
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 476
    invoke-virtual {p1, v0}, Lcom/keniu/security/a;->a(Landroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    .line 477
    invoke-virtual {p1, v0}, Lcom/keniu/security/a;->b(Landroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    .line 478
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Lcom/keniu/security/a;->b(Landroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 479
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/high16 v3, 0x42b4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 482
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/keniu/security/a;->am()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 483
    :goto_3
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    invoke-virtual {p1}, Lcom/keniu/security/a;->ah()Z

    move-result v0

    if-nez v0, :cond_6

    .line 485
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/jxphone/mosecurity/logic/j;

    invoke-direct {v1, p0, p1}, Lcom/jxphone/mosecurity/logic/j;-><init>(Lcom/jxphone/mosecurity/logic/i;Lcom/keniu/security/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 488
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/logic/i;->i:Z

    .line 489
    invoke-virtual {p1}, Lcom/keniu/security/a;->an()I

    move-result v0

    .line 490
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->x:Ljava/lang/Runnable;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 491
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 482
    :pswitch_0
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_2
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_3
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_4
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_7
    move-object v1, v0

    goto/16 :goto_2

    :cond_8
    move-object v0, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 882
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 883
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    :goto_0
    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    sget-object v1, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 887
    const/4 v1, 0x5

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v5

    const-string v3, "0401000301"

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v3}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v1, v6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "dt"

    aput-object v3, v2, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keniu/security/util/i;->c(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    const/4 v2, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "actionname"

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "type"

    aput-object v4, v3, v5

    const-string v4, "1"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    .line 893
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/jxphone/mosecurity/logic/n;)Z
    .locals 2
    .parameter

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/logic/i;->b(Lcom/jxphone/mosecurity/logic/n;)Z

    move-result v0

    .line 397
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/util/af;->a()V

    .line 398
    return v0
.end method

.method static synthetic b(Lcom/jxphone/mosecurity/logic/i;)F
    .locals 1
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/jxphone/mosecurity/logic/i;->w:F

    return v0
.end method

.method static synthetic b(Lcom/jxphone/mosecurity/logic/i;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/jxphone/mosecurity/logic/i;->w:F

    return p1
.end method

.method private static b(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 853
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 854
    invoke-virtual {v1}, Lcom/keniu/security/a;->aB()Ljava/lang/String;

    move-result-object v2

    .line 855
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 857
    new-instance v3, Landroid/app/Notification;

    invoke-virtual {v1}, Lcom/keniu/security/a;->aC()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 860
    const/16 v1, 0x10

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 862
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 863
    const/high16 v4, 0x1000

    invoke-static {p0, v6, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 868
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v2, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 870
    const v1, 0x7f0b064b

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 872
    sput v6, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->a:I

    .line 873
    return-void
.end method

.method private b(Lcom/jxphone/mosecurity/logic/n;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 402
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;)Lcom/keniu/security/b/o;

    move-result-object v0

    move v1, v5

    .line 404
    :goto_0
    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    .line 406
    mul-int/lit16 v2, v1, 0xc8

    int-to-long v2, v2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_1
    invoke-static {p1}, Lcom/jxphone/mosecurity/logic/n;->a(Lcom/jxphone/mosecurity/logic/n;)Lcom/jxphone/mosecurity/c/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/jxphone/mosecurity/logic/n;->c(Lcom/jxphone/mosecurity/logic/n;)J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/keniu/security/b/o;->a(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v5

    .line 414
    :goto_2
    return v0

    .line 404
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method static synthetic c(Lcom/jxphone/mosecurity/logic/i;)F
    .locals 1
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/jxphone/mosecurity/logic/i;->t:F

    return v0
.end method

.method static synthetic c(Lcom/jxphone/mosecurity/logic/i;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/jxphone/mosecurity/logic/i;->t:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jxphone/mosecurity/logic/i;->t:F

    return v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 876
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 878
    const v0, 0x7f0b064b

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 879
    return-void
.end method

.method static synthetic d(Lcom/jxphone/mosecurity/logic/i;)F
    .locals 1
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/jxphone/mosecurity/logic/i;->u:F

    return v0
.end method

.method static synthetic d(Lcom/jxphone/mosecurity/logic/i;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/jxphone/mosecurity/logic/i;->u:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jxphone/mosecurity/logic/i;->u:F

    return v0
.end method

.method private d(I)V
    .locals 5
    .parameter

    .prologue
    .line 571
    sget v0, Lcom/jxphone/mosecurity/logic/i;->d:I

    if-ne v0, p1, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lcom/keniu/security/a;->an()I

    move-result v0

    .line 576
    sput p1, Lcom/jxphone/mosecurity/logic/i;->d:I

    .line 577
    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->i:Z

    if-eqz v1, :cond_0

    .line 578
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 580
    invoke-direct {p0}, Lcom/jxphone/mosecurity/logic/i;->e()V

    goto :goto_0

    .line 581
    :cond_2
    if-nez p1, :cond_0

    .line 583
    if-lez v0, :cond_0

    .line 584
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->j:Landroid/os/Handler;

    new-instance v2, Lcom/jxphone/mosecurity/logic/l;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/logic/l;-><init>(Lcom/jxphone/mosecurity/logic/i;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/jxphone/mosecurity/logic/i;)F
    .locals 1
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/jxphone/mosecurity/logic/i;->t:F

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/logic/i;->i:Z

    if-eqz v0, :cond_0

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/logic/i;->i:Z

    .line 598
    const/4 v0, -0x1

    sput v0, Lcom/jxphone/mosecurity/logic/i;->d:I

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    .line 603
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/i;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 605
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private e(Lcom/jxphone/mosecurity/c/j;)Z
    .locals 2
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    .line 379
    invoke-interface {v0, p1}, Lcom/keniu/security/b/g;->a(Lcom/jxphone/mosecurity/c/j;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 380
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 381
    invoke-virtual {p1, v0}, Lcom/jxphone/mosecurity/c/j;->a(I)V

    .line 382
    sget-object v0, Lcom/keniu/security/e/d;->a:Lcom/keniu/security/e/d;

    invoke-static {p1, v0}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/j;Lcom/keniu/security/e/d;)V

    .line 383
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/jxphone/mosecurity/logic/i;)F
    .locals 1
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/jxphone/mosecurity/logic/i;->u:F

    return v0
.end method

.method static synthetic g(Lcom/jxphone/mosecurity/logic/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/logic/i;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/jxphone/mosecurity/logic/i;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/jxphone/mosecurity/logic/i;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->k:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic j(Lcom/jxphone/mosecurity/logic/i;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/jxphone/mosecurity/logic/i;->e()V

    return-void
.end method

.method static synthetic k(Lcom/jxphone/mosecurity/logic/i;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->j:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILandroid/view/Display;)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v6

    .line 206
    :goto_0
    return v0

    .line 190
    :cond_1
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/i;->q:Ljava/lang/String;

    .line 192
    const-string v0, "^\\+?\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    .line 195
    goto :goto_0

    .line 198
    :cond_2
    new-instance v1, Lcom/jxphone/mosecurity/c/j;

    invoke-direct {v1, p1}, Lcom/jxphone/mosecurity/c/j;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, p2}, Lcom/jxphone/mosecurity/c/j;->c(I)V

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jxphone/mosecurity/c/j;->a(J)V

    .line 201
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v2}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 204
    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v3}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_3
    :goto_1
    move v2, v6

    .line 205
    :goto_2
    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v3}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v4

    if-eq v4, v8, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v0

    sget-object v4, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v4}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_4
    invoke-virtual {v3}, Lcom/keniu/security/a;->ag()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/j;->e()Lcom/jxphone/mosecurity/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/j;->e()Lcom/jxphone/mosecurity/c/k;

    move-result-object v0

    iget-object v5, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Lcom/jxphone/mosecurity/c/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    const v7, 0x7f0b0697

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    :cond_6
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_7

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    :cond_7
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f03005b

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    :cond_8
    invoke-direct {p0}, Lcom/jxphone/mosecurity/logic/i;->e()V

    :try_start_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v4, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7d3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz v6, :cond_9

    iget-object v4, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7d6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_9
    iget-object v4, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v4, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v4, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x31

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v0}, Lcom/keniu/security/a;->a(Landroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    invoke-virtual {v3, v0}, Lcom/keniu/security/a;->b(Landroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lcom/jxphone/mosecurity/logic/i;->s:I

    iget-object v4, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v0}, Lcom/keniu/security/a;->b(Landroid/util/DisplayMetrics;)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/jxphone/mosecurity/logic/i;->r:I

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    const/high16 v6, 0x42b4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    add-int/2addr v0, v5

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/keniu/security/a;->am()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :goto_5
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->f:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jxphone/mosecurity/logic/i;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Lcom/keniu/security/a;->ah()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->h:Landroid/widget/TextView;

    new-instance v4, Lcom/jxphone/mosecurity/logic/j;

    invoke-direct {v4, p0, v3}, Lcom/jxphone/mosecurity/logic/j;-><init>(Lcom/jxphone/mosecurity/logic/i;Lcom/keniu/security/a;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/logic/i;->i:Z

    invoke-virtual {v3}, Lcom/keniu/security/a;->an()I

    move-result v0

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/i;->j:Landroid/os/Handler;

    iget-object v4, p0, Lcom/jxphone/mosecurity/logic/i;->x:Ljava/lang/Runnable;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_6
    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/logic/i;->d(I)V

    move v0, v2

    .line 206
    goto/16 :goto_0

    .line 204
    :pswitch_0
    if-nez v0, :cond_d

    invoke-virtual {v3}, Lcom/keniu/security/a;->ac()I

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v3}, Lcom/keniu/security/b/e;->e(Landroid/content/Context;)Lcom/keniu/security/b/r;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/keniu/security/b/r;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    if-nez v2, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/jxphone/mosecurity/logic/i;->c:J

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->d:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/c/j;->a(Lcom/jxphone/mosecurity/c/c;)V

    const/4 v2, 0x0

    sget-wide v3, Lcom/keniu/security/e;->a:J

    invoke-static {}, Lcom/keniu/security/a;->a()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v2, v1, v3, v4}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/c/j;J)V

    move v2, v8

    goto/16 :goto_2

    :cond_c
    move v2, v6

    goto/16 :goto_2

    :cond_d
    sget-object v4, Lcom/jxphone/mosecurity/logic/m;->a:[I

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    move v2, v6

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/c/j;->a(Lcom/jxphone/mosecurity/c/c;)V

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->f()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/c/j;J)V

    invoke-virtual {v3}, Lcom/keniu/security/a;->l()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    :goto_7
    invoke-virtual {v3}, Lcom/keniu/security/a;->q()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v2}, Lcom/jxphone/mosecurity/logic/i;->b(Landroid/content/Context;)V

    :cond_e
    move v2, v7

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, v6, v9}, Lcom/jxphone/mosecurity/logic/i;->a(II)V

    goto :goto_7

    :pswitch_3
    invoke-virtual {p0, v7, v9}, Lcom/jxphone/mosecurity/logic/i;->a(II)V

    goto :goto_7

    :pswitch_4
    invoke-virtual {p0, v6, v9}, Lcom/jxphone/mosecurity/logic/i;->a(II)V

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/jxphone/mosecurity/logic/i;->a(Landroid/content/Context;)V

    goto :goto_7

    :pswitch_5
    invoke-virtual {v3}, Lcom/keniu/security/a;->ac()I

    move-result v3

    packed-switch v3, :pswitch_data_4

    invoke-virtual {p0, v6, v9}, Lcom/jxphone/mosecurity/logic/i;->a(II)V

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/c/j;->a(Lcom/jxphone/mosecurity/c/c;)V

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->f()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/c/j;J)V

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/jxphone/mosecurity/logic/i;->a(Landroid/content/Context;)V

    move v2, v7

    goto/16 :goto_2

    :pswitch_6
    const-string v3, "white-list"

    const-string v4, "match "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_7
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v2, v3}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/c/j;->a(Lcom/jxphone/mosecurity/c/c;)V

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->f()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/c/j;J)V

    move v2, v8

    goto/16 :goto_2

    :cond_f
    move v2, v6

    goto/16 :goto_2

    :pswitch_8
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v2, v3}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v2, v3}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/c/j;->a(Lcom/jxphone/mosecurity/c/c;)V

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->f()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/c/j;J)V

    move v2, v8

    goto/16 :goto_2

    :cond_11
    move v2, v6

    goto/16 :goto_2

    .line 205
    :pswitch_9
    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f020010

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :pswitch_a
    const/4 v4, -0x1

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f02000f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_5

    :pswitch_b
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f02000c

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_5

    :pswitch_c
    const/high16 v4, -0x100

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f02000d

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_5

    :pswitch_d
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f02000e

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    :cond_12
    move-object v4, v0

    goto/16 :goto_4

    :cond_13
    move-object v0, v5

    goto/16 :goto_3

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 205
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 204
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method public final varargs a([Lcom/jxphone/mosecurity/c/c;)I
    .locals 3
    .parameter

    .prologue
    .line 697
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/g;->b([Lcom/jxphone/mosecurity/c/c;)I

    move-result v0

    .line 699
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 700
    const/4 v1, 0x0

    sget-object v2, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/j;Lcom/keniu/security/e/d;)V

    .line 702
    :cond_0
    return v0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/logic/i;->d(I)V

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 319
    sget-object v3, Lcom/jxphone/mosecurity/logic/i;->b:Ljava/util/LinkedList;

    monitor-enter v3

    .line 320
    :try_start_0
    sget-object v0, Lcom/jxphone/mosecurity/logic/i;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    monitor-exit v3

    .line 328
    :goto_0
    return-void

    .line 322
    :cond_0
    sget-object v0, Lcom/jxphone/mosecurity/logic/i;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/logic/n;

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/n;->a(Lcom/jxphone/mosecurity/logic/n;)Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 324
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/jxphone/mosecurity/c/j;->c(I)V

    .line 325
    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/j;->c()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/jxphone/mosecurity/c/j;->b(J)V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const v0, 0x7f0b064b

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 328
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 159
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->m:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->m:Landroid/media/AudioManager;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->m:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    iget v0, p0, Lcom/jxphone/mosecurity/logic/i;->n:I

    if-eq v0, v2, :cond_1

    .line 166
    iget v0, p0, Lcom/jxphone/mosecurity/logic/i;->n:I

    if-lt p1, v0, :cond_1

    .line 167
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->m:Landroid/media/AudioManager;

    iget v1, p0, Lcom/jxphone/mosecurity/logic/i;->o:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 178
    :cond_3
    iput v2, p0, Lcom/jxphone/mosecurity/logic/i;->n:I

    .line 179
    iput v2, p0, Lcom/jxphone/mosecurity/logic/i;->o:I

    .line 180
    iput v2, p0, Lcom/jxphone/mosecurity/logic/i;->p:I

    goto :goto_0
.end method

.method public final a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 128
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->m:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->m:Landroid/media/AudioManager;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->m:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget v0, p0, Lcom/jxphone/mosecurity/logic/i;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 135
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->m:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/jxphone/mosecurity/logic/i;->o:I

    .line 136
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->m:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/jxphone/mosecurity/logic/i;->p:I

    .line 140
    :cond_3
    iget v0, p0, Lcom/jxphone/mosecurity/logic/i;->n:I

    if-lt p2, v0, :cond_1

    .line 141
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    if-eq p2, v2, :cond_4

    .line 150
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->m:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 153
    :cond_4
    iput p2, p0, Lcom/jxphone/mosecurity/logic/i;->n:I

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/e/c;)V
    .locals 1
    .parameter

    .prologue
    .line 792
    sget-object v0, Lcom/jxphone/mosecurity/logic/i;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 793
    return-void
.end method

.method public final a(Lcom/jxphone/mosecurity/c/j;)Z
    .locals 2
    .parameter

    .prologue
    .line 742
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/g;->b(Lcom/jxphone/mosecurity/c/j;)Z

    move-result v0

    .line 744
    if-eqz v0, :cond_0

    .line 745
    sget-object v1, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {p1, v1}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/j;Lcom/keniu/security/e/d;)V

    .line 746
    :cond_0
    return v0
.end method

.method public final a(Lcom/jxphone/mosecurity/c/b;)[Lcom/jxphone/mosecurity/c/j;
    .locals 3
    .parameter

    .prologue
    .line 686
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/keniu/security/b/g;->b(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;
    .locals 2
    .parameter

    .prologue
    .line 669
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/g;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 680
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/keniu/security/b/g;->a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 707
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/keniu/security/b/g;->c(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    move-result v0

    .line 709
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 710
    new-instance v1, Lcom/jxphone/mosecurity/c/j;

    invoke-direct {v1, p1}, Lcom/jxphone/mosecurity/c/j;-><init>(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v1, p2}, Lcom/jxphone/mosecurity/c/j;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 712
    sget-object v2, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/j;Lcom/keniu/security/e/d;)V

    .line 714
    :cond_0
    return v0
.end method

.method public final b(I)Lcom/jxphone/mosecurity/c/j;
    .locals 2
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/g;->a(I)Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 334
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/logic/i;->d(I)V

    .line 335
    invoke-virtual {p0, v10}, Lcom/jxphone/mosecurity/logic/i;->a(I)V

    .line 337
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 339
    sget-object v0, Lcom/jxphone/mosecurity/logic/i;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 342
    sget-object v4, Lcom/jxphone/mosecurity/logic/i;->b:Ljava/util/LinkedList;

    monitor-enter v4

    .line 345
    :goto_0
    :try_start_0
    sget-object v0, Lcom/jxphone/mosecurity/logic/i;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/logic/n;

    if-eqz v0, :cond_2

    .line 346
    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/n;->a(Lcom/jxphone/mosecurity/logic/n;)Lcom/jxphone/mosecurity/c/j;

    move-result-object v5

    .line 347
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 349
    :goto_1
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 350
    sget-object v6, Lcom/jxphone/mosecurity/logic/m;->a:[I

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->g()Lcom/jxphone/mosecurity/c/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 352
    :pswitch_0
    invoke-direct {p0, v5}, Lcom/jxphone/mosecurity/logic/i;->e(Lcom/jxphone/mosecurity/c/j;)Z

    .line 353
    const-string v6, "PhoneCallLogicImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIdle>>call.getType()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",cm.isFriendNotice()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/keniu/security/a;->q()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v5

    if-ne v5, v10, :cond_0

    invoke-virtual {v1}, Lcom/keniu/security/a;->q()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 360
    iget-object v5, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/n;->b(Lcom/jxphone/mosecurity/logic/n;)Lcom/jxphone/mosecurity/c/b;

    invoke-static {v5}, Lcom/jxphone/mosecurity/logic/i;->b(Landroid/content/Context;)V

    .line 361
    :cond_0
    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/logic/i;->b(Lcom/jxphone/mosecurity/logic/n;)Z

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/util/af;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 347
    :pswitch_1
    :try_start_1
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->c()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->h()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/jxphone/mosecurity/c/j;->c(J)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->c()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Lcom/jxphone/mosecurity/c/j;->b(J)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->c()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Lcom/jxphone/mosecurity/c/j;->c(J)V

    goto/16 :goto_1

    .line 365
    :cond_1
    invoke-direct {p0, v5}, Lcom/jxphone/mosecurity/logic/i;->e(Lcom/jxphone/mosecurity/c/j;)Z

    .line 366
    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/logic/i;->b(Lcom/jxphone/mosecurity/logic/n;)Z

    goto/16 :goto_0

    .line 369
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->q:Ljava/lang/String;

    .line 374
    return-void

    .line 347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 350
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/keniu/security/e/c;)V
    .locals 1
    .parameter

    .prologue
    .line 787
    sget-object v0, Lcom/jxphone/mosecurity/logic/i;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 788
    return-void
.end method

.method public final b(Lcom/jxphone/mosecurity/c/j;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 760
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/keniu/security/b/g;->b(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 761
    sget-object v0, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {p1, v0}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/j;Lcom/keniu/security/e/d;)V

    .line 762
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->d(Landroid/content/Context;)Lcom/keniu/security/b/b;

    move-result-object v0

    .line 763
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/keniu/security/b/b;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    .line 764
    if-eqz v1, :cond_0

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jxphone/mosecurity/c/b;->b(J)V

    .line 766
    invoke-interface {v0, v1}, Lcom/keniu/security/b/b;->b(Lcom/jxphone/mosecurity/c/b;)Z

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;)Lcom/keniu/security/b/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/o;->a(Lcom/jxphone/mosecurity/c/j;)Z

    move-result v0

    .line 770
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 719
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/keniu/security/b/g;->d(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    move-result v0

    .line 721
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 722
    new-instance v1, Lcom/jxphone/mosecurity/c/j;

    invoke-direct {v1, p1}, Lcom/jxphone/mosecurity/c/j;-><init>(Ljava/lang/String;)V

    .line 723
    sget-object v2, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/j;Lcom/keniu/security/e/d;)V

    .line 725
    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)Z
    .locals 3
    .parameter

    .prologue
    .line 730
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/g;->b(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 732
    :goto_0
    if-eqz v0, :cond_0

    .line 733
    new-instance v1, Lcom/jxphone/mosecurity/c/j;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/jxphone/mosecurity/c/j;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v1, p1}, Lcom/jxphone/mosecurity/c/j;->a(I)V

    .line 735
    sget-object v2, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/j;Lcom/keniu/security/e/d;)V

    .line 737
    :cond_0
    return v0

    .line 730
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/jxphone/mosecurity/c/j;)Z
    .locals 2
    .parameter

    .prologue
    .line 776
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/keniu/security/b/g;->b(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 777
    sget-object v0, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {p1, v0}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/j;Lcom/keniu/security/e/d;)V

    .line 778
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jxphone/mosecurity/d/f;->a:Ljava/lang/String;

    .line 779
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;)Lcom/keniu/security/b/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/o;->a(Lcom/jxphone/mosecurity/c/j;)Z

    move-result v0

    .line 781
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Lcom/jxphone/mosecurity/c/j;)Z
    .locals 3
    .parameter

    .prologue
    .line 898
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    .line 900
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->g()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/keniu/security/b/g;->a(ILcom/jxphone/mosecurity/c/c;)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 751
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    invoke-static {p1}, Lcom/ijinshan/kinghelper/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/keniu/security/b/g;->e(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 753
    :goto_0
    if-eqz v0, :cond_0

    .line 754
    const/4 v0, 0x0

    sget-object v1, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/c/j;Lcom/keniu/security/e/d;)V

    .line 755
    :cond_0
    return v2

    :cond_1
    move v0, v2

    .line 751
    goto :goto_0
.end method

.method public final d()[Lcom/jxphone/mosecurity/c/j;
    .locals 4

    .prologue
    .line 674
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/i;->l:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/i;->e:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/jxphone/mosecurity/c/c;

    const/4 v2, 0x0

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->d:Lcom/jxphone/mosecurity/c/c;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/keniu/security/b/g;->a([Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    return-object v0
.end method
