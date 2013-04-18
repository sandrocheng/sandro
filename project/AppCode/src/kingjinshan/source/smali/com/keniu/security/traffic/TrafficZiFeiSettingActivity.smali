.class public Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;
.super Landroid/app/Activity;
.source "TrafficZiFeiSettingActivity.java"


# static fields
.field private static final O:I = 0xa0

.field private static final Q:[I = null

.field private static final R:[C = null

.field private static final a:I = 0x12c


# instance fields
.field private A:Ljava/lang/String;

.field private B:[Ljava/lang/String;

.field private C:[Ljava/lang/String;

.field private D:Landroid/widget/RadioGroup;

.field private E:Landroid/widget/RadioGroup;

.field private F:Landroid/widget/RadioButton;

.field private G:Landroid/widget/RadioButton;

.field private H:Landroid/widget/RadioButton;

.field private I:Landroid/widget/RadioButton;

.field private J:Landroid/widget/RadioButton;

.field private K:Landroid/widget/RadioButton;

.field private L:Landroid/widget/ImageView;

.field private M:Landroid/widget/ImageView;

.field private N:Z

.field private P:I

.field private S:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private b:Lcom/keniu/security/util/SafeViewFlipper;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:[Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/ListView;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/ListView;

.field private p:Landroid/view/LayoutInflater;

.field private q:Ljava/util/ArrayList;

.field private r:Ljava/util/ArrayList;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:[Ljava/lang/String;

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->Q:[I

    .line 92
    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->R:[C

    return-void

    .line 87
    nop

    :array_0
    .array-data 0x4
        0x41t 0x6t 0x0t 0x0t
        0x65t 0x6t 0x0t 0x0t
        0x29t 0x7t 0x0t 0x0t
        0x1et 0x8t 0x0t 0x0t
        0xe2t 0x8t 0x0t 0x0t
        0xfet 0x8t 0x0t 0x0t
        0x81t 0x9t 0x0t 0x0t
        0x22t 0xat 0x0t 0x0t
        0xe3t 0xat 0x0t 0x0t
        0x22t 0xct 0x0t 0x0t
        0x8ct 0xct 0x0t 0x0t
        0x90t 0xdt 0x0t 0x0t
        0x33t 0xet 0x0t 0x0t
        0x8at 0xet 0x0t 0x0t
        0x92t 0xet 0x0t 0x0t
        0x12t 0xft 0x0t 0x0t
        0xbbt 0xft 0x0t 0x0t
        0xf6t 0xft 0x0t 0x0t
        0x26t 0x11t 0x0t 0x0t
        0xcet 0x11t 0x0t 0x0t
        0x4ct 0x12t 0x0t 0x0t
        0x3dt 0x13t 0x0t 0x0t
        0x81t 0x14t 0x0t 0x0t
        0xe0t 0x15t 0x0t 0x0t
    .end array-data

    .line 92
    :array_1
    .array-data 0x2
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f:Z

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->z:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->A:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->N:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->P:I

    .line 576
    new-instance v0, Lcom/keniu/security/traffic/ee;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/ee;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->S:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 804
    return-void
.end method

.method static synthetic A(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic B(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->v:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->I:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic D(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic E(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->J:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic F(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->K:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic G(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->p:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic H(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->P:I

    return v0
.end method

.method private static a([B)C
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 909
    const/16 v0, 0x2d

    move v1, v4

    .line 910
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 913
    aget-byte v2, p0, v1

    const/16 v3, 0xa0

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 912
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 915
    :cond_0
    aget-byte v1, p0, v4

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    add-int/2addr v1, v2

    move v2, v4

    .line 916
    :goto_1
    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 917
    sget-object v3, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->Q:[I

    aget v3, v3, v2

    if-lt v1, v3, :cond_2

    sget-object v3, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->Q:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    if-ge v1, v3, :cond_2

    .line 919
    sget-object v0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->R:[C

    aget-char v0, v0, v2

    .line 923
    :cond_1
    return v0

    .line 916
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->w:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->p:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method protected static a()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 964
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x4080

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 969
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 970
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 971
    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->l:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 879
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 880
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v7

    .line 883
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 884
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 885
    const/4 v4, 0x1

    new-array v4, v4, [C

    aput-char v3, v4, v7

    .line 886
    const/4 v3, 0x0

    .line 888
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    const-string v6, "GBK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 892
    :goto_1
    aget-byte v5, v3, v7

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    aget-byte v5, v3, v7

    if-lez v5, :cond_0

    .line 894
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 883
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 889
    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 896
    :cond_0
    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a([B)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 899
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->q:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->N:Z

    return p1
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 715
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    move v1, v3

    .line 717
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 718
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    const/4 v0, 0x1

    .line 722
    :goto_1
    return v0

    .line 717
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 722
    goto :goto_1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->P:I

    return p1
.end method

.method protected static b()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 980
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 985
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 986
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 987
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->z:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 485
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 488
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 491
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 494
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 495
    iput-object v0, v1, Lcom/keniu/security/traffic/y;->p:Ljava/lang/String;

    .line 496
    if-eqz v0, :cond_0

    .line 497
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    const v0, 0x7f0b03c9

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Landroid/content/Context;)V

    .line 504
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    .line 516
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    .line 517
    const v0, 0x7f0b03cb

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 519
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    .line 520
    const v0, 0x7f0b03cc

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 521
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->z:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    .line 522
    const v0, 0x7f0b03cd

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 524
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->A:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    .line 525
    const v0, 0x7f0b03ce

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 528
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 530
    invoke-virtual {p0, v4}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->setResult(I)V

    .line 534
    :goto_1
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->u:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 535
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b08f8

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b08f9

    new-instance v2, Lcom/keniu/security/traffic/em;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/em;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b08fa

    new-instance v2, Lcom/keniu/security/traffic/el;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/el;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 567
    :goto_2
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->t:Z

    if-eqz v0, :cond_2

    .line 568
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 569
    const-class v1, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 571
    const-string v1, "updateZFT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 574
    :cond_2
    return-void

    .line 509
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    :cond_4
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->setResult(I)V

    goto/16 :goto_1

    .line 564
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->finish()V

    goto :goto_2
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->A:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 628
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c:Landroid/widget/Button;

    const v1, 0x7f0b079d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 629
    invoke-static {}, Lcn/com/wali/zft/plugin;->getcarries()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i:Ljava/util/ArrayList;

    .line 630
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v2, v2, v5

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 637
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 638
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v3, v3, v6

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 641
    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->F:Landroid/widget/RadioButton;

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->G:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->H:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 644
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->q:Ljava/util/ArrayList;

    .line 645
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    .line 646
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/en;

    invoke-virtual {p0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    .line 647
    return-void
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 651
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->z:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getbrands(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->j:Ljava/util/ArrayList;

    .line 653
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 711
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->s:Ljava/lang/String;

    const-string v1, "RatesRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d:Landroid/widget/Button;

    const v1, 0x7f0b079e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c:Landroid/widget/Button;

    const v1, 0x7f0b079d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 665
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->j:Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v6, :cond_3

    .line 668
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v1, v1, v5

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 672
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->I:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->J:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->K:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->q:Ljava/util/ArrayList;

    .line 709
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    .line 710
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/en;

    invoke-virtual {p0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 677
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v7, :cond_4

    .line 678
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v1, v1, v5

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v2, v2, v6

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 683
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 684
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->I:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->J:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->J:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->K:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 690
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 691
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v1, v1, v5

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 694
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v2, v2, v6

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 696
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 697
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 699
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 700
    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->I:Landroid/widget/RadioButton;

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->J:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->J:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->K:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->K:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method static synthetic f(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m:Landroid/widget/ListView;

    return-object v0
.end method

.method private f()Ljava/util/ArrayList;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 727
    invoke-static {}, Lcn/com/wali/zft/plugin;->getprovinces()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->g:Ljava/util/ArrayList;

    .line 728
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->r:Ljava/util/ArrayList;

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 732
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e:[Ljava/lang/String;

    move v0, v2

    .line 735
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 736
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 739
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 743
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->N:Z

    if-eqz v0, :cond_3

    .line 744
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->g:Ljava/util/ArrayList;

    iget v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->w:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getcities(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->h:Ljava/util/ArrayList;

    .line 752
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->h:Ljava/util/ArrayList;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->v:[Ljava/lang/String;

    .line 753
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->v:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y:Ljava/lang/String;

    .line 754
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->v:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v4, :cond_5

    .line 755
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->N:Z

    if-eqz v0, :cond_4

    .line 756
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->showNext()V

    .line 797
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->r:Ljava/util/ArrayList;

    return-object v0

    .line 748
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getcities(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->h:Ljava/util/ArrayList;

    goto :goto_1

    .line 758
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c:Landroid/widget/Button;

    const v1, 0x7f0b0513

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 759
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->showPrevious()V

    .line 760
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->q:Ljava/util/ArrayList;

    .line 761
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    .line 763
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 767
    :goto_3
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->v:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 768
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->v:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->v:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->v:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 770
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 771
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 774
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 775
    invoke-static {}, Lcn/com/wali/zft/plugin;->getcarries()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i:Ljava/util/ArrayList;

    .line 776
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    move v0, v2

    .line 778
    :goto_4
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 779
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 781
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 782
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 784
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 785
    invoke-static {}, Lcn/com/wali/zft/plugin;->getcarries()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i:Ljava/util/ArrayList;

    .line 786
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->z:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getbrands(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->j:Ljava/util/ArrayList;

    .line 788
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->j:Ljava/util/ArrayList;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    move v0, v2

    .line 789
    :goto_5
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 790
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 792
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 793
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private static g()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 932
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 937
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 938
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 939
    return-object v0
.end method

.method static synthetic g(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->o:Landroid/widget/ListView;

    return-object v0
.end method

.method private static h()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 948
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x4080

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 953
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 954
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 955
    return-object v0
.end method

.method static synthetic h(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d:Landroid/widget/Button;

    const v1, 0x7f0b079e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 992
    return-void
.end method

.method static synthetic i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->F:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private j()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x12c

    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 995
    iget-object v9, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v0}, Lcom/keniu/security/util/SafeViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 996
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4080

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    move v10, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/SafeViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 997
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->showNext()V

    .line 998
    return-void
.end method

.method static synthetic k(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->G:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic l(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->H:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic m(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 44
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b03c9

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const v0, 0x7f0b03cb

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const v0, 0x7f0b03cc

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->z:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const v0, 0x7f0b03cd

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->A:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const v0, 0x7f0b03ce

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->setResult(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->u:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b08f8

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b08f9

    new-instance v2, Lcom/keniu/security/traffic/em;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/em;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b08fa

    new-instance v2, Lcom/keniu/security/traffic/el;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/el;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    :goto_2
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->t:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "updateZFT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->setResult(I)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->finish()V

    goto :goto_2
.end method

.method static synthetic o(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic p(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f:Z

    return v0
.end method

.method static synthetic q(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f:Z

    return v0
.end method

.method static synthetic r(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d:Landroid/widget/Button;

    const v1, 0x7f0b079e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method static synthetic w(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x12c

    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 44
    iget-object v9, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v0}, Lcom/keniu/security/util/SafeViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4080

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    move v10, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/SafeViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->showNext()V

    return-void
.end method

.method static synthetic x(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c:Landroid/widget/Button;

    const v1, 0x7f0b079d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    invoke-static {}, Lcn/com/wali/zft/plugin;->getcarries()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v2, v2, v5

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v3, v3, v6

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->B:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->F:Landroid/widget/RadioButton;

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->G:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->H:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->q:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/en;

    invoke-virtual {p0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic y(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->z:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getbrands(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->s:Ljava/lang/String;

    const-string v1, "RatesRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d:Landroid/widget/Button;

    const v1, 0x7f0b079e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c:Landroid/widget/Button;

    const v1, 0x7f0b079d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->j:Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v1, v1, v5

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->I:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->J:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->K:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->q:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/en;

    invoke-virtual {p0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v1, v1, v5

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v2, v2, v6

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->I:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->J:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->J:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->K:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v1, v1, v5

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v2, v2, v6

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->I:Landroid/widget/RadioButton;

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->J:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->J:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->K:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->K:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic z(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->q:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x400

    const/4 v4, 0x0

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->requestWindowFeature(I)Z

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v0, 0x7f030119

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    const-string v1, "context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->s:Ljava/lang/String;

    .line 103
    const-string v1, "fromMain"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->t:Z

    .line 104
    const-string v1, "fromSIMChange"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->u:Z

    .line 106
    const v0, 0x7f0803ec

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/util/SafeViewFlipper;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    .line 107
    const v0, 0x7f0803f7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c:Landroid/widget/Button;

    .line 108
    const v0, 0x7f0803f8

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d:Landroid/widget/Button;

    .line 109
    const v0, 0x7f0803c5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->n:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->n:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/traffic/ec;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ec;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f0803c8

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m:Landroid/widget/ListView;

    .line 163
    const v0, 0x7f0803a8

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->o:Landroid/widget/ListView;

    .line 164
    const v0, 0x7f0803a4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->D:Landroid/widget/RadioGroup;

    .line 165
    const v0, 0x7f0803a0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->E:Landroid/widget/RadioGroup;

    .line 166
    const v0, 0x7f0803a5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->F:Landroid/widget/RadioButton;

    .line 167
    const v0, 0x7f0803a6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->G:Landroid/widget/RadioButton;

    .line 168
    const v0, 0x7f0803a7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->H:Landroid/widget/RadioButton;

    .line 169
    const v0, 0x7f0803a1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->I:Landroid/widget/RadioButton;

    .line 170
    const v0, 0x7f0803a2

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->J:Landroid/widget/RadioButton;

    .line 171
    const v0, 0x7f0803a3

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->K:Landroid/widget/RadioButton;

    .line 172
    const v0, 0x7f080348

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->M:Landroid/widget/ImageView;

    .line 173
    const v0, 0x7f08034a

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->L:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->D:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->S:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->E:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->S:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 177
    const v0, 0x7f0803c3

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->k:Landroid/widget/EditText;

    .line 179
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->k:Landroid/widget/EditText;

    iget-wide v2, v0, Lcom/keniu/security/traffic/y;->d:J

    div-long/2addr v2, v5

    div-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/keniu/security/traffic/ef;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ef;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 212
    const v1, 0x7f0803c4

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 213
    const-string v2, "M"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 215
    new-instance v2, Lcom/keniu/security/traffic/eg;

    invoke-direct {v2, p0, v1}, Lcom/keniu/security/traffic/eg;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 229
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c:Landroid/widget/Button;

    new-instance v2, Lcom/keniu/security/traffic/eh;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/eh;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d:Landroid/widget/Button;

    new-instance v2, Lcom/keniu/security/traffic/ei;

    invoke-direct {v2, p0, v1}, Lcom/keniu/security/traffic/ei;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_num"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/SafeViewFlipper;->setDisplayedChild(I)V

    .line 417
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->q:Ljava/util/ArrayList;

    .line 418
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 419
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/traffic/en;

    invoke-direct {v1, p0, p0}, Lcom/keniu/security/traffic/en;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 420
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/traffic/ej;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ej;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 459
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->o:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 460
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/traffic/en;

    invoke-direct {v1, p0, p0}, Lcom/keniu/security/traffic/en;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 461
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/traffic/ek;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ek;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 481
    return-void
.end method
