.class public final enum Lorg/antivirus/core/b/a/w;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/core/b/a/w;

.field public static final enum b:Lorg/antivirus/core/b/a/w;

.field public static final enum c:Lorg/antivirus/core/b/a/w;

.field public static final enum d:Lorg/antivirus/core/b/a/w;

.field private static final synthetic e:[Lorg/antivirus/core/b/a/w;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/antivirus/core/b/a/w;

    const-string v1, "LACV_NOT_GIVEN"

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/b/a/w;->a:Lorg/antivirus/core/b/a/w;

    new-instance v0, Lorg/antivirus/core/b/a/w;

    const-string v1, "LACV_VALID"

    invoke-direct {v0, v1, v3}, Lorg/antivirus/core/b/a/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/b/a/w;->b:Lorg/antivirus/core/b/a/w;

    new-instance v0, Lorg/antivirus/core/b/a/w;

    const-string v1, "LACV_INVALID"

    invoke-direct {v0, v1, v4}, Lorg/antivirus/core/b/a/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/b/a/w;->c:Lorg/antivirus/core/b/a/w;

    new-instance v0, Lorg/antivirus/core/b/a/w;

    const-string v1, "LACV_GENERATED"

    invoke-direct {v0, v1, v5}, Lorg/antivirus/core/b/a/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/b/a/w;->d:Lorg/antivirus/core/b/a/w;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/antivirus/core/b/a/w;

    sget-object v1, Lorg/antivirus/core/b/a/w;->a:Lorg/antivirus/core/b/a/w;

    aput-object v1, v0, v2

    sget-object v1, Lorg/antivirus/core/b/a/w;->b:Lorg/antivirus/core/b/a/w;

    aput-object v1, v0, v3

    sget-object v1, Lorg/antivirus/core/b/a/w;->c:Lorg/antivirus/core/b/a/w;

    aput-object v1, v0, v4

    sget-object v1, Lorg/antivirus/core/b/a/w;->d:Lorg/antivirus/core/b/a/w;

    aput-object v1, v0, v5

    sput-object v0, Lorg/antivirus/core/b/a/w;->e:[Lorg/antivirus/core/b/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/core/b/a/w;
    .locals 1

    const-class v0, Lorg/antivirus/core/b/a/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/b/a/w;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/core/b/a/w;
    .locals 1

    sget-object v0, Lorg/antivirus/core/b/a/w;->e:[Lorg/antivirus/core/b/a/w;

    invoke-virtual {v0}, [Lorg/antivirus/core/b/a/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/core/b/a/w;

    return-object v0
.end method
