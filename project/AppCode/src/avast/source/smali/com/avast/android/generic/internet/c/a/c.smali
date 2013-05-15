.class public final Lcom/avast/android/generic/internet/c/a/c;
.super Lcom/google/a/l;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/e;


# static fields
.field private static final a:Lcom/avast/android/generic/internet/c/a/c;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Lcom/google/a/c;

.field private k:Lcom/google/a/c;

.field private l:Lcom/avast/android/generic/internet/c/a/q;

.field private m:B

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1827
    new-instance v0, Lcom/avast/android/generic/internet/c/a/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/internet/c/a/c;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/c;->a:Lcom/avast/android/generic/internet/c/a/c;

    .line 1828
    sget-object v0, Lcom/avast/android/generic/internet/c/a/c;->a:Lcom/avast/android/generic/internet/c/a/c;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/c;->I()V

    .line 1829
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/internet/c/a/d;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 832
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 1090
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/c;->m:B

    .line 1134
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/c;->n:I

    .line 833
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/internet/c/a/d;Lcom/avast/android/generic/internet/c/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/a/c;-><init>(Lcom/avast/android/generic/internet/c/a/d;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 834
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 1090
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/c;->m:B

    .line 1134
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/c;->n:I

    .line 834
    return-void
.end method

.method private C()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->c:Ljava/lang/Object;

    .line 868
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 869
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 871
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->c:Ljava/lang/Object;

    .line 874
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private D()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->d:Ljava/lang/Object;

    .line 900
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 901
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 903
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->d:Ljava/lang/Object;

    .line 906
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private E()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->e:Ljava/lang/Object;

    .line 932
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 933
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 935
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->e:Ljava/lang/Object;

    .line 938
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private F()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->g:Ljava/lang/Object;

    .line 974
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 975
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 977
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->g:Ljava/lang/Object;

    .line 980
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private G()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->h:Ljava/lang/Object;

    .line 1006
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1007
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 1009
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->h:Ljava/lang/Object;

    .line 1012
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private H()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->i:Ljava/lang/Object;

    .line 1038
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1039
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 1041
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->i:Ljava/lang/Object;

    .line 1044
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private I()V
    .locals 1

    .prologue
    .line 1079
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->c:Ljava/lang/Object;

    .line 1080
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->d:Ljava/lang/Object;

    .line 1081
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->e:Ljava/lang/Object;

    .line 1082
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/c;->f:I

    .line 1083
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->g:Ljava/lang/Object;

    .line 1084
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->h:Ljava/lang/Object;

    .line 1085
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->i:Ljava/lang/Object;

    .line 1086
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->j:Lcom/google/a/c;

    .line 1087
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->k:Lcom/google/a/c;

    .line 1088
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/q;->a()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->l:Lcom/avast/android/generic/internet/c/a/q;

    .line 1089
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/c;->f:I

    return p1
.end method

.method public static a()Lcom/avast/android/generic/internet/c/a/c;
    .locals 1

    .prologue
    .line 838
    sget-object v0, Lcom/avast/android/generic/internet/c/a/c;->a:Lcom/avast/android/generic/internet/c/a/c;

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/internet/c/a/c;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 1261
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/c;->x()Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/d;->a(Lcom/avast/android/generic/internet/c/a/c;)Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/c;Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/q;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/c;->l:Lcom/avast/android/generic/internet/c/a/q;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/c;->j:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/c;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    return p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/c;->k:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/c;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/c/a/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/c;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/android/generic/internet/c/a/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/c;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/avast/android/generic/internet/c/a/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/c;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/avast/android/generic/internet/c/a/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/c;->i:Ljava/lang/Object;

    return-object p1
.end method

.method public static x()Lcom/avast/android/generic/internet/c/a/d;
    .locals 1

    .prologue
    .line 1258
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/d;->k()Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/c;->z()Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/c;->y()Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1101
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/c;->w()I

    .line 1102
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1103
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/c;->C()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1105
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1106
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/c;->D()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1108
    :cond_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_2

    .line 1109
    const/4 v0, 0x3

    iget v1, p0, Lcom/avast/android/generic/internet/c/a/c;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 1111
    :cond_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1112
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/c;->F()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1114
    :cond_3
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 1115
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/c;->G()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1117
    :cond_4
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5

    .line 1118
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/c;->H()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1120
    :cond_5
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6

    .line 1121
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/c;->j:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1123
    :cond_6
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_7

    .line 1124
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->k:Lcom/google/a/c;

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1126
    :cond_7
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_8

    .line 1127
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/c;->E()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1129
    :cond_8
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 1130
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/c;->l:Lcom/avast/android/generic/internet/c/a/q;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 1132
    :cond_9
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 850
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->c:Ljava/lang/Object;

    .line 854
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 855
    check-cast v0, Ljava/lang/String;

    .line 863
    :goto_0
    return-object v0

    .line 857
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 859
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 860
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/c;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 863
    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 882
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->d:Ljava/lang/Object;

    .line 886
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 887
    check-cast v0, Ljava/lang/String;

    .line 895
    :goto_0
    return-object v0

    .line 889
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 891
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 892
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/c;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 895
    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 914
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->e:Ljava/lang/Object;

    .line 918
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 919
    check-cast v0, Ljava/lang/String;

    .line 927
    :goto_0
    return-object v0

    .line 921
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 923
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 924
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/c;->e:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 927
    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 946
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->f:I

    return v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 956
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->g:Ljava/lang/Object;

    .line 960
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 961
    check-cast v0, Ljava/lang/String;

    .line 969
    :goto_0
    return-object v0

    .line 963
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 965
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 966
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/c;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 969
    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 988
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->h:Ljava/lang/Object;

    .line 992
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 993
    check-cast v0, Ljava/lang/String;

    .line 1001
    :goto_0
    return-object v0

    .line 995
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 997
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 998
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/c;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1001
    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 1020
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->i:Ljava/lang/Object;

    .line 1024
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1025
    check-cast v0, Ljava/lang/String;

    .line 1033
    :goto_0
    return-object v0

    .line 1027
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 1029
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 1030
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/c;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1033
    goto :goto_0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 1052
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->j:Lcom/google/a/c;

    return-object v0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 1062
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->k:Lcom/google/a/c;

    return-object v0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 1072
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Lcom/avast/android/generic/internet/c/a/q;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/c;->l:Lcom/avast/android/generic/internet/c/a/q;

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1092
    iget-byte v1, p0, Lcom/avast/android/generic/internet/c/a/c;->m:B

    .line 1093
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 1096
    :goto_0
    return v0

    .line 1093
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1095
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/c;->m:B

    goto :goto_0
.end method

.method public w()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1136
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/c;->n:I

    .line 1137
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1181
    :goto_0
    return v0

    .line 1139
    :cond_0
    const/4 v0, 0x0

    .line 1140
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1141
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/c;->C()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1144
    :cond_1
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1145
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/c;->D()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1148
    :cond_2
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 1149
    const/4 v1, 0x3

    iget v2, p0, Lcom/avast/android/generic/internet/c/a/c;->f:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1152
    :cond_3
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 1153
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/c;->F()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1156
    :cond_4
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 1157
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/c;->G()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1160
    :cond_5
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 1161
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/c;->H()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1164
    :cond_6
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 1165
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/avast/android/generic/internet/c/a/c;->j:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1168
    :cond_7
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 1169
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/c;->k:Lcom/google/a/c;

    invoke-static {v5, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1172
    :cond_8
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_9

    .line 1173
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/c;->E()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1176
    :cond_9
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/c;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 1177
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/avast/android/generic/internet/c/a/c;->l:Lcom/avast/android/generic/internet/c/a/q;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1180
    :cond_a
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/c;->n:I

    goto/16 :goto_0
.end method

.method public y()Lcom/avast/android/generic/internet/c/a/d;
    .locals 1

    .prologue
    .line 1259
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/c;->x()Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method public z()Lcom/avast/android/generic/internet/c/a/d;
    .locals 1

    .prologue
    .line 1263
    invoke-static {p0}, Lcom/avast/android/generic/internet/c/a/c;->a(Lcom/avast/android/generic/internet/c/a/c;)Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method
