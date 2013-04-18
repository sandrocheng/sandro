.class public final enum Lcom/keniu/security/sync/d/d/a/dc;
.super Ljava/lang/Enum;
.source "Appsvr.java"

# interfaces
.implements Lcom/b/a/fb;


# static fields
.field public static final enum a:Lcom/keniu/security/sync/d/d/a/dc; = null

.field public static final enum b:Lcom/keniu/security/sync/d/d/a/dc; = null

.field public static final enum c:Lcom/keniu/security/sync/d/d/a/dc; = null

.field public static final enum d:Lcom/keniu/security/sync/d/d/a/dc; = null

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field private static i:Lcom/b/a/er;

.field private static final j:[Lcom/keniu/security/sync/d/d/a/dc;

.field private static final synthetic m:[Lcom/keniu/security/sync/d/d/a/dc;


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

    .line 37554
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dc;

    const-string v1, "ONE_MB"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/keniu/security/sync/d/d/a/dc;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/keniu/security/sync/d/d/a/dc;->a:Lcom/keniu/security/sync/d/d/a/dc;

    .line 37555
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dc;

    const-string v1, "TEN_MB"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/keniu/security/sync/d/d/a/dc;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/keniu/security/sync/d/d/a/dc;->b:Lcom/keniu/security/sync/d/d/a/dc;

    .line 37556
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dc;

    const-string v1, "ONE_HUNDRED_MB"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/keniu/security/sync/d/d/a/dc;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/keniu/security/sync/d/d/a/dc;->c:Lcom/keniu/security/sync/d/d/a/dc;

    .line 37557
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dc;

    const-string v1, "ONE_THOUSAND_MB"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/keniu/security/sync/d/d/a/dc;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/keniu/security/sync/d/d/a/dc;->d:Lcom/keniu/security/sync/d/d/a/dc;

    .line 37552
    new-array v0, v6, [Lcom/keniu/security/sync/d/d/a/dc;

    sget-object v1, Lcom/keniu/security/sync/d/d/a/dc;->a:Lcom/keniu/security/sync/d/d/a/dc;

    aput-object v1, v0, v5

    sget-object v1, Lcom/keniu/security/sync/d/d/a/dc;->b:Lcom/keniu/security/sync/d/d/a/dc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/keniu/security/sync/d/d/a/dc;->c:Lcom/keniu/security/sync/d/d/a/dc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/keniu/security/sync/d/d/a/dc;->d:Lcom/keniu/security/sync/d/d/a/dc;

    aput-object v1, v0, v4

    sput-object v0, Lcom/keniu/security/sync/d/d/a/dc;->m:[Lcom/keniu/security/sync/d/d/a/dc;

    .line 37583
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dd;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dd;-><init>()V

    sput-object v0, Lcom/keniu/security/sync/d/d/a/dc;->i:Lcom/b/a/er;

    .line 37603
    new-array v0, v6, [Lcom/keniu/security/sync/d/d/a/dc;

    sget-object v1, Lcom/keniu/security/sync/d/d/a/dc;->a:Lcom/keniu/security/sync/d/d/a/dc;

    aput-object v1, v0, v5

    sget-object v1, Lcom/keniu/security/sync/d/d/a/dc;->b:Lcom/keniu/security/sync/d/d/a/dc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/keniu/security/sync/d/d/a/dc;->c:Lcom/keniu/security/sync/d/d/a/dc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/keniu/security/sync/d/d/a/dc;->d:Lcom/keniu/security/sync/d/d/a/dc;

    aput-object v1, v0, v4

    sput-object v0, Lcom/keniu/security/sync/d/d/a/dc;->j:[Lcom/keniu/security/sync/d/d/a/dc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37619
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37620
    iput p3, p0, Lcom/keniu/security/sync/d/d/a/dc;->k:I

    .line 37621
    iput p4, p0, Lcom/keniu/security/sync/d/d/a/dc;->l:I

    .line 37622
    return-void
.end method

.method public static a(I)Lcom/keniu/security/sync/d/d/a/dc;
    .locals 1
    .parameter

    .prologue
    .line 37569
    packed-switch p0, :pswitch_data_0

    .line 37574
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 37570
    :pswitch_0
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dc;->a:Lcom/keniu/security/sync/d/d/a/dc;

    goto :goto_0

    .line 37571
    :pswitch_1
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dc;->b:Lcom/keniu/security/sync/d/d/a/dc;

    goto :goto_0

    .line 37572
    :pswitch_2
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dc;->c:Lcom/keniu/security/sync/d/d/a/dc;

    goto :goto_0

    .line 37573
    :pswitch_3
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dc;->d:Lcom/keniu/security/sync/d/d/a/dc;

    goto :goto_0

    .line 37569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lcom/b/a/cp;)Lcom/keniu/security/sync/d/d/a/dc;
    .locals 2
    .parameter

    .prologue
    .line 37609
    invoke-virtual {p0}, Lcom/b/a/cp;->e()Lcom/b/a/co;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dc;->e()Lcom/b/a/co;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 37610
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37613
    :cond_0
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dc;->j:[Lcom/keniu/security/sync/d/d/a/dc;

    invoke-virtual {p0}, Lcom/b/a/cp;->d()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static d()Lcom/b/a/er;
    .locals 1

    .prologue
    .line 37580
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dc;->i:Lcom/b/a/er;

    return-object v0
.end method

.method private static e()Lcom/b/a/co;
    .locals 2

    .prologue
    .line 37600
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/da;->i()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/co;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/dc;
    .locals 1
    .parameter

    .prologue
    .line 37552
    const-class v0, Lcom/keniu/security/sync/d/d/a/dc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dc;

    return-object p0
.end method

.method public static values()[Lcom/keniu/security/sync/d/d/a/dc;
    .locals 1

    .prologue
    .line 37552
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dc;->m:[Lcom/keniu/security/sync/d/d/a/dc;

    invoke-virtual {v0}, [Lcom/keniu/security/sync/d/d/a/dc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keniu/security/sync/d/d/a/dc;

    return-object v0
.end method


# virtual methods
.method public final H_()I
    .locals 1

    .prologue
    .line 37566
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dc;->l:I

    return v0
.end method

.method public final b()Lcom/b/a/cp;
    .locals 2

    .prologue
    .line 37592
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dc;->e()Lcom/b/a/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/co;->d()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dc;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cp;

    return-object p0
.end method

.method public final c()Lcom/b/a/co;
    .locals 1

    .prologue
    .line 37596
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dc;->e()Lcom/b/a/co;

    move-result-object v0

    return-object v0
.end method
