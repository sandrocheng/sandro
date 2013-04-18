.class public final enum Lcom/keniu/security/sync/d/d/a/he;
.super Ljava/lang/Enum;
.source "Common.java"

# interfaces
.implements Lcom/b/a/fb;


# static fields
.field public static final enum a:Lcom/keniu/security/sync/d/d/a/he; = null

.field public static final enum b:Lcom/keniu/security/sync/d/d/a/he; = null

.field public static final enum c:Lcom/keniu/security/sync/d/d/a/he; = null

.field public static final enum d:Lcom/keniu/security/sync/d/d/a/he; = null

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field private static i:Lcom/b/a/er;

.field private static final j:[Lcom/keniu/security/sync/d/d/a/he;

.field private static final synthetic m:[Lcom/keniu/security/sync/d/d/a/he;


# instance fields
.field private final k:I

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3961
    new-instance v0, Lcom/keniu/security/sync/d/d/a/he;

    const-string v1, "CHECKING"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/keniu/security/sync/d/d/a/he;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/keniu/security/sync/d/d/a/he;->a:Lcom/keniu/security/sync/d/d/a/he;

    .line 3962
    new-instance v0, Lcom/keniu/security/sync/d/d/a/he;

    const-string v1, "CHECK_SUCCESS"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/keniu/security/sync/d/d/a/he;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/keniu/security/sync/d/d/a/he;->b:Lcom/keniu/security/sync/d/d/a/he;

    .line 3963
    new-instance v0, Lcom/keniu/security/sync/d/d/a/he;

    const-string v1, "CHECK_FAIL"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/keniu/security/sync/d/d/a/he;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/keniu/security/sync/d/d/a/he;->c:Lcom/keniu/security/sync/d/d/a/he;

    .line 3964
    new-instance v0, Lcom/keniu/security/sync/d/d/a/he;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/keniu/security/sync/d/d/a/he;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/keniu/security/sync/d/d/a/he;->d:Lcom/keniu/security/sync/d/d/a/he;

    .line 3959
    new-array v0, v6, [Lcom/keniu/security/sync/d/d/a/he;

    sget-object v1, Lcom/keniu/security/sync/d/d/a/he;->a:Lcom/keniu/security/sync/d/d/a/he;

    aput-object v1, v0, v5

    sget-object v1, Lcom/keniu/security/sync/d/d/a/he;->b:Lcom/keniu/security/sync/d/d/a/he;

    aput-object v1, v0, v2

    sget-object v1, Lcom/keniu/security/sync/d/d/a/he;->c:Lcom/keniu/security/sync/d/d/a/he;

    aput-object v1, v0, v3

    sget-object v1, Lcom/keniu/security/sync/d/d/a/he;->d:Lcom/keniu/security/sync/d/d/a/he;

    aput-object v1, v0, v4

    sput-object v0, Lcom/keniu/security/sync/d/d/a/he;->m:[Lcom/keniu/security/sync/d/d/a/he;

    .line 3990
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hf;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hf;-><init>()V

    sput-object v0, Lcom/keniu/security/sync/d/d/a/he;->i:Lcom/b/a/er;

    .line 4010
    new-array v0, v6, [Lcom/keniu/security/sync/d/d/a/he;

    sget-object v1, Lcom/keniu/security/sync/d/d/a/he;->a:Lcom/keniu/security/sync/d/d/a/he;

    aput-object v1, v0, v5

    sget-object v1, Lcom/keniu/security/sync/d/d/a/he;->b:Lcom/keniu/security/sync/d/d/a/he;

    aput-object v1, v0, v2

    sget-object v1, Lcom/keniu/security/sync/d/d/a/he;->c:Lcom/keniu/security/sync/d/d/a/he;

    aput-object v1, v0, v3

    sget-object v1, Lcom/keniu/security/sync/d/d/a/he;->d:Lcom/keniu/security/sync/d/d/a/he;

    aput-object v1, v0, v4

    sput-object v0, Lcom/keniu/security/sync/d/d/a/he;->j:[Lcom/keniu/security/sync/d/d/a/he;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4026
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4027
    iput p3, p0, Lcom/keniu/security/sync/d/d/a/he;->k:I

    .line 4028
    iput p4, p0, Lcom/keniu/security/sync/d/d/a/he;->l:I

    .line 4029
    return-void
.end method

.method public static a(I)Lcom/keniu/security/sync/d/d/a/he;
    .locals 1
    .parameter

    .prologue
    .line 3976
    packed-switch p0, :pswitch_data_0

    .line 3981
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3977
    :pswitch_0
    sget-object v0, Lcom/keniu/security/sync/d/d/a/he;->a:Lcom/keniu/security/sync/d/d/a/he;

    goto :goto_0

    .line 3978
    :pswitch_1
    sget-object v0, Lcom/keniu/security/sync/d/d/a/he;->b:Lcom/keniu/security/sync/d/d/a/he;

    goto :goto_0

    .line 3979
    :pswitch_2
    sget-object v0, Lcom/keniu/security/sync/d/d/a/he;->c:Lcom/keniu/security/sync/d/d/a/he;

    goto :goto_0

    .line 3980
    :pswitch_3
    sget-object v0, Lcom/keniu/security/sync/d/d/a/he;->d:Lcom/keniu/security/sync/d/d/a/he;

    goto :goto_0

    .line 3976
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lcom/b/a/cp;)Lcom/keniu/security/sync/d/d/a/he;
    .locals 2
    .parameter

    .prologue
    .line 4016
    invoke-virtual {p0}, Lcom/b/a/cp;->e()Lcom/b/a/co;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/he;->e()Lcom/b/a/co;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4017
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4020
    :cond_0
    sget-object v0, Lcom/keniu/security/sync/d/d/a/he;->j:[Lcom/keniu/security/sync/d/d/a/he;

    invoke-virtual {p0}, Lcom/b/a/cp;->d()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static d()Lcom/b/a/er;
    .locals 1

    .prologue
    .line 3987
    sget-object v0, Lcom/keniu/security/sync/d/d/a/he;->i:Lcom/b/a/er;

    return-object v0
.end method

.method private static e()Lcom/b/a/co;
    .locals 2

    .prologue
    .line 4007
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->i()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/co;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/he;
    .locals 1
    .parameter

    .prologue
    .line 3959
    const-class v0, Lcom/keniu/security/sync/d/d/a/he;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/he;

    return-object p0
.end method

.method public static values()[Lcom/keniu/security/sync/d/d/a/he;
    .locals 1

    .prologue
    .line 3959
    sget-object v0, Lcom/keniu/security/sync/d/d/a/he;->m:[Lcom/keniu/security/sync/d/d/a/he;

    invoke-virtual {v0}, [Lcom/keniu/security/sync/d/d/a/he;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keniu/security/sync/d/d/a/he;

    return-object v0
.end method


# virtual methods
.method public final H_()I
    .locals 1

    .prologue
    .line 3973
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/he;->l:I

    return v0
.end method

.method public final b()Lcom/b/a/cp;
    .locals 2

    .prologue
    .line 3999
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/he;->e()Lcom/b/a/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/co;->d()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/he;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cp;

    return-object p0
.end method

.method public final c()Lcom/b/a/co;
    .locals 1

    .prologue
    .line 4003
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/he;->e()Lcom/b/a/co;

    move-result-object v0

    return-object v0
.end method
