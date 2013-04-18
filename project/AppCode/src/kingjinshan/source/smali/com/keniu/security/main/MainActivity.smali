.class public Lcom/keniu/security/main/MainActivity;
.super Lcom/jxphone/mosecurity/activity/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/keniu/security/main/a/j;


# static fields
.field private static final aA:Ljava/lang/String; = "notify_enter_root_value"

.field private static final aF:Ljava/lang/String; = "friend_find_password_check_count"

.field private static final aG:Ljava/lang/String; = "friend_find_password_check_time"

.field private static final aH:I = 0x5

.field private static final ac:Ljava/lang/String; = "BaseActivity"

.field private static final ad:I = 0x1

.field private static final ae:I = 0x2

.field private static final af:I = 0x4

.field private static final ag:I = 0x5

.field private static final ah:I = 0x6

.field private static final ai:I = 0x8

.field private static final aj:I = 0x9

.field private static final ak:I = 0xa

.field private static final al:I = 0xb

.field private static final am:I = 0xc

.field private static final an:I = 0xd

.field private static ar:Lcom/keniu/security/main/a; = null

.field private static final ay:Ljava/lang/String; = "checkStatus"

.field private static final az:Ljava/lang/String; = "notify_enter_root"

.field public static final b:Ljava/lang/String; = "from_notify"

.field public static c:Z

.field public static d:Landroid/widget/Toast;

.field public static h:I


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/Button;

.field private D:Z

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/FrameLayout;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/ImageView;

.field private M:Landroid/widget/ImageView;

.field private N:I

.field private O:I

.field private P:Landroid/widget/Button;

.field private Q:Landroid/widget/LinearLayout;

.field private R:Landroid/widget/LinearLayout;

.field private S:Landroid/widget/Button;

.field private T:Landroid/widget/LinearLayout;

.field private U:Landroid/widget/LinearLayout;

.field private V:Landroid/widget/Button;

.field private W:Landroid/widget/LinearLayout;

.field private volatile X:Z

.field private volatile Y:Z

.field private Z:Z

.field private aB:Z

.field private aC:I

.field private aD:Z

.field private aE:Z

.field private final aI:Landroid/view/animation/Animation$AnimationListener;

.field private aJ:Landroid/view/animation/Animation$AnimationListener;

.field private final aK:I

.field private final aL:I

.field private final aM:I

.field private final aN:I

.field private aO:Landroid/os/Handler;

.field private volatile aa:Z

.field private ab:Lcom/keniu/security/main/bk;

.field private ao:Landroid/widget/SlidingDrawer;

.field private ap:Landroid/os/Handler;

.field private final aq:Lcom/jxphone/mosecurity/c/d;

.field private as:I

.field private at:Z

.field private au:Lcom/keniu/security/main/bq;

.field private av:Landroid/view/View$OnClickListener;

.field private aw:Landroid/view/View$OnClickListener;

.field private ax:Ljava/lang/Runnable;

.field e:Landroid/view/View$OnClickListener;

.field f:Z

.field g:Z

.field private i:Landroid/widget/ListView;

.field private j:Lcom/keniu/security/main/a/h;

.field private k:Lcom/keniu/security/main/bi;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Lcom/keniu/security/g/a;

.field private volatile q:Z

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/animation/Animation;

