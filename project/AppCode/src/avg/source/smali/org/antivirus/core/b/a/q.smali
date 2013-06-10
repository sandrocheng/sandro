.class public final enum Lorg/antivirus/core/b/a/q;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/core/b/a/q;

.field public static final enum b:Lorg/antivirus/core/b/a/q;

.field public static final enum c:Lorg/antivirus/core/b/a/q;

.field public static final enum d:Lorg/antivirus/core/b/a/q;

.field private static final synthetic f:[Lorg/antivirus/core/b/a/q;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/antivirus/core/b/a/q;

    const-string v1, "LIC_ET_UNDEFINED"

    invoke-direct {v0, v1, v2, v2}, Lorg/antivirus/core/b/a/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/q;->a:Lorg/antivirus/core/b/a/q;

    new-instance v0, Lorg/antivirus/core/b/a/q;

    const-string v1, "LIC_ET_HARD"

    invoke-direct {v0, v1, v3, v3}, Lorg/antivirus/core/b/a/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/q;->b:Lorg/antivirus/core/b/a/q;

    new-instance v0, Lorg/antivirus/core/b/a/q;

    const-string v1, "LIC_ET_SOFT"

    invoke-direct {v0, v1, v4, v4}, Lorg/antivirus/core/b/a/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/q;->c:Lorg/antivirus/core/b/a/q;

    new-instance v0, Lorg/antivirus/core/b/a/q;

    const-string v1, "LIC_ET_VIP"

    invoke-direct {v0, v1, v5, v5}, Lorg/antivirus/core/b/a/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/q;->d:Lorg/antivirus/core/b/a/q;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/antivirus/core/b/a/q;

    sget-object v1, Lorg/antivirus/core/b/a/q;->a:Lorg/antivirus/core/b/a/q;

    aput-object v1, v0, v2

    sget-object v1, Lorg/antivirus/core/b/a/q;->b:Lorg/antivirus/core/b/a/q;

    aput-object v1, v0, v3

    sget-object v1, Lorg/antivirus/core/b/a/q;->c:Lorg/antivirus/core/b/a/q;

    aput-object v1, v0, v4

    sget-object v1, Lorg/antivirus/core/b/a/q;->d:Lorg/antivirus/core/b/a/q;

    aput-object v1, v0, v5

    sput-object v0, Lorg/antivirus/core/b/a/q;->f:[Lorg/antivirus/core/b/a/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/antivirus/core/b/a/q;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/core/b/a/q;
    .locals 1

    const-class v0, Lorg/antivirus/core/b/a/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/b/a/q;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/core/b/a/q;
    .locals 1

    sget-object v0, Lorg/antivirus/core/b/a/q;->f:[Lorg/antivirus/core/b/a/q;

    invoke-virtual {v0}, [Lorg/antivirus/core/b/a/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/core/b/a/q;

    return-object v0
.end method
