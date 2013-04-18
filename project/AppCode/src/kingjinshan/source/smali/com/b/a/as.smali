.class public final enum Lcom/b/a/as;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/fb;


# static fields
.field public static final enum a:Lcom/b/a/as; = null

.field public static final enum b:Lcom/b/a/as; = null

.field public static final enum c:Lcom/b/a/as; = null

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field private static g:Lcom/b/a/er;

.field private static final h:[Lcom/b/a/as;

.field private static final synthetic k:[Lcom/b/a/as;


# instance fields
.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11002
    new-instance v0, Lcom/b/a/as;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/b/a/as;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/as;->a:Lcom/b/a/as;

    .line 11003
    new-instance v0, Lcom/b/a/as;

    const-string v1, "CORD"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/b/a/as;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/as;->b:Lcom/b/a/as;

    .line 11004
    new-instance v0, Lcom/b/a/as;

    const-string v1, "STRING_PIECE"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/b/a/as;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/as;->c:Lcom/b/a/as;

    .line 11000
    new-array v0, v5, [Lcom/b/a/as;

    sget-object v1, Lcom/b/a/as;->a:Lcom/b/a/as;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/as;->b:Lcom/b/a/as;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/as;->c:Lcom/b/a/as;

    aput-object v1, v0, v4

    sput-object v0, Lcom/b/a/as;->k:[Lcom/b/a/as;

    .line 11028
    new-instance v0, Lcom/b/a/at;

    invoke-direct {v0}, Lcom/b/a/at;-><init>()V

    sput-object v0, Lcom/b/a/as;->g:Lcom/b/a/er;

    .line 11048
    new-array v0, v5, [Lcom/b/a/as;

    sget-object v1, Lcom/b/a/as;->a:Lcom/b/a/as;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/as;->b:Lcom/b/a/as;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/as;->c:Lcom/b/a/as;

    aput-object v1, v0, v4

    sput-object v0, Lcom/b/a/as;->h:[Lcom/b/a/as;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11064
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11065
    iput p3, p0, Lcom/b/a/as;->i:I

    .line 11066
    iput p4, p0, Lcom/b/a/as;->j:I

    .line 11067
    return-void
.end method

.method public static a(I)Lcom/b/a/as;
    .locals 1
    .parameter

    .prologue
    .line 11015
    packed-switch p0, :pswitch_data_0

    .line 11019
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11016
    :pswitch_0
    sget-object v0, Lcom/b/a/as;->a:Lcom/b/a/as;

    goto :goto_0

    .line 11017
    :pswitch_1
    sget-object v0, Lcom/b/a/as;->b:Lcom/b/a/as;

    goto :goto_0

    .line 11018
    :pswitch_2
    sget-object v0, Lcom/b/a/as;->c:Lcom/b/a/as;

    goto :goto_0

    .line 11015
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/b/a/cp;)Lcom/b/a/as;
    .locals 2
    .parameter

    .prologue
    .line 11054
    invoke-virtual {p0}, Lcom/b/a/cp;->e()Lcom/b/a/co;

    move-result-object v0

    invoke-static {}, Lcom/b/a/as;->e()Lcom/b/a/co;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11055
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11058
    :cond_0
    sget-object v0, Lcom/b/a/as;->h:[Lcom/b/a/as;

    invoke-virtual {p0}, Lcom/b/a/cp;->d()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static d()Lcom/b/a/er;
    .locals 1

    .prologue
    .line 11025
    sget-object v0, Lcom/b/a/as;->g:Lcom/b/a/er;

    return-object v0
.end method

.method private static e()Lcom/b/a/co;
    .locals 2

    .prologue
    .line 11045
    invoke-static {}, Lcom/b/a/aq;->f()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/co;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/as;
    .locals 1
    .parameter

    .prologue
    .line 11000
    const-class v0, Lcom/b/a/as;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/b/a/as;

    return-object p0
.end method

.method public static values()[Lcom/b/a/as;
    .locals 1

    .prologue
    .line 11000
    sget-object v0, Lcom/b/a/as;->k:[Lcom/b/a/as;

    invoke-virtual {v0}, [Lcom/b/a/as;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/as;

    return-object v0
.end method


# virtual methods
.method public final H_()I
    .locals 1

    .prologue
    .line 11012
    iget v0, p0, Lcom/b/a/as;->j:I

    return v0
.end method

.method public final b()Lcom/b/a/cp;
    .locals 2

    .prologue
    .line 11037
    invoke-static {}, Lcom/b/a/as;->e()Lcom/b/a/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/co;->d()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/b/a/as;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cp;

    return-object p0
.end method

.method public final c()Lcom/b/a/co;
    .locals 1

    .prologue
    .line 11041
    invoke-static {}, Lcom/b/a/as;->e()Lcom/b/a/co;

    move-result-object v0

    return-object v0
.end method