.field private u:Landroid/widget/PopupWindow;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/FrameLayout;

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/main/MainActivity;->c:Z

    .line 213
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/main/MainActivity;->ar:Lcom/keniu/security/main/a;

    .line 2761
    const/16 v0, 0x64

    sput v0, Lcom/keniu/security/main/MainActivity;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;-><init>()V

    .line 133
    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->i:Landroid/widget/ListView;

    .line 134
    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->j:Lcom/keniu/security/main/a/h;

    .line 135
    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    .line 141
    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->p:Lcom/keniu/security/g/a;

    .line 142
    iput-boolean v1, p0, Lcom/keniu/security/main/MainActivity;->q:Z

    .line 144
    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->s:Landroid/widget/TextView;

    .line 147
    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    .line 160
    iput-boolean v1, p0, Lcom/keniu/security/main/MainActivity;->D:Z

    .line 174
    iput v2, p0, Lcom/keniu/security/main/MainActivity;->N:I

    .line 175
    iput v2, p0, Lcom/keniu/security/main/MainActivity;->O:I

    .line 185
    iput-boolean v1, p0, Lcom/keniu/security/main/MainActivity;->X:Z

    .line 186
    iput-boolean v1, p0, Lcom/keniu/security/main/MainActivity;->Y:Z

    .line 187
    iput-boolean v1, p0, Lcom/keniu/security/main/MainActivity;->Z:Z

    .line 188
    iput-boolean v1, p0, Lcom/keniu/security/main/MainActivity;->aa:Z

    .line 209
    new-instance v0, Lcom/jxphone/mosecurity/c/d;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/c/d;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->aq:Lcom/jxphone/mosecurity/c/d;

    .line 224
    new-instance v0, Lcom/keniu/security/main/n;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/n;-><init>(Lcom/keniu/security/main/MainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->au:Lcom/keniu/security/main/bq;

    .line 245
    new-instance v0, Lcom/keniu/security/main/y;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/y;-><init>(Lcom/keniu/security/main/MainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->av:Landroid/view/View$OnClickListener;

    .line 282
    new-instance v0, Lcom/keniu/security/main/aj;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/aj;-><init>(Lcom/keniu/security/main/MainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->aw:Landroid/view/View$OnClickListener;

    .line 424
    new-instance v0, Lcom/keniu/security/main/bf;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/bf;-><init>(Lcom/keniu/security/main/MainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->ax:Ljava/lang/Runnable;

    .line 735
    new-instance v0, Lcom/keniu/security/main/o;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/o;-><init>(Lcom/keniu/security/main/MainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->e:Landroid/view/View$OnClickListener;

    .line 805
    iput-boolean v1, p0, Lcom/keniu/security/main/MainActivity;->aB:Z

    .line 806
    const/4 v0, 0x5

    iput v0, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    .line 1143
    iput-boolean v2, p0, Lcom/keniu/security/main/MainActivity;->aD:Z

    .line 1144
    iput-boolean v1, p0, Lcom/keniu/security/main/MainActivity;->aE:Z

    .line 1342
    iput-boolean v1, p0, Lcom/keniu/security/main/MainActivity;->f:Z

    .line 1497
    iput-boolean v1, p0, Lcom/keniu/security/main/MainActivity;->g:Z

    .line 2232
    new-instance v0, Lcom/keniu/security/main/ay;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/ay;-><init>(Lcom/keniu/security/main/MainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->aI:Landroid/view/animation/Animation$AnimationListener;

    .line 2285
    new-instance v0, Lcom/keniu/security/main/az;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/az;-><init>(Lcom/keniu/security/main/MainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->aJ:Landroid/view/animation/Animation$AnimationListener;

    .line 2756
    iput v2, p0, Lcom/keniu/security/main/MainActivity;->aK:I

    .line 2757
    const/4 v0, 0x2

    iput v0, p0, Lcom/keniu/security/main/MainActivity;->aL:I

    .line 2758
    const/4 v0, 0x3

    iput v0, p0, Lcom/keniu/security/main/MainActivity;->aM:I

    .line 2759
    const/4 v0, 0x4

    iput v0, p0, Lcom/keniu/security/main/MainActivity;->aN:I

    .line 2763
    new-instance v0, Lcom/keniu/security/main/ba;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/ba;-><init>(Lcom/keniu/security/main/MainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->aO:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A(Lcom/keniu/security/main/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/keniu/security/main/MainActivity;->O:I

    return v0
.end method

.method private A()Z
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1468
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1470
    const-string v1, "friend_find_password_check_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1471
    const-string v2, "friend_find_password_check_count"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    .line 1473
    const-string v2, "%%%"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    iget v2, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    if-gtz v2, :cond_1

    .line 1476
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/keniu/security/util/i;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1477
    iput v8, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    .line 1478
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "friend_find_password_check_count"

    iget v3, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1479
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v7

    .line 1493
    :goto_0
    return v0

    .line 1482
    :cond_0
    const-wide/16 v2, 0x18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v4, 0x36ee80

    div-long/2addr v0, v4

    sub-long v0, v2, v0

    .line 1485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u60a8\u5df2\u9a8c\u8bc1\u5931\u8d255\u6b21\uff0c\u8bf7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5c0f\u65f6\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v6

    .line 1488
    goto :goto_0

    .line 1491
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u60a8\u8fd8\u6709"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6b21\u9a8c\u8bc1\u673a\u4f1a\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v7

    .line 1493
    goto :goto_0
.end method

.method private B()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1501
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1504
    const v0, 0x7f080222

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1506
    const v1, 0x7f0802fc

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1509
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1510
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1511
    new-instance v3, Lcom/keniu/security/main/ah;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/ah;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1522
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v3, 0x7f0b0219

    invoke-virtual {v0, v3}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v3

    .line 1525
    const v0, 0x7f0b0630

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1526
    new-instance v0, Lcom/keniu/security/main/ai;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/ai;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v3, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    .line 1534
    const v0, 0x7f0802fd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1536
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1537
    new-instance v1, Lcom/keniu/security/main/bm;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/bm;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1539
    invoke-direct {p0, v2, v0}, Lcom/keniu/security/main/MainActivity;->a(Landroid/view/View;Landroid/widget/EditText;)V

    .line 1540
    new-instance v1, Lcom/keniu/security/main/ak;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/main/ak;-><init>(Lcom/keniu/security/main/MainActivity;Landroid/widget/EditText;)V

    .line 1582
    const v0, 0x7f0b0682

    invoke-virtual {v3, v0, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1583
    const v0, 0x7f0b0683

    new-instance v1, Lcom/keniu/security/main/al;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/al;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v3, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1593
    invoke-virtual {v3}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 1595
    new-instance v1, Lcom/keniu/security/main/am;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/am;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1602
    return-object v0
.end method

.method static synthetic B(Lcom/keniu/security/main/MainActivity;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->aJ:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic C(Lcom/keniu/security/main/MainActivity;)Landroid/widget/SlidingDrawer;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ao:Landroid/widget/SlidingDrawer;

    return-object v0
.end method

.method private C()V
    .locals 2

    .prologue
    .line 1613
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1615
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1616
    const-string v1, "friend_find_password_check_count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1617
    const-string v1, "friend_find_password_check_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1618
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1619
    return-void
.end method

.method private D()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1646
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1649
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b0219

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v2

    .line 1651
    new-instance v0, Lcom/keniu/security/main/ao;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/ao;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    .line 1657
    const v0, 0x7f0802fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1659
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1660
    const v3, 0x7f0b07bb

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1661
    const v0, 0x7f0802fd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1663
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1664
    new-instance v3, Lcom/keniu/security/main/bm;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/bm;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1666
    invoke-direct {p0, v1, v0}, Lcom/keniu/security/main/MainActivity;->a(Landroid/view/View;Landroid/widget/EditText;)V

    .line 1668
    const v3, 0x7f080222

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1670
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1671
    new-instance v3, Lcom/keniu/security/main/ap;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/ap;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1680
    new-instance v1, Lcom/keniu/security/main/aq;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/main/aq;-><init>(Lcom/keniu/security/main/MainActivity;Landroid/widget/EditText;)V

    .line 1711
    const v0, 0x7f0b03a9

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1712
    const v0, 0x7f0b0683

    new-instance v1, Lcom/keniu/security/main/ar;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/ar;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1721
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 1723
    new-instance v1, Lcom/keniu/security/main/as;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/as;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1729
    return-object v0
.end method

.method static synthetic D(Lcom/keniu/security/main/MainActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    return-object v0
.end method

.method private E()Landroid/app/Dialog;
    .locals 8

    .prologue
    const v4, 0x7f0b04ee

    const/4 v7, 0x0

    const v6, 0x7f0b03ca

    const/4 v5, 0x0

    .line 1733
    .line 1734
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1736
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1738
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1739
    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 1740
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1741
    :cond_0
    invoke-virtual {p0, v4}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 1743
    const v0, 0x7f0b0763

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 1745
    invoke-virtual {p0, v6}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1763
    :goto_0
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 1764
    new-instance v1, Lcom/keniu/security/main/at;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/at;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1770
    return-object v0

    .line 1747
    :cond_1
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1748
    :cond_2
    invoke-virtual {p0, v4}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 1750
    const v0, 0x7f0b0764

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 1752
    invoke-virtual {p0, v6}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_0

    .line 1755
    :cond_3
    const v0, 0x7f0b0219

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 1757
    const v0, 0x7f0b07f9

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 1760
    invoke-virtual {v2, v6, v7}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_0
.end method

.method static synthetic E(Lcom/keniu/security/main/MainActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    return-object v0
.end method

.method private F()V
    .locals 3

    .prologue
    .line 1808
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    .line 1809
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    .line 1810
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    .line 1811
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 1812
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1813
    const-string v2, "isDummy"

    invoke-virtual {v0}, Lcom/keniu/security/a;->ai()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1814
    const-class v0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1815
    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1816
    return-void
.end method

.method static synthetic F(Lcom/keniu/security/main/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->q:Z

    return v0
.end method

.method private G()V
    .locals 2

    .prologue
    .line 1819
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1820
    const-string v0, "pt"

    const-string v1, "4"

    invoke-static {p0, v0, v1}, Lcom/jxphone/mosecurity/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->e(Landroid/content/Context;)Z

    move-result v0

    .line 1825
    if-eqz v0, :cond_1

    .line 1826
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1830
    :goto_0
    return-void

    .line 1828
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic G(Lcom/keniu/security/main/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->X:Z

    return v0
.end method

.method private H()V
    .locals 1

    .prologue
    .line 1865
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/keniu/security/main/MainActivity;->c(Z)V

    .line 1866
    return-void
.end method

.method static synthetic H(Lcom/keniu/security/main/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->Y:Z

    return v0
.end method

.method private I()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1870
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 1871
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->e()Lcom/keniu/security/main/bs;

    move-result-object v0

    .line 1874
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1875
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1876
    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->c()I

    move-result v1

    .line 1877
    packed-switch v1, :pswitch_data_0

    .line 1898
    :goto_0
    const-string v1, "main"

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1899
    iget-object v2, p0, Lcom/keniu/security/main/MainActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1902
    const-string v1, "process_left"

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1904
    iget-object v2, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1906
    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->b()I

    move-result v1

    .line 1907
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1909
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1912
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1914
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1915
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1927
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1928
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1930
    return-void

    .line 1880
    :pswitch_0
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020162

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1885
    :pswitch_1
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020167

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1891
    :pswitch_2
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020166

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1917
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1918
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1920
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1922
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1923
    const-string v1, "process_right"

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1925
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1877
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic I(Lcom/keniu/security/main/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->aa:Z

    return v0
.end method

.method static synthetic J(Lcom/keniu/security/main/MainActivity;)Lcom/keniu/security/main/a/h;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->j:Lcom/keniu/security/main/a/h;

    return-object v0
.end method

.method private J()V
    .locals 3

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->H:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/keniu/security/main/bu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1938
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    sget v1, Lcom/keniu/security/main/bn;->d:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->b(I)Lcom/keniu/security/main/bs;

    move-result-object v0

    .line 1940
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->I:Landroid/widget/TextView;

    const-string v2, "description"

    invoke-virtual {v0, v2}, Lcom/keniu/security/main/bs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1944
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    sget v1, Lcom/keniu/security/main/bn;->e:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->b(I)Lcom/keniu/security/main/bs;

    move-result-object v0

    .line 1946
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->J:Landroid/widget/TextView;

    const-string v2, "description"

    invoke-virtual {v0, v2}, Lcom/keniu/security/main/bs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1950
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1951
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->K:Landroid/widget/TextView;

    const v1, 0x7f0b08e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1960
    :goto_0
    return-void

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->K:Landroid/widget/TextView;

    const v1, 0x7f0b08e3

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v1, v2}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic K(Lcom/keniu/security/main/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method private K()V
    .locals 7

    .prologue
    const/high16 v2, 0x4000

    const/4 v5, 0x1

    .line 2185
    iget v0, p0, Lcom/keniu/security/main/MainActivity;->N:I

    if-ne v0, v5, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ao:Landroid/widget/SlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 2190
    const-string v0, "mg_main_okcheck"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 2194
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v2

    .line 2195
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v2

    .line 2199
    new-instance v0, Lcom/keniu/security/main/cg;

    iget v1, p0, Lcom/keniu/security/main/MainActivity;->O:I

    int-to-float v1, v1

    const/4 v2, 0x0

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/keniu/security/main/MainActivity;->O:I

    int-to-float v2, v2

    const/high16 v6, 0x42b4

    mul-float/2addr v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/keniu/security/main/cg;-><init>(FFFFZ)V

    .line 2201
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/main/cg;->setDuration(J)V

    .line 2202
    invoke-virtual {v0, v5}, Lcom/keniu/security/main/cg;->setFillAfter(Z)V

    .line 2203
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/cg;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2204
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->aI:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/cg;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2206
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2207
    return-void
.end method

.method private L()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2210
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->b()V

    .line 2211
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->notifyDataSetChanged()V

    .line 2212
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->K()V

    .line 2213
    iput-boolean v2, p0, Lcom/keniu/security/main/MainActivity;->aD:Z

    .line 2214
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->s:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2215
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2216
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->i:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2217
    return-void
.end method

.method private M()V
    .locals 8

    .prologue
    const v7, 0x7f020162

    const v6, 0x7f0b083c

    const v5, 0x7f0b0515

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2839
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->e()V

    .line 2841
    iget-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->aa:Z

    if-eqz v0, :cond_2

    .line 2843
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2846
    iput-boolean v3, p0, Lcom/keniu/security/main/MainActivity;->aa:Z

    .line 2847
    iget-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->X:Z

    if-eqz v0, :cond_0

    .line 2849
    iput-boolean v3, p0, Lcom/keniu/security/main/MainActivity;->X:Z

    .line 2851
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2853
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2854
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    const v1, 0x7f0b0838

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2855
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->av:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2856
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2857
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    const v1, 0x7f0b0517

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2858
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2859
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2860
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2954
    :goto_0
    return-void

    .line 2862
    :cond_0
    iget-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->Y:Z

    if-eqz v0, :cond_1

    .line 2864
    iput-boolean v3, p0, Lcom/keniu/security/main/MainActivity;->Y:Z

    .line 2866
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-static {v0}, Lcom/keniu/security/main/bi;->a(Lcom/keniu/security/main/bi;)V

    .line 2867
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2869
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2870
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2871
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 2872
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2873
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2874
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2877
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0b083a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2878
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2879
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 2880
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2881
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2882
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2888
    :cond_2
    iget-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->X:Z

    if-eqz v0, :cond_3

    .line 2890
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2892
    iput-boolean v3, p0, Lcom/keniu/security/main/MainActivity;->X:Z

    .line 2894
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0b083b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2895
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2896
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    const v1, 0x7f0b0838

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2897
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->av:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2898
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2899
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    const v1, 0x7f0b0517

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2900
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2901
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2902
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 2903
    :cond_3
    iget-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->Y:Z

    if-eqz v0, :cond_6

    .line 2905
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2908
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-static {v0}, Lcom/keniu/security/main/bi;->a(Lcom/keniu/security/main/bi;)V

    .line 2909
    iput-boolean v3, p0, Lcom/keniu/security/main/MainActivity;->Y:Z

    .line 2911
    iget-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->Z:Z

    if-eqz v0, :cond_4

    .line 2912
    iput-boolean v3, p0, Lcom/keniu/security/main/MainActivity;->Z:Z

    .line 2913
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2915
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0b083e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2923
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2924
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2925
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 2926
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2927
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2928
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 2916
    :cond_4
    iget-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->D:Z

    if-eqz v0, :cond_5

    .line 2917
    iput-boolean v3, p0, Lcom/keniu/security/main/MainActivity;->D:Z

    .line 2918
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0b083d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2921
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2937
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2939
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0b083e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2940
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2941
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2942
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 2943
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2944
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2945
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/main/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/keniu/security/main/MainActivity;->as:I

    return v0
.end method

.method static synthetic a(Lcom/keniu/security/main/MainActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput p1, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/main/MainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/keniu/security/main/a;
    .locals 1
    .parameter

    .prologue
    .line 216
    sget-object v0, Lcom/keniu/security/main/MainActivity;->ar:Lcom/keniu/security/main/a;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/keniu/security/main/a;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/keniu/security/main/MainActivity;->ar:Lcom/keniu/security/main/a;

    .line 219
    :cond_0
    sget-object v0, Lcom/keniu/security/main/MainActivity;->ar:Lcom/keniu/security/main/a;

    return-object v0
.end method

.method static synthetic a(Landroid/content/DialogInterface;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 130
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BaseActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2771
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v5, :cond_0

    .line 2772
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2773
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2775
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2776
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2778
    if-eqz v0, :cond_1

    .line 2781
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->i()V

    .line 2783
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 2784
    sget v1, Lcom/keniu/security/main/bn;->f:I

    const-string v2, "param2"

    const-string v3, "false"

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2786
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->b()V

    .line 2787
    iput-boolean v5, p0, Lcom/keniu/security/main/MainActivity;->at:Z

    .line 2788
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->k()V

    .line 2835
    :cond_0
    :goto_0
    return-void

    .line 2791
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2792
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2793
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->d()V

    .line 2794
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->notifyDataSetChanged()V

    .line 2795
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->M()V

    .line 2796
    iput-boolean v5, p0, Lcom/keniu/security/main/MainActivity;->aE:Z

    goto :goto_0

    .line 2798
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v4, :cond_0

    .line 2800
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/keniu/security/main/MainActivity;->h:I

    if-ne v0, v1, :cond_0

    .line 2803
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2809
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2811
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2812
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2814
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 2815
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    const v1, 0x7f0b0516

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2816
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/main/bb;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/bb;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2828
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2829
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2830
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2831
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2832
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0b0801

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2833
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->b()V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->K()V

    iput-boolean v3, p0, Lcom/keniu/security/main/MainActivity;->aD:Z

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->s:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2804
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2806
    invoke-virtual {p0, v4}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1624
    const v0, 0x7f0802fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1626
    new-instance v1, Lcom/keniu/security/main/an;

    invoke-direct {v1, p0, p2}, Lcom/keniu/security/main/an;-><init>(Lcom/keniu/security/main/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1642
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/main/MainActivity;Landroid/os/Message;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 130
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v5, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->i()V

    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    sget v1, Lcom/keniu/security/main/bn;->f:I

    const-string v2, "param2"

    const-string v3, "false"

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->b()V

    iput-boolean v5, p0, Lcom/keniu/security/main/MainActivity;->at:Z

    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->k()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->d()V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->M()V

    iput-boolean v5, p0, Lcom/keniu/security/main/MainActivity;->aE:Z

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v4, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/keniu/security/main/MainActivity;->h:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    const v1, 0x7f0b0516

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/main/bb;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/bb;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0b0801

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->b()V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->K()V

    iput-boolean v3, p0, Lcom/keniu/security/main/MainActivity;->aD:Z

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->s:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, v4}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    goto :goto_1
.end method

.method private a(Lcom/keniu/security/main/bn;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1177
    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1178
    if-eqz v0, :cond_0

    const-string v1, "RECOMMEND_EXAMINE_NOTIFY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1180
    const-string v1, "RECOMMEND_EXAMINE_NOTIFY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1181
    invoke-virtual {p1}, Lcom/keniu/security/main/bn;->c()V

    .line 1183
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/main/MainActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/keniu/security/main/MainActivity;->Z:Z

    return p1
.end method

.method static synthetic b(Lcom/keniu/security/main/MainActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput p1, p0, Lcom/keniu/security/main/MainActivity;->N:I

    return p1
.end method

.method private b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 2176
    :try_start_0
    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2177
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2179
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 479
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 480
    const-string v1, "android.intent.action.MY_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v1, "checkStatus"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 483
    return-void
.end method

.method private static b(Landroid/content/DialogInterface;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1796
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1798
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1800
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1804
    :goto_0
    return-void

    .line 1801
    :catch_0
    move-exception v0

    .line 1802
    const-string v1, "BaseActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->I()V

    return-void
.end method

.method static synthetic c(Lcom/keniu/security/main/MainActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->H:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/keniu/security/main/bu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    sget v1, Lcom/keniu/security/main/bn;->d:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->b(I)Lcom/keniu/security/main/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->I:Landroid/widget/TextView;

    const-string v2, "description"

    invoke-virtual {v0, v2}, Lcom/keniu/security/main/bs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    sget v1, Lcom/keniu/security/main/bn;->e:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->b(I)Lcom/keniu/security/main/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->J:Landroid/widget/TextView;

    const-string v2, "description"

    invoke-virtual {v0, v2}, Lcom/keniu/security/main/bs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->K:Landroid/widget/TextView;

    const v1, 0x7f0b08e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->K:Landroid/widget/TextView;

    const v1, 0x7f0b08e3

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v1, v2}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1834
    invoke-static {p0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1835
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 1837
    const v1, 0x7f0b0219

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 1838
    const v1, 0x7f0b0415

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 1840
    const v1, 0x7f0b0432

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/main/av;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/av;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1848
    const v1, 0x7f0b042e

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1850
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 1862
    :goto_0
    return-void

    .line 1855
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->p:Lcom/keniu/security/g/a;

    if-nez v0, :cond_1

    .line 1856
    new-instance v0, Lcom/keniu/security/g/a;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/g/a;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->p:Lcom/keniu/security/g/a;

    .line 1857
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->p:Lcom/keniu/security/g/a;

    invoke-virtual {v0, p1}, Lcom/keniu/security/g/a;->a(Z)V

    .line 1859
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 1861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/a;->e(J)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/keniu/security/main/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->aO:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/main/MainActivity;)Lcom/keniu/security/main/bi;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    return-object v0
.end method

.method static synthetic f(Lcom/keniu/security/main/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->D:Z

    return v0
.end method

.method static synthetic g(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->M()V

    return-void
.end method

.method static synthetic h(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->i()V

    return-void
.end method

.method static synthetic i(Lcom/keniu/security/main/MainActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->K()V

    .line 265
    iput-boolean v1, p0, Lcom/keniu/security/main/MainActivity;->aE:Z

    .line 266
    iput-boolean v2, p0, Lcom/keniu/security/main/MainActivity;->aD:Z

    .line 267
    iput-boolean v2, p0, Lcom/keniu/security/main/MainActivity;->at:Z

    .line 271
    return-void
.end method

.method static synthetic j(Lcom/keniu/security/main/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method private j()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 292
    const v0, 0x7f0802b2

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->Q:Landroid/widget/LinearLayout;

    .line 293
    const v0, 0x7f0802b5

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->R:Landroid/widget/LinearLayout;

    .line 295
    const v0, 0x7f0802cc

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->E:Landroid/widget/Button;

    .line 296
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    const v0, 0x7f0802c9

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->F:Landroid/widget/ImageView;

    .line 299
    const v0, 0x7f0802c8

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->G:Landroid/widget/FrameLayout;

    .line 300
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/keniu/security/a;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    :goto_0
    const v0, 0x7f0802b0

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    .line 309
    const v0, 0x7f0802af

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    .line 310
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    const v0, 0x7f040002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->t:Landroid/view/animation/Animation;

    .line 315
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 316
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->t:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 318
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    const v0, 0x7f0802c1

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->H:Landroid/widget/TextView;

    .line 321
    const v0, 0x7f0802c3

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->I:Landroid/widget/TextView;

    .line 322
    const v0, 0x7f0802c5

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->J:Landroid/widget/TextView;

    .line 323
    const v0, 0x7f0802c7

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->K:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f0802ba

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->ao:Landroid/widget/SlidingDrawer;

    .line 326
    const v0, 0x7f0802bd

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->r:Landroid/widget/ImageView;

    .line 327
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ao:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/keniu/security/main/au;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/au;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 347
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ao:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/keniu/security/main/bd;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/bd;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V

    .line 359
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ao:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/keniu/security/main/be;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/be;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 369
    const v0, 0x7f0802bc

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->v:Landroid/widget/LinearLayout;

    .line 370
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    const v0, 0x7f0802ce

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->w:Landroid/widget/Button;

    .line 373
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    const v0, 0x7f0802ca

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->C:Landroid/widget/Button;

    .line 376
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->C:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    const v0, 0x7f0802c6

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->x:Landroid/widget/FrameLayout;

    .line 379
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    const v0, 0x7f0802d0

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->y:Landroid/widget/Button;

    .line 382
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    const v0, 0x7f0802cd

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->z:Landroid/widget/Button;

    .line 385
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->z:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const v0, 0x7f0802cf

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->A:Landroid/widget/Button;

    .line 388
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    const v0, 0x7f0802d1

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->B:Landroid/widget/Button;

    .line 391
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->B:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->i:Landroid/widget/ListView;

    .line 394
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 396
    const v0, 0x7f0802b8

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->n:Landroid/view/View;

    .line 397
    const v0, 0x7f0802b9

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->o:Landroid/view/View;

    .line 399
    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->s:Landroid/widget/TextView;

    .line 401
    const v0, 0x7f0802b6

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->m:Landroid/view/ViewGroup;

    .line 403
    const v0, 0x7f0802b1

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->l:Landroid/widget/TextView;

    .line 405
    const v0, 0x7f0802b3

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    .line 406
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    const v0, 0x7f0802b4

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    .line 408
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    const v0, 0x7f0802c0

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->T:Landroid/widget/LinearLayout;

    .line 411
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    const v0, 0x7f0802c4

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->U:Landroid/widget/LinearLayout;

    .line 414
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    const v0, 0x7f0802cb

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->V:Landroid/widget/Button;

    .line 417
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->V:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    const v0, 0x7f0802c2

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->W:Landroid/widget/LinearLayout;

    .line 420
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic k(Lcom/keniu/security/main/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->W:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->at:Z

    if-nez v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->au:Lcom/keniu/security/main/bq;

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->a(Lcom/keniu/security/main/bq;)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/main/MainActivity;->as:I

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->at:Z

    goto :goto_0
.end method

.method static synthetic l(Lcom/keniu/security/main/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->U:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 636
    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 638
    invoke-virtual {v1}, Lcom/keniu/security/a;->E()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    invoke-static {v0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    invoke-static {v0}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;)V

    .line 644
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 647
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 649
    const v1, 0x7f0b0731

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 650
    const v1, 0x7f0b0732

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 651
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 653
    const/4 v1, -0x2

    const v2, 0x7f0b0733

    invoke-virtual {p0, v2}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/keniu/security/main/bg;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/bg;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/util/ap;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 662
    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 665
    :cond_1
    return-void
.end method

.method static synthetic m(Lcom/keniu/security/main/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ap:Landroid/os/Handler;

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 668
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ap:Landroid/os/Handler;

    new-instance v1, Lcom/keniu/security/main/bh;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/bh;-><init>(Lcom/keniu/security/main/MainActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 683
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 707
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 708
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->aq:Lcom/jxphone/mosecurity/c/d;

    invoke-virtual {v0}, Lcom/keniu/security/a;->aF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/c/d;->a(Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method static synthetic n(Lcom/keniu/security/main/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->at:Z

    return v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 714
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://search?q=pname:com.jxphone.mosecurity"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 716
    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 719
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 720
    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 724
    :goto_0
    return-void

    .line 722
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->k()V

    return-void
.end method

.method private p()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 727
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 728
    const v1, 0x7f0b0643

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 729
    const v1, 0x7f0b0644

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/keniu/security/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/keniu/security/main/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 731
    const v1, 0x7f0b0682

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 732
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/keniu/security/main/MainActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->u()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private q()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 745
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 746
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 747
    const v1, 0x7f0b040f

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 748
    const v1, 0x7f0b0249

    new-instance v2, Lcom/keniu/security/main/p;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/p;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 757
    const v1, 0x7f0b03aa

    new-instance v2, Lcom/keniu/security/main/q;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/q;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 764
    new-instance v1, Lcom/keniu/security/main/r;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/r;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    .line 771
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lcom/keniu/security/main/MainActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/keniu/security/main/MainActivity;->c(Z)V

    return-void
.end method

.method private r()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 810
    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/d;->b(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 812
    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 813
    :cond_0
    iput-boolean v7, p0, Lcom/keniu/security/main/MainActivity;->aB:Z

    .line 814
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->z()Landroid/app/Dialog;

    move-result-object v0

    .line 890
    :goto_0
    return-object v0

    .line 816
    :cond_1
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "friend_find_password_check_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "friend_find_password_check_count"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    const-string v2, "%%%"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    if-gtz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/keniu/security/util/i;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v8, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "friend_find_password_check_count"

    iget v3, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v7

    :goto_1
    if-nez v0, :cond_4

    .line 817
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    move-object v0, v9

    .line 818
    goto :goto_0

    .line 816
    :cond_2
    const-wide/16 v2, 0x18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v4, 0x36ee80

    div-long/2addr v0, v4

    sub-long v0, v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u60a8\u5df2\u9a8c\u8bc1\u5931\u8d255\u6b21\uff0c\u8bf7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5c0f\u65f6\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v6

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u60a8\u8fd8\u6709"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6b21\u9a8c\u8bc1\u673a\u4f1a\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v7

    goto :goto_1

    .line 820
    :cond_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cd

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 822
    const v0, 0x7f080300

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 824
    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 825
    const v3, 0x7f0b0508

    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 827
    new-instance v1, Lcom/keniu/security/main/s;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/main/s;-><init>(Lcom/keniu/security/main/MainActivity;Landroid/widget/TextView;)V

    .line 888
    const v0, 0x7f0b0218

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 889
    const v0, 0x7f0b021a

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 890
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic r(Lcom/keniu/security/main/MainActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "friend_find_password_check_count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "friend_find_password_check_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic s(Lcom/keniu/security/main/MainActivity;)I
    .locals 2
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    return v0
.end method

.method private s()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 894
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 895
    const v1, 0x7f0b031a

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 896
    const v1, 0x7f0b030e

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 897
    const v1, 0x7f0b030f

    new-instance v2, Lcom/keniu/security/main/t;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/t;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 907
    const v1, 0x7f0b03aa

    new-instance v2, Lcom/keniu/security/main/u;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/u;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 915
    new-instance v1, Lcom/keniu/security/main/v;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/v;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    .line 922
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t(Lcom/keniu/security/main/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    return v0
.end method

.method private t()Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 927
    const-string v0, "db_preferences"

    invoke-virtual {p0, v0, v7}, Lcom/keniu/security/main/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 929
    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v7}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 930
    const-string v2, "dialog_title"

    const v3, 0x7f0b0219

    invoke-virtual {p0, v3}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 931
    const-string v2, "dialog_content"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 933
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 934
    array-length v4, v2

    move v5, v7

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .line 936
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 934
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 940
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v3, v7, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 941
    const-string v2, "dialog_btn_positive"

    const-string v3, "\u786e\u5b9a"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/keniu/security/main/w;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/w;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 966
    const-string v2, "dialog_btn_negetive"

    const-string v3, "\u53d6\u6d88"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/keniu/security/main/x;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/x;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 976
    invoke-virtual {v1, v7}, Lcom/keniu/security/util/aq;->a(Z)Lcom/keniu/security/util/aq;

    .line 977
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method private u()Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 982
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v1

    .line 984
    invoke-virtual {v1}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    move-result-object v0

    .line 985
    invoke-static {p0}, Lcom/keniu/security/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 986
    const-string v3, "%s(%s)"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 987
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 988
    const v3, 0x7f0300bf

    invoke-virtual {v0, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 989
    const v0, 0x7f0802d5

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 991
    const v4, 0x7f0b0232

    invoke-virtual {p0, v4}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v1}, Lcom/keniu/security/f/ab;->n()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    const v0, 0x7f0802d6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 996
    new-instance v1, Lcom/keniu/security/main/z;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/z;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    const v0, 0x7f0802d7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1011
    new-instance v1, Lcom/keniu/security/main/aa;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/aa;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1025
    const v0, 0x7f0802d8

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1027
    const v1, 0x7f0b0244

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    new-instance v1, Lcom/keniu/security/main/ab;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/ab;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1043
    const v0, 0x7f0802d9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1045
    const v1, 0x7f0b0245

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    new-instance v1, Lcom/keniu/security/main/ac;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/ac;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    const v0, 0x7f0802da

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1063
    const v1, 0x7f0b0246

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    new-instance v1, Lcom/keniu/security/main/ad;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/ad;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 1076
    const v1, 0x7f0b022f

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 1077
    invoke-virtual {v0, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 1079
    const v1, 0x7f0b021d

    invoke-virtual {v0, v1, v8}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1080
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u(Lcom/keniu/security/main/MainActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 130
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "isDummy"

    invoke-virtual {v0}, Lcom/keniu/security/a;->ai()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class v0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private v()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1084
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 1085
    const v1, 0x7f0b023c

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 1086
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001f

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1088
    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 1089
    const v1, 0x7f0b026b

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1090
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->G()V

    return-void
.end method

.method private static w()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1094
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic w(Lcom/keniu/security/main/MainActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->m:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic x(Lcom/keniu/security/main/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/keniu/security/main/MainActivity;->N:I

    return v0
.end method

.method private x()V
    .locals 1

    .prologue
    .line 1321
    invoke-static {p0}, Lcom/jxphone/mosecurity/d/k;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/k;

    move-result-object v0

    .line 1322
    invoke-virtual {v0}, Lcom/jxphone/mosecurity/d/k;->a()Z

    move-result v0

    .line 1323
    if-nez v0, :cond_0

    .line 1324
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    .line 1328
    :goto_0
    return-void

    .line 1326
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    goto :goto_0
.end method

.method static synthetic y(Lcom/keniu/security/main/MainActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->n:Landroid/view/View;

    return-object v0
.end method

.method private y()V
    .locals 1

    .prologue
    .line 1334
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1335
    if-nez v0, :cond_0

    .line 1336
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->G()V

    .line 1340
    :goto_0
    return-void

    .line 1338
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private z()Landroid/app/Dialog;
    .locals 8

    .prologue
    const/high16 v7, -0x100

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1345
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1348
    const v0, 0x7f080355

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    const v0, 0x7f080356

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1353
    const v0, 0x7f080350

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1356
    const v1, 0x7f080351

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1358
    const v2, 0x7f080353

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1360
    const v3, 0x7f08034f

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1362
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1363
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1365
    const v0, 0x7f0b0613

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1366
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1367
    const v0, 0x7f0b05ff

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1368
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1370
    const v0, 0x7f080352

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1372
    const v2, 0x7f080354

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1375
    new-instance v3, Lcom/keniu/security/main/bm;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/bm;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1376
    new-instance v0, Lcom/keniu/security/main/bm;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/bm;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1378
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b05fc

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v0

    .line 1382
    invoke-virtual {v0, v6}, Lcom/keniu/security/util/aq;->a(Z)Lcom/keniu/security/util/aq;

    .line 1384
    const v2, 0x7f0b0682

    new-instance v3, Lcom/keniu/security/main/ae;

    invoke-direct {v3, p0, v4}, Lcom/keniu/security/main/ae;-><init>(Lcom/keniu/security/main/MainActivity;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1439
    iget-boolean v2, p0, Lcom/keniu/security/main/MainActivity;->aB:Z

    if-eqz v2, :cond_0

    .line 1440
    const v2, 0x7f0b0507

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1441
    iput-boolean v6, p0, Lcom/keniu/security/main/MainActivity;->aB:Z

    .line 1443
    :cond_0
    const v1, 0x7f0b0683

    new-instance v2, Lcom/keniu/security/main/af;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/af;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1453
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 1455
    new-instance v1, Lcom/keniu/security/main/ag;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/ag;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/ap;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1463
    return-object v0
.end method

.method static synthetic z(Lcom/keniu/security/main/MainActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->o:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/keniu/security/main/a/m;)V
    .locals 2
    .parameter

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->aO:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2981
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2982
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2983
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->aO:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2985
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 686
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/main/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 687
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02013d

    invoke-static {v1, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    .line 696
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v3, "duplicate"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 700
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 701
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 703
    invoke-virtual {p0, v2}, Lcom/keniu/security/main/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 704
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->aO:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2960
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2961
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2962
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2964
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->aO:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2965
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 486
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 487
    const-string v1, "android.intent.action.MY_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v1, "notify_enter_root"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    const-string v1, "notify_enter_root_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 492
    return-void
.end method

.method public final b(Lcom/keniu/security/main/a/m;)V
    .locals 1
    .parameter

    .prologue
    .line 3008
    new-instance v0, Lcom/keniu/security/main/bc;

    invoke-direct {v0, p0, p1}, Lcom/keniu/security/main/bc;-><init>(Lcom/keniu/security/main/MainActivity;Lcom/keniu/security/main/a/m;)V

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3019
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2969
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->aO:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2971
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2972
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2973
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->aO:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2975
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 1147
    iget-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->aE:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 1151
    iget-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->aD:Z

    return v0
.end method

.method public final g()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2220
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->j:Lcom/keniu/security/main/a/h;

    invoke-virtual {v0}, Lcom/keniu/security/main/a/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2221
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->j:Lcom/keniu/security/main/a/h;

    invoke-virtual {v0}, Lcom/keniu/security/main/a/h;->a()V

    .line 2222
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->j:Lcom/keniu/security/main/a/h;

    invoke-virtual {v0, p0}, Lcom/keniu/security/main/a/h;->a(Landroid/content/Context;)V

    .line 2223
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->j:Lcom/keniu/security/main/a/h;

    invoke-virtual {v0, p0}, Lcom/keniu/security/main/a/h;->a(Lcom/keniu/security/main/a/j;)V

    .line 2224
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2225
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2227
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 2989
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->aO:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2990
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2991
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->aO:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2993
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 276
    sget v0, Lcom/keniu/security/main/a/ag;->a:I

    if-ne p1, v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0, p2, p3}, Lcom/keniu/security/main/bi;->a(ILandroid/content/Intent;)V

    .line 280
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1966
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1967
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1969
    :cond_0
    iput-object v6, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    .line 1972
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1973
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v1

    .line 1974
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2161
    :cond_2
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2162
    :cond_3
    :goto_1
    :pswitch_1
    return-void

    .line 1977
    :pswitch_2
    invoke-virtual {v1}, Lcom/keniu/security/main/bn;->e()Lcom/keniu/security/main/bs;

    move-result-object v0

    .line 1978
    invoke-virtual {v0, p0, v4}, Lcom/keniu/security/main/bs;->a(Landroid/content/Context;I)V

    .line 1979
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->I()V

    goto :goto_1

    .line 1983
    :pswitch_3
    invoke-virtual {v1}, Lcom/keniu/security/main/bn;->e()Lcom/keniu/security/main/bs;

    move-result-object v0

    .line 1984
    invoke-virtual {v0, p0, v3}, Lcom/keniu/security/main/bs;->a(Landroid/content/Context;I)V

    .line 1985
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->I()V

    goto :goto_1

    .line 1990
    :pswitch_4
    const-class v1, Lcom/keniu/security/malware/MalwareMainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 1993
    :pswitch_5
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 1995
    invoke-virtual {v1}, Lcom/keniu/security/a;->N()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1996
    invoke-virtual {v1}, Lcom/keniu/security/a;->O()V

    .line 1997
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2000
    :cond_4
    const-class v1, Lcom/keniu/security/malware/NotificationAdsCheckActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 2004
    :pswitch_6
    const-string v1, "1"

    invoke-static {p0, v1}, Lcom/jxphone/mosecurity/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 2006
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 2007
    invoke-virtual {v1}, Lcom/keniu/security/a;->X()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2008
    invoke-virtual {v1}, Lcom/keniu/security/a;->aa()V

    .line 2010
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 2011
    iget-object v1, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2015
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2016
    const-class v1, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2017
    const-string v1, "context"

    const-string v2, "Traffic"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2018
    const-string v1, "fromMain"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2019
    const-string v1, "first"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2020
    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2025
    :cond_5
    const-class v1, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2028
    :pswitch_7
    const-class v1, Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2031
    :pswitch_8
    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2033
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 2034
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/a/a;->a()I

    move-result v1

    if-lez v1, :cond_6

    .line 2035
    const-string v1, "FirewallLogTabActivity_current_tab"

    const-string v2, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2037
    :cond_6
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/a/a;->b()I

    move-result v1

    if-lez v1, :cond_2

    .line 2038
    const-string v1, "FirewallLogTabActivity_current_tab"

    const-string v2, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2043
    :pswitch_9
    invoke-static {p0}, Lcom/jxphone/mosecurity/d/k;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/d/k;->a()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    goto/16 :goto_1

    .line 2046
    :pswitch_a
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->G()V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0, v5}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    goto/16 :goto_1

    .line 2049
    :pswitch_b
    const-class v1, Lcom/ijinshan/kinghelper/firewall/FireWallSmsAndCallActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2052
    :pswitch_c
    const-class v1, Lcom/keniu/security/software/SoftwareManagerTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2055
    :pswitch_d
    const-class v1, Lcom/keniu/security/sync/ui/SyncMainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2059
    :pswitch_e
    const-class v1, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2063
    :pswitch_f
    const-string v0, "mg_main_battery"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 2064
    const-string v0, "com.ijinshan.kbatterydoctor"

    invoke-direct {p0, v0}, Lcom/keniu/security/main/MainActivity;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2066
    if-nez v0, :cond_b

    .line 2067
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/main/a/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2068
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/main/a/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2070
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2071
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2073
    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2075
    :cond_9
    invoke-static {p0}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/Context;)Lcom/keniu/security/main/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/main/a;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2076
    invoke-static {p0}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/Context;)Lcom/keniu/security/main/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/main/a;->c()V

    goto/16 :goto_1

    .line 2079
    :cond_a
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 2081
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 2082
    const v1, 0x7f0b0834

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 2083
    const v1, 0x7f0b0836

    invoke-virtual {v0, v1, v6}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 2085
    const v1, 0x7f0b0835

    new-instance v2, Lcom/keniu/security/main/aw;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/aw;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 2125
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto/16 :goto_1

    .line 2127
    :cond_b
    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2156
    :pswitch_10
    const-class v1, Lcom/ijinshan/cleaner/MainCleanActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2157
    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1974
    nop

    :pswitch_data_0
    .packed-switch 0x7f0802b3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_e
        :pswitch_7
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_d
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 536
    const-string v0, "\u63d0\u6743\u5931\u8d25\uff0c\u65e0\u6cd5\u4f18\u5316\u5f00\u673a\u542f\u52a8\u9879"

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/main/MainActivity;->d:Landroid/widget/Toast;

    .line 539
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 541
    new-instance v0, Lcom/keniu/security/main/bk;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/bk;-><init>(Lcom/keniu/security/main/MainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->ab:Lcom/keniu/security/main/bk;

    .line 542
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 543
    const-string v2, "android.intent.action.MY_RECEIVER"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    iget-object v2, p0, Lcom/keniu/security/main/MainActivity;->ab:Lcom/keniu/security/main/bk;

    invoke-virtual {p0, v2, v0}, Lcom/keniu/security/main/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 548
    const-string v0, "actionname"

    const-string v3, "start"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v0, "type"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 550
    invoke-virtual {p0, v7}, Lcom/keniu/security/main/MainActivity;->requestWindowFeature(I)Z

    .line 551
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 553
    const v0, 0x7f0300b9

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->setContentView(I)V

    .line 555
    new-instance v0, Lcom/keniu/security/main/a/h;

    invoke-direct {v0}, Lcom/keniu/security/main/a/h;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->j:Lcom/keniu/security/main/a/h;

    .line 556
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->j:Lcom/keniu/security/main/a/h;

    invoke-virtual {v0, p0}, Lcom/keniu/security/main/a/h;->a(Landroid/content/Context;)V

    .line 558
    const v0, 0x7f0802b2

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->Q:Landroid/widget/LinearLayout;

    const v0, 0x7f0802b5

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->R:Landroid/widget/LinearLayout;

    const v0, 0x7f0802cc

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->E:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802c9

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->F:Landroid/widget/ImageView;

    const v0, 0x7f0802c8

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->G:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->N()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0802b0

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    const v0, 0x7f0802af

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020162

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f040002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->t:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/main/MainActivity;->t:Landroid/view/animation/Animation;

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0802c1

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->H:Landroid/widget/TextView;

    const v0, 0x7f0802c3

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->I:Landroid/widget/TextView;

    const v0, 0x7f0802c5

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->J:Landroid/widget/TextView;

    const v0, 0x7f0802c7

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->K:Landroid/widget/TextView;

    const v0, 0x7f0802ba

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->ao:Landroid/widget/SlidingDrawer;

    const v0, 0x7f0802bd

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ao:Landroid/widget/SlidingDrawer;

    new-instance v3, Lcom/keniu/security/main/au;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/au;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ao:Landroid/widget/SlidingDrawer;

    new-instance v3, Lcom/keniu/security/main/bd;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/bd;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ao:Landroid/widget/SlidingDrawer;

    new-instance v3, Lcom/keniu/security/main/be;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/be;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    const v0, 0x7f0802bc

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->v:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802ce

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->w:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802ca

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->C:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->C:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802c6

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->x:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802d0

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->y:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802cd

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->z:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->z:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802cf

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->A:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802d1

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->B:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->B:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    const v0, 0x7f0802b8

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->n:Landroid/view/View;

    const v0, 0x7f0802b9

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->o:Landroid/view/View;

    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f0802b6

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->m:Landroid/view/ViewGroup;

    const v0, 0x7f0802b1

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f0802b3

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->P:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802b4

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->S:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802c0

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->T:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802c4

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->U:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802cb

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->V:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->V:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802c2

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->W:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    new-instance v0, Lcom/keniu/security/main/bi;

    iget-object v3, p0, Lcom/keniu/security/main/MainActivity;->j:Lcom/keniu/security/main/a/h;

    invoke-direct {v0, p0, p0, v3}, Lcom/keniu/security/main/bi;-><init>(Lcom/keniu/security/main/MainActivity;Landroid/content/Context;Lcom/keniu/security/main/a/h;)V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    .line 561
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->i:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 563
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->ap:Landroid/os/Handler;

    .line 564
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/n;->a(Landroid/content/Context;)V

    .line 567
    sget-boolean v0, Lcom/keniu/security/h/b;->a:Z

    if-eqz v0, :cond_0

    .line 568
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 569
    invoke-static {v6}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Z)V

    .line 572
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iget-object v3, p0, Lcom/keniu/security/main/MainActivity;->aq:Lcom/jxphone/mosecurity/c/d;

    invoke-virtual {v0}, Lcom/keniu/security/a;->aF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jxphone/mosecurity/c/d;->a(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keniu/security/a;->E()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v3, 0x7f0b0731

    invoke-virtual {v0, v3}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v3, 0x7f0b0732

    invoke-virtual {v0, v3}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    const/4 v3, -0x2

    const v4, 0x7f0b0733

    invoke-virtual {p0, v4}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keniu/security/main/bg;

    invoke-direct {v5, p0}, Lcom/keniu/security/main/bg;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/keniu/security/util/ap;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ap:Landroid/os/Handler;

    new-instance v3, Lcom/keniu/security/main/bh;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/bh;-><init>(Lcom/keniu/security/main/MainActivity;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 577
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 578
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 580
    :goto_1
    const-string v3, "notifylowbattery"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 581
    const-string v3, "dbupdate"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 583
    if-eqz v0, :cond_7

    .line 584
    const-string v0, "notifylowbattery"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 585
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    .line 600
    :cond_3
    :goto_2
    iput-boolean v7, p0, Lcom/keniu/security/main/MainActivity;->at:Z

    .line 601
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 603
    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 606
    invoke-virtual {v0}, Lcom/keniu/security/a;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 607
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ap:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->ax:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 609
    :cond_4
    return-void

    .line 558
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 578
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 586
    :cond_7
    if-eqz v3, :cond_8

    .line 588
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    goto :goto_2

    .line 590
    :cond_8
    invoke-virtual {v1}, Lcom/keniu/security/a;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 591
    invoke-virtual {v1}, Lcom/keniu/security/a;->c()V

    .line 592
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    goto :goto_2

    .line 594
    :cond_9
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x2

    const v4, 0x7f0b0219

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 777
    packed-switch p1, :pswitch_data_0

    .line 801
    :pswitch_0
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 779
    :pswitch_1
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b023c

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001f

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b026b

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move-object v0, v7

    .line 781
    goto :goto_0

    .line 783
    :pswitch_3
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0643

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0644

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/keniu/security/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/keniu/security/main/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0682

    invoke-virtual {v0, v1, v7}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    .line 785
    :pswitch_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cc

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080222

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0802fc

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Lcom/keniu/security/main/ah;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/ah;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v0, v4}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v3

    const v0, 0x7f0b0630

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/keniu/security/main/ai;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/ai;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v3, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0802fd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    new-instance v1, Lcom/keniu/security/main/bm;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/bm;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-direct {p0, v2, v0}, Lcom/keniu/security/main/MainActivity;->a(Landroid/view/View;Landroid/widget/EditText;)V

    new-instance v1, Lcom/keniu/security/main/ak;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/main/ak;-><init>(Lcom/keniu/security/main/MainActivity;Landroid/widget/EditText;)V

    const v0, 0x7f0b0682

    invoke-virtual {v3, v0, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0683

    new-instance v1, Lcom/keniu/security/main/al;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/al;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v3, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v3}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/main/am;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/am;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 787
    :pswitch_5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cc

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v0, v4}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v2

    new-instance v0, Lcom/keniu/security/main/ao;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/ao;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0802fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x7f0b07bb

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0802fd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    new-instance v3, Lcom/keniu/security/main/bm;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/bm;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-direct {p0, v1, v0}, Lcom/keniu/security/main/MainActivity;->a(Landroid/view/View;Landroid/widget/EditText;)V

    const v3, 0x7f080222

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Lcom/keniu/security/main/ap;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/ap;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/keniu/security/main/aq;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/main/aq;-><init>(Lcom/keniu/security/main/MainActivity;Landroid/widget/EditText;)V

    const v0, 0x7f0b03a9

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0683

    new-instance v1, Lcom/keniu/security/main/ar;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/ar;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/main/as;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/as;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 789
    :pswitch_6
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const v0, 0x7f0b04ee

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0763

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b03ca

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    :goto_1
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/main/at;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/at;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x7f0b04ee

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0764

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b03ca

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b07f9

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b03ca

    invoke-virtual {v2, v0, v7}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_1

    .line 791
    :pswitch_7
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->z()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 793
    :pswitch_8
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v0, v4}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b040f

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0249

    new-instance v2, Lcom/keniu/security/main/p;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/p;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b03aa

    new-instance v2, Lcom/keniu/security/main/q;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/q;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    new-instance v1, Lcom/keniu/security/main/r;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/r;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto/16 :goto_0

    .line 795
    :pswitch_9
    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/d;->b(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v0, v0

    if-nez v0, :cond_5

    :cond_4
    iput-boolean v8, p0, Lcom/keniu/security/main/MainActivity;->aB:Z

    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->z()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "friend_find_password_check_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "friend_find_password_check_count"

    const/4 v3, 0x5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    const-string v2, "%%%"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    if-gtz v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/keniu/security/util/i;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x5

    iput v1, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "friend_find_password_check_count"

    iget v3, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v8

    :goto_2
    if-nez v0, :cond_8

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    move-object v0, v7

    goto/16 :goto_0

    :cond_6
    const-wide/16 v2, 0x18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v4, 0x36ee80

    div-long/2addr v0, v4

    sub-long v0, v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u60a8\u5df2\u9a8c\u8bc1\u5931\u8d255\u6b21\uff0c\u8bf7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5c0f\u65f6\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v6

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u60a8\u8fd8\u6709"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/main/MainActivity;->aC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6b21\u9a8c\u8bc1\u673a\u4f1a\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v8

    goto :goto_2

    :cond_8
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cd

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080300

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v3, 0x7f0b0508

    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    new-instance v1, Lcom/keniu/security/main/s;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/main/s;-><init>(Lcom/keniu/security/main/MainActivity;Landroid/widget/TextView;)V

    const v0, 0x7f0b0218

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b021a

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto/16 :goto_0

    .line 797
    :pswitch_a
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b031a

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b030e

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b030f

    new-instance v2, Lcom/keniu/security/main/t;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/t;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b03aa

    new-instance v2, Lcom/keniu/security/main/u;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/u;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    new-instance v1, Lcom/keniu/security/main/v;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/v;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto/16 :goto_0

    .line 799
    :pswitch_b
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->t()Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 1099
    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1100
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 507
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ab:Lcom/keniu/security/main/bk;

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->j:Lcom/keniu/security/main/a/h;

    invoke-virtual {v0}, Lcom/keniu/security/main/a/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->j:Lcom/keniu/security/main/a/h;

    invoke-virtual {v0}, Lcom/keniu/security/main/a/h;->a()V

    .line 513
    :cond_0
    sget-object v0, Lcom/keniu/security/main/MainActivity;->ar:Lcom/keniu/security/main/a;

    if-eqz v0, :cond_1

    .line 514
    sget-object v0, Lcom/keniu/security/main/MainActivity;->ar:Lcom/keniu/security/main/a;

    invoke-virtual {v0}, Lcom/keniu/security/main/a;->a()V

    .line 515
    sput-object v2, Lcom/keniu/security/main/MainActivity;->ar:Lcom/keniu/security/main/a;

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    .line 518
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 521
    :cond_2
    iput-object v2, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    .line 523
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ap:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ax:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 524
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ap:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/main/MainActivity;->ax:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 526
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->p:Lcom/keniu/security/g/a;

    if-eqz v0, :cond_5

    .line 527
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->p:Lcom/keniu/security/g/a;

    invoke-virtual {v0}, Lcom/keniu/security/g/a;->b()V

    .line 528
    iput-object v2, p0, Lcom/keniu/security/main/MainActivity;->p:Lcom/keniu/security/g/a;

    .line 531
    :cond_5
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->onDestroy()V

    .line 532
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1253
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1254
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->j:Lcom/keniu/security/main/a/h;

    invoke-virtual {v0}, Lcom/keniu/security/main/a/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->j:Lcom/keniu/security/main/a/h;

    invoke-virtual {v0}, Lcom/keniu/security/main/a/h;->c()V

    move v0, v2

    .line 1265
    :goto_0
    return v0

    .line 1257
    :cond_0
    iget v0, p0, Lcom/keniu/security/main/MainActivity;->N:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1258
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->i()V

    move v0, v2

    .line 1259
    goto :goto_0

    .line 1260
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ao:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1261
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->ao:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    move v0, v2

    .line 1262
    goto :goto_0

    .line 1265
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/jxphone/mosecurity/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1270
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1272
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1273
    :goto_0
    if-eqz v0, :cond_2

    .line 1274
    const-string v1, "autoupdateservice"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1276
    const-string v2, "notifylowbattery"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1278
    const-string v3, "RECOMMEND_EXAMINE_NOTIFY"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1282
    if-eqz v1, :cond_5

    .line 1283
    const-string v1, "autoupdateservice"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1285
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v1

    .line 1286
    invoke-virtual {v1}, Lcom/keniu/security/f/ab;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1287
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    .line 1301
    :cond_0
    :goto_1
    const-string v1, "autoupdateapk"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1303
    if-eqz v0, :cond_1

    .line 1304
    const-string v0, "autoupdateapk"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1305
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 1306
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->k()Z

    .line 1308
    :cond_1
    if-eqz v3, :cond_2

    .line 1309
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 1310
    const-string v1, "RECOMMEND_EXAMINE_NOTIFY"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1311
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->c()V

    .line 1315
    :cond_2
    return-void

    .line 1272
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1290
    :cond_4
    invoke-direct {p0, v4}, Lcom/keniu/security/main/MainActivity;->c(Z)V

    goto :goto_1

    .line 1293
    :cond_5
    if-eqz v2, :cond_6

    .line 1295
    const-string v1, "notifylowbattery"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1296
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    goto :goto_1

    .line 1297
    :cond_6
    const-string v1, "dbupdate"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1299
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1138
    const/4 v0, 0x0

    .line 1140
    :goto_0
    return v0

    .line 1107
    :pswitch_0
    const-class v0, Lcom/keniu/security/main/SettingActivity;

    invoke-static {p0, v0}, Lcom/keniu/security/util/af;->a(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    :goto_1
    move v0, v3

    .line 1140
    goto :goto_0

    .line 1110
    :pswitch_1
    const-string v0, "menu_up"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 1111
    invoke-direct {p0, v3}, Lcom/keniu/security/main/MainActivity;->c(Z)V

    goto :goto_1

    .line 1115
    :pswitch_2
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->u()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 1118
    :pswitch_3
    const-string v0, "menu_seccenter"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 1119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://bbs.duba.net/forum.php?mod=forumdisplay&fid=6421&mobile=yes"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1123
    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1125
    if-eqz v1, :cond_0

    .line 1126
    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1129
    :pswitch_4
    const-string v0, "menu_share"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 1130
    new-instance v0, Lcom/keniu/security/main/cd;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/cd;-><init>(Landroid/content/Context;)V

    .line 1131
    invoke-virtual {v0}, Lcom/keniu/security/main/cd;->a()V

    goto :goto_1

    .line 1134
    :pswitch_5
    new-instance v0, Lcom/keniu/security/main/k;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/k;-><init>(Landroid/content/Context;)V

    .line 1135
    invoke-virtual {v0}, Lcom/keniu/security/main/k;->a()V

    goto :goto_1

    .line 1105
    nop

    :pswitch_data_0
    .packed-switch 0x7f080419
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 500
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    .line 502
    :cond_1
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->onPause()V

    .line 503
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1156
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->onResume()V

    .line 1158
    iget-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->aE:Z

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->c()V

    .line 1160
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->M()V

    .line 1161
    iget-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->q:Z

    if-eqz v0, :cond_1

    .line 1162
    iput-boolean v3, p0, Lcom/keniu/security/main/MainActivity;->q:Z

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 1167
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->b()V

    .line 1168
    invoke-direct {p0}, Lcom/keniu/security/main/MainActivity;->k()V

    .line 1170
    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "RECOMMEND_EXAMINE_NOTIFY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RECOMMEND_EXAMINE_NOTIFY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->c()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const v5, 0x7f020146

    const/4 v4, 0x0

    .line 1187
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->onStart()V

    .line 1188
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 1189
    sget v1, Lcom/keniu/security/monitor/a;->x:I

    iget-object v2, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    const v3, 0x3fffffff

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 1191
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->aF()Ljava/lang/String;

    move-result-object v1

    .line 1192
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->aA()I

    move-result v0

    .line 1194
    packed-switch v0, :pswitch_data_0

    move v2, v5

    .line 1203
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->w:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 1209
    const v0, 0x7f0802ce

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->w:Landroid/widget/Button;

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1213
    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1215
    :goto_1
    if-eqz v0, :cond_2

    .line 1216
    const-string v1, "autoupdateservice"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1220
    if-eqz v1, :cond_1

    .line 1221
    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "autoupdateservice"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1223
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v1

    .line 1224
    invoke-virtual {v1}, Lcom/keniu/security/f/ab;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1225
    invoke-direct {p0, v4}, Lcom/keniu/security/main/MainActivity;->c(Z)V

    .line 1228
    :cond_1
    const-string v1, "autoupdateapk"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1230
    if-eqz v0, :cond_2

    .line 1231
    invoke-virtual {p0}, Lcom/keniu/security/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "autoupdateapk"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1232
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 1233
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->k()Z

    .line 1238
    :cond_2
    return-void

    :pswitch_0
    move v2, v5

    .line 1197
    goto :goto_0

    .line 1199
    :pswitch_1
    const v0, 0x7f020137

    move v2, v0

    .line 1200
    goto :goto_0

    .line 1202
    :pswitch_2
    const v0, 0x7f020138

    move v2, v0

    goto :goto_0

    .line 1213
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 613
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->onStop()V

    .line 614
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 615
    sget v1, Lcom/keniu/security/monitor/a;->x:I

    iget-object v2, p0, Lcom/keniu/security/main/MainActivity;->k:Lcom/keniu/security/main/bi;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/main/MainActivity;->at:Z

    .line 617
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/main/MainActivity;->as:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->a(I)V

    .line 618
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1243
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1245
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/main/MainActivity;->u:Landroid/widget/PopupWindow;

    .line 1247
    :cond_1
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
