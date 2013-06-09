.class public final enum Lorg/antivirus/core/b/a/s;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/core/b/a/s;

.field public static final enum b:Lorg/antivirus/core/b/a/s;

.field public static final enum c:Lorg/antivirus/core/b/a/s;

.field public static final enum d:Lorg/antivirus/core/b/a/s;

.field public static final enum e:Lorg/antivirus/core/b/a/s;

.field public static final enum f:Lorg/antivirus/core/b/a/s;

.field private static final synthetic h:[Lorg/antivirus/core/b/a/s;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/antivirus/core/b/a/s;

    const-string v1, "LIC_LT_INVALID"

    invoke-direct {v0, v1, v4, v4}, Lorg/antivirus/core/b/a/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/s;->a:Lorg/antivirus/core/b/a/s;

    new-instance v0, Lorg/antivirus/core/b/a/s;

    const-string v1, "LIC_LT_FREE"

    invoke-direct {v0, v1, v5, v5}, Lorg/antivirus/core/b/a/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/s;->b:Lorg/antivirus/core/b/a/s;

    new-instance v0, Lorg/antivirus/core/b/a/s;

    const-string v1, "LIC_LT_TRIAL"

    invoke-direct {v0, v1, v6, v6}, Lorg/antivirus/core/b/a/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/s;->c:Lorg/antivirus/core/b/a/s;

    new-instance v0, Lorg/antivirus/core/b/a/s;

    const-string v1, "LIC_LT_SALES"

    invoke-direct {v0, v1, v7, v7}, Lorg/antivirus/core/b/a/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/s;->d:Lorg/antivirus/core/b/a/s;

    new-instance v0, Lorg/antivirus/core/b/a/s;

    const-string v1, "LIC_LT_FULL"

    invoke-direct {v0, v1, v8, v8}, Lorg/antivirus/core/b/a/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/s;->e:Lorg/antivirus/core/b/a/s;

    new-instance v0, Lorg/antivirus/core/b/a/s;

    const-string v1, "LIC_LT_RESERVED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/antivirus/core/b/a/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/s;->f:Lorg/antivirus/core/b/a/s;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/antivirus/core/b/a/s;

    sget-object v1, Lorg/antivirus/core/b/a/s;->a:Lorg/antivirus/core/b/a/s;

    aput-object v1, v0, v4

    sget-object v1, Lorg/antivirus/core/b/a/s;->b:Lorg/antivirus/core/b/a/s;

    aput-object v1, v0, v5

    sget-object v1, Lorg/antivirus/core/b/a/s;->c:Lorg/antivirus/core/b/a/s;

    aput-object v1, v0, v6

    sget-object v1, Lorg/antivirus/core/b/a/s;->d:Lorg/antivirus/core/b/a/s;

    aput-object v1, v0, v7

    sget-object v1, Lorg/antivirus/core/b/a/s;->e:Lorg/antivirus/core/b/a/s;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/antivirus/core/b/a/s;->f:Lorg/antivirus/core/b/a/s;

    aput-object v2, v0, v1

    sput-object v0, Lorg/antivirus/core/b/a/s;->h:[Lorg/antivirus/core/b/a/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/antivirus/core/b/a/s;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/core/b/a/s;
    .locals 1

    const-class v0, Lorg/antivirus/core/b/a/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/b/a/s;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/core/b/a/s;
    .locals 1

    sget-object v0, Lorg/antivirus/core/b/a/s;->h:[Lorg/antivirus/core/b/a/s;

    invoke-virtual {v0}, [Lorg/antivirus/core/b/a/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/core/b/a/s;

    return-object v0
.end method
