.class public final enum Lcom/b/a/cs;
.super Ljava/lang/Enum;
.source "Descriptors.java"


# static fields
.field public static final enum a:Lcom/b/a/cs;

.field public static final enum b:Lcom/b/a/cs;

.field public static final enum c:Lcom/b/a/cs;

.field public static final enum d:Lcom/b/a/cs;

.field public static final enum e:Lcom/b/a/cs;

.field public static final enum f:Lcom/b/a/cs;

.field public static final enum g:Lcom/b/a/cs;

.field public static final enum h:Lcom/b/a/cs;

.field public static final enum i:Lcom/b/a/cs;

.field public static final enum j:Lcom/b/a/cs;

.field public static final enum k:Lcom/b/a/cs;

.field public static final enum l:Lcom/b/a/cs;

.field public static final enum m:Lcom/b/a/cs;

.field public static final enum n:Lcom/b/a/cs;

.field public static final enum o:Lcom/b/a/cs;

.field public static final enum p:Lcom/b/a/cs;

.field public static final enum q:Lcom/b/a/cs;

.field public static final enum r:Lcom/b/a/cs;

.field private static final synthetic t:[Lcom/b/a/cs;


# instance fields
.field private s:Lcom/b/a/cr;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 826
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "DOUBLE"

    sget-object v2, Lcom/b/a/cr;->d:Lcom/b/a/cr;

    invoke-direct {v0, v1, v4, v2}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->a:Lcom/b/a/cs;

    .line 827
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "FLOAT"

    sget-object v2, Lcom/b/a/cr;->c:Lcom/b/a/cr;

    invoke-direct {v0, v1, v5, v2}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->b:Lcom/b/a/cs;

    .line 828
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "INT64"

    sget-object v2, Lcom/b/a/cr;->b:Lcom/b/a/cr;

    invoke-direct {v0, v1, v6, v2}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->c:Lcom/b/a/cs;

    .line 829
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "UINT64"

    sget-object v2, Lcom/b/a/cr;->b:Lcom/b/a/cr;

    invoke-direct {v0, v1, v7, v2}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->d:Lcom/b/a/cs;

    .line 830
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "INT32"

    sget-object v2, Lcom/b/a/cr;->a:Lcom/b/a/cr;

    invoke-direct {v0, v1, v8, v2}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->e:Lcom/b/a/cs;

    .line 831
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "FIXED64"

    const/4 v2, 0x5

    sget-object v3, Lcom/b/a/cr;->b:Lcom/b/a/cr;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->f:Lcom/b/a/cs;

    .line 832
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Lcom/b/a/cr;->a:Lcom/b/a/cr;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->g:Lcom/b/a/cs;

    .line 833
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Lcom/b/a/cr;->e:Lcom/b/a/cr;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->h:Lcom/b/a/cs;

    .line 834
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "STRING"

    const/16 v2, 0x8

    sget-object v3, Lcom/b/a/cr;->f:Lcom/b/a/cr;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->i:Lcom/b/a/cs;

    .line 835
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "GROUP"

    const/16 v2, 0x9

    sget-object v3, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->j:Lcom/b/a/cs;

    .line 836
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "MESSAGE"

    const/16 v2, 0xa

    sget-object v3, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->k:Lcom/b/a/cs;

    .line 837
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "BYTES"

    const/16 v2, 0xb

    sget-object v3, Lcom/b/a/cr;->g:Lcom/b/a/cr;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->l:Lcom/b/a/cs;

    .line 838
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "UINT32"

    const/16 v2, 0xc

    sget-object v3, Lcom/b/a/cr;->a:Lcom/b/a/cr;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->m:Lcom/b/a/cs;

    .line 839
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "ENUM"

    const/16 v2, 0xd

    sget-object v3, Lcom/b/a/cr;->h:Lcom/b/a/cr;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->n:Lcom/b/a/cs;

    .line 840
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "SFIXED32"

    const/16 v2, 0xe

    sget-object v3, Lcom/b/a/cr;->a:Lcom/b/a/cr;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->o:Lcom/b/a/cs;

    .line 841
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "SFIXED64"

    const/16 v2, 0xf

    sget-object v3, Lcom/b/a/cr;->b:Lcom/b/a/cr;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->p:Lcom/b/a/cs;

    .line 842
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "SINT32"

    const/16 v2, 0x10

    sget-object v3, Lcom/b/a/cr;->a:Lcom/b/a/cr;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->q:Lcom/b/a/cs;

    .line 843
    new-instance v0, Lcom/b/a/cs;

    const-string v1, "SINT64"

    const/16 v2, 0x11

    sget-object v3, Lcom/b/a/cr;->b:Lcom/b/a/cr;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cs;-><init>(Ljava/lang/String;ILcom/b/a/cr;)V

    sput-object v0, Lcom/b/a/cs;->r:Lcom/b/a/cs;

    .line 825
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/b/a/cs;

    sget-object v1, Lcom/b/a/cs;->a:Lcom/b/a/cs;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/cs;->b:Lcom/b/a/cs;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/cs;->c:Lcom/b/a/cs;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/cs;->d:Lcom/b/a/cs;

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/cs;->e:Lcom/b/a/cs;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/b/a/cs;->f:Lcom/b/a/cs;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/b/a/cs;->g:Lcom/b/a/cs;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/b/a/cs;->h:Lcom/b/a/cs;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/b/a/cs;->i:Lcom/b/a/cs;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/b/a/cs;->j:Lcom/b/a/cs;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/b/a/cs;->k:Lcom/b/a/cs;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/b/a/cs;->l:Lcom/b/a/cs;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/b/a/cs;->m:Lcom/b/a/cs;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/b/a/cs;->n:Lcom/b/a/cs;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/b/a/cs;->o:Lcom/b/a/cs;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/b/a/cs;->p:Lcom/b/a/cs;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/b/a/cs;->q:Lcom/b/a/cs;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/b/a/cs;->r:Lcom/b/a/cs;

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/cs;->t:[Lcom/b/a/cs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/b/a/cr;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 845
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 846
    iput-object p3, p0, Lcom/b/a/cs;->s:Lcom/b/a/cr;

    .line 847
    return-void
.end method

.method public static a(Lcom/b/a/an;)Lcom/b/a/cs;
    .locals 3
    .parameter

    .prologue
    .line 857
    invoke-static {}, Lcom/b/a/cs;->values()[Lcom/b/a/cs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/an;->H_()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private b()Lcom/b/a/an;
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/b/a/cs;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/b/a/an;->a(I)Lcom/b/a/an;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/cs;
    .locals 1
    .parameter

    .prologue
    .line 825
    const-class v0, Lcom/b/a/cs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/b/a/cs;

    return-object p0
.end method

.method public static values()[Lcom/b/a/cs;
    .locals 1

    .prologue
    .line 825
    sget-object v0, Lcom/b/a/cs;->t:[Lcom/b/a/cs;

    invoke-virtual {v0}, [Lcom/b/a/cs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/cs;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/b/a/cr;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/b/a/cs;->s:Lcom/b/a/cr;

    return-object v0
.end method
