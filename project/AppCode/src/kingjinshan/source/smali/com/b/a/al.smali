.class public final enum Lcom/b/a/al;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/fb;


# static fields
.field public static final enum a:Lcom/b/a/al; = null

.field public static final enum b:Lcom/b/a/al; = null

.field public static final enum c:Lcom/b/a/al; = null

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field private static g:Lcom/b/a/er;

.field private static final h:[Lcom/b/a/al;

.field private static final synthetic k:[Lcom/b/a/al;


# instance fields
.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5113
    new-instance v0, Lcom/b/a/al;

    const-string v1, "LABEL_OPTIONAL"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/b/a/al;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/al;->a:Lcom/b/a/al;

    .line 5114
    new-instance v0, Lcom/b/a/al;

    const-string v1, "LABEL_REQUIRED"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/b/a/al;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/al;->b:Lcom/b/a/al;

    .line 5115
    new-instance v0, Lcom/b/a/al;

    const-string v1, "LABEL_REPEATED"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/b/a/al;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/b/a/al;->c:Lcom/b/a/al;

    .line 5111
    new-array v0, v5, [Lcom/b/a/al;

    sget-object v1, Lcom/b/a/al;->a:Lcom/b/a/al;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/al;->b:Lcom/b/a/al;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/al;->c:Lcom/b/a/al;

    aput-object v1, v0, v3

    sput-object v0, Lcom/b/a/al;->k:[Lcom/b/a/al;

    .line 5139
    new-instance v0, Lcom/b/a/am;

    invoke-direct {v0}, Lcom/b/a/am;-><init>()V

    sput-object v0, Lcom/b/a/al;->g:Lcom/b/a/er;

    .line 5159
    new-array v0, v5, [Lcom/b/a/al;

    sget-object v1, Lcom/b/a/al;->a:Lcom/b/a/al;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/al;->b:Lcom/b/a/al;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/al;->c:Lcom/b/a/al;

    aput-object v1, v0, v3

    sput-object v0, Lcom/b/a/al;->h:[Lcom/b/a/al;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5176
    iput p3, p0, Lcom/b/a/al;->i:I

    .line 5177
    iput p4, p0, Lcom/b/a/al;->j:I

    .line 5178
    return-void
.end method

.method public static a(I)Lcom/b/a/al;
    .locals 1
    .parameter

    .prologue
    .line 5126
    packed-switch p0, :pswitch_data_0

    .line 5130
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5127
    :pswitch_0
    sget-object v0, Lcom/b/a/al;->a:Lcom/b/a/al;

    goto :goto_0

    .line 5128
    :pswitch_1
    sget-object v0, Lcom/b/a/al;->b:Lcom/b/a/al;

    goto :goto_0

    .line 5129
    :pswitch_2
    sget-object v0, Lcom/b/a/al;->c:Lcom/b/a/al;

    goto :goto_0

    .line 5126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/b/a/cp;)Lcom/b/a/al;
    .locals 2
    .parameter

    .prologue
    .line 5165
    invoke-virtual {p0}, Lcom/b/a/cp;->e()Lcom/b/a/co;

    move-result-object v0

    invoke-static {}, Lcom/b/a/al;->e()Lcom/b/a/co;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5169
    :cond_0
    sget-object v0, Lcom/b/a/al;->h:[Lcom/b/a/al;

    invoke-virtual {p0}, Lcom/b/a/cp;->d()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static d()Lcom/b/a/er;
    .locals 1

    .prologue
    .line 5136
    sget-object v0, Lcom/b/a/al;->g:Lcom/b/a/er;

    return-object v0
.end method

.method private static e()Lcom/b/a/co;
    .locals 2

    .prologue
    .line 5156
    invoke-static {}, Lcom/b/a/aj;->f()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/co;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/al;
    .locals 1
    .parameter

    .prologue
    .line 5111
    const-class v0, Lcom/b/a/al;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/b/a/al;

    return-object p0
.end method

.method public static values()[Lcom/b/a/al;
    .locals 1

    .prologue
    .line 5111
    sget-object v0, Lcom/b/a/al;->k:[Lcom/b/a/al;

    invoke-virtual {v0}, [Lcom/b/a/al;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/al;

    return-object v0
.end method


# virtual methods
.method public final H_()I
    .locals 1

    .prologue
    .line 5123
    iget v0, p0, Lcom/b/a/al;->j:I

    return v0
.end method

.method public final b()Lcom/b/a/cp;
    .locals 2

    .prologue
    .line 5148
    invoke-static {}, Lcom/b/a/al;->e()Lcom/b/a/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/co;->d()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/b/a/al;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cp;

    return-object p0
.end method

.method public final c()Lcom/b/a/co;
    .locals 1

    .prologue
    .line 5152
    invoke-static {}, Lcom/b/a/al;->e()Lcom/b/a/co;

    move-result-object v0

    return-object v0
.end method
