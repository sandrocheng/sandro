.class public final enum Lcom/b/a/an;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/fb;


# static fields
.field public static final A:I = 0x9

.field public static final B:I = 0xa

.field public static final C:I = 0xb

.field public static final D:I = 0xc

.field public static final E:I = 0xd

.field public static final F:I = 0xe

.field public static final G:I = 0xf

.field public static final H:I = 0x10

.field public static final I:I = 0x11

.field public static final J:I = 0x12

.field private static K:Lcom/b/a/er; = null

.field private static final L:[Lcom/b/a/an; = null

.field private static final synthetic O:[Lcom/b/a/an; = null

.field public static final enum a:Lcom/b/a/an; = null

.field public static final enum b:Lcom/b/a/an; = null

.field public static final enum c:Lcom/b/a/an; = null

.field public static final enum d:Lcom/b/a/an; = null

.field public static final enum e:Lcom/b/a/an; = null

.field public static final enum f:Lcom/b/a/an; = null

.field public static final enum g:Lcom/b/a/an; = null

.field public static final enum h:Lcom/b/a/an; = null

.field public static final enum i:Lcom/b/a/an; = null

.field public static final enum j:Lcom/b/a/an; = null

.field public static final enum k:Lcom/b/a/an; = null

.field public static final enum l:Lcom/b/a/an; = null

.field public static final enum m:Lcom/b/a/an; = null

.field public static final enum n:Lcom/b/a/an; = null

.field public static final enum o:Lcom/b/a/an; = null

.field public static final enum p:Lcom/b/a/an; = null

.field public static final enum q:Lcom/b/a/an; = null

.field public static final enum r:Lcom/b/a/an; = null

.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field public static final u:I = 0x3

.field public static final v:I = 0x4

.field public static final w:I = 0x5

.field public static final x:I = 0x6

.field public static final y:I = 0x7

.field public static final z:I = 0x8


# instance fields
.field private final M:I

.field private final N:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 4996
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->a:Lcom/b/a/an;

    .line 4997
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_FLOAT"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->b:Lcom/b/a/an;

    .line 4998
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_INT64"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->c:Lcom/b/a/an;

    .line 4999
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_UINT64"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->d:Lcom/b/a/an;

    .line 5000
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_INT32"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->e:Lcom/b/a/an;

    .line 5001
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_FIXED64"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->f:Lcom/b/a/an;

    .line 5002
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_FIXED32"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->g:Lcom/b/a/an;

    .line 5003
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_BOOL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->h:Lcom/b/a/an;

    .line 5004
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_STRING"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->i:Lcom/b/a/an;

    .line 5005
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_GROUP"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->j:Lcom/b/a/an;

    .line 5006
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_MESSAGE"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->k:Lcom/b/a/an;

    .line 5007
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_BYTES"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->l:Lcom/b/a/an;

    .line 5008
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_UINT32"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->m:Lcom/b/a/an;

    .line 5009
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_ENUM"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->n:Lcom/b/a/an;

    .line 5010
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_SFIXED32"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->o:Lcom/b/a/an;

    .line 5011
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_SFIXED64"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->p:Lcom/b/a/an;

    .line 5012
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_SINT32"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->q:Lcom/b/a/an;

    .line 5013
    new-instance v0, Lcom/b/a/an;

    const-string v1, "TYPE_SINT64"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/an;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/an;->r:Lcom/b/a/an;

    .line 4994
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/b/a/an;

    const/4 v1, 0x0

    sget-object v2, Lcom/b/a/an;->a:Lcom/b/a/an;

    aput-object v2, v0, v1

    sget-object v1, Lcom/b/a/an;->b:Lcom/b/a/an;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/an;->c:Lcom/b/a/an;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/an;->d:Lcom/b/a/an;

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/an;->e:Lcom/b/a/an;

    aput-object v1, v0, v8

    sget-object v1, Lcom/b/a/an;->f:Lcom/b/a/an;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/b/a/an;->g:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/b/a/an;->h:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/b/a/an;->i:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/b/a/an;->j:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/b/a/an;->k:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/b/a/an;->l:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/b/a/an;->m:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/b/a/an;->n:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/b/a/an;->o:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/b/a/an;->p:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/b/a/an;->q:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/b/a/an;->r:Lcom/b/a/an;

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/an;->O:[Lcom/b/a/an;

    .line 5067
    new-instance v0, Lcom/b/a/ao;

    invoke-direct {v0}, Lcom/b/a/ao;-><init>()V

    sput-object v0, Lcom/b/a/an;->K:Lcom/b/a/er;

    .line 5087
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/b/a/an;

    const/4 v1, 0x0

    sget-object v2, Lcom/b/a/an;->a:Lcom/b/a/an;

    aput-object v2, v0, v1

    sget-object v1, Lcom/b/a/an;->b:Lcom/b/a/an;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/an;->c:Lcom/b/a/an;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/an;->d:Lcom/b/a/an;

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/an;->e:Lcom/b/a/an;

    aput-object v1, v0, v8

    sget-object v1, Lcom/b/a/an;->f:Lcom/b/a/an;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/b/a/an;->g:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/b/a/an;->h:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/b/a/an;->i:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/b/a/an;->j:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/b/a/an;->k:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/b/a/an;->l:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/b/a/an;->m:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/b/a/an;->n:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/b/a/an;->o:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/b/a/an;->p:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/b/a/an;->q:Lcom/b/a/an;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/b/a/an;->r:Lcom/b/a/an;

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/an;->L:[Lcom/b/a/an;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5104
    iput p3, p0, Lcom/b/a/an;->M:I

    .line 5105
    iput p4, p0, Lcom/b/a/an;->N:I

    .line 5106
    return-void
.end method

.method public static a(I)Lcom/b/a/an;
    .locals 1
    .parameter

    .prologue
    .line 5039
    packed-switch p0, :pswitch_data_0

    .line 5058
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5040
    :pswitch_0
    sget-object v0, Lcom/b/a/an;->a:Lcom/b/a/an;

    goto :goto_0

    .line 5041
    :pswitch_1
    sget-object v0, Lcom/b/a/an;->b:Lcom/b/a/an;

    goto :goto_0

    .line 5042
    :pswitch_2
    sget-object v0, Lcom/b/a/an;->c:Lcom/b/a/an;

    goto :goto_0

    .line 5043
    :pswitch_3
    sget-object v0, Lcom/b/a/an;->d:Lcom/b/a/an;

    goto :goto_0

    .line 5044
    :pswitch_4
    sget-object v0, Lcom/b/a/an;->e:Lcom/b/a/an;

    goto :goto_0

    .line 5045
    :pswitch_5
    sget-object v0, Lcom/b/a/an;->f:Lcom/b/a/an;

    goto :goto_0

    .line 5046
    :pswitch_6
    sget-object v0, Lcom/b/a/an;->g:Lcom/b/a/an;

    goto :goto_0

    .line 5047
    :pswitch_7
    sget-object v0, Lcom/b/a/an;->h:Lcom/b/a/an;

    goto :goto_0

    .line 5048
    :pswitch_8
    sget-object v0, Lcom/b/a/an;->i:Lcom/b/a/an;

    goto :goto_0

    .line 5049
    :pswitch_9
    sget-object v0, Lcom/b/a/an;->j:Lcom/b/a/an;

    goto :goto_0

    .line 5050
    :pswitch_a
    sget-object v0, Lcom/b/a/an;->k:Lcom/b/a/an;

    goto :goto_0

    .line 5051
    :pswitch_b
    sget-object v0, Lcom/b/a/an;->l:Lcom/b/a/an;

    goto :goto_0

    .line 5052
    :pswitch_c
    sget-object v0, Lcom/b/a/an;->m:Lcom/b/a/an;

    goto :goto_0

    .line 5053
    :pswitch_d
    sget-object v0, Lcom/b/a/an;->n:Lcom/b/a/an;

    goto :goto_0

    .line 5054
    :pswitch_e
    sget-object v0, Lcom/b/a/an;->o:Lcom/b/a/an;

    goto :goto_0

    .line 5055
    :pswitch_f
    sget-object v0, Lcom/b/a/an;->p:Lcom/b/a/an;

    goto :goto_0

    .line 5056
    :pswitch_10
    sget-object v0, Lcom/b/a/an;->q:Lcom/b/a/an;

    goto :goto_0

    .line 5057
    :pswitch_11
    sget-object v0, Lcom/b/a/an;->r:Lcom/b/a/an;

    goto :goto_0

    .line 5039
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private static a(Lcom/b/a/cp;)Lcom/b/a/an;
    .locals 2
    .parameter

    .prologue
    .line 5093
    invoke-virtual {p0}, Lcom/b/a/cp;->e()Lcom/b/a/co;

    move-result-object v0

    invoke-static {}, Lcom/b/a/an;->e()Lcom/b/a/co;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5094
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5097
    :cond_0
    sget-object v0, Lcom/b/a/an;->L:[Lcom/b/a/an;

    invoke-virtual {p0}, Lcom/b/a/cp;->d()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static d()Lcom/b/a/er;
    .locals 1

    .prologue
    .line 5064
    sget-object v0, Lcom/b/a/an;->K:Lcom/b/a/er;

    return-object v0
.end method

.method private static e()Lcom/b/a/co;
    .locals 2

    .prologue
    .line 5084
    invoke-static {}, Lcom/b/a/aj;->f()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/co;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/an;
    .locals 1
    .parameter

    .prologue
    .line 4994
    const-class v0, Lcom/b/a/an;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/b/a/an;

    return-object p0
.end method

.method public static values()[Lcom/b/a/an;
    .locals 1

    .prologue
    .line 4994
    sget-object v0, Lcom/b/a/an;->O:[Lcom/b/a/an;

    invoke-virtual {v0}, [Lcom/b/a/an;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/an;

    return-object v0
.end method


# virtual methods
.method public final H_()I
    .locals 1

    .prologue
    .line 5036
    iget v0, p0, Lcom/b/a/an;->N:I

    return v0
.end method

.method public final b()Lcom/b/a/cp;
    .locals 2

    .prologue
    .line 5076
    invoke-static {}, Lcom/b/a/an;->e()Lcom/b/a/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/co;->d()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/b/a/an;->M:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cp;

    return-object p0
.end method

.method public final c()Lcom/b/a/co;
    .locals 1

    .prologue
    .line 5080
    invoke-static {}, Lcom/b/a/an;->e()Lcom/b/a/co;

    move-result-object v0

    return-object v0
.end method
