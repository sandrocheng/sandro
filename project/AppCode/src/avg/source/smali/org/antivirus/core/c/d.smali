.class public final enum Lorg/antivirus/core/c/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/core/c/d;

.field public static final enum b:Lorg/antivirus/core/c/d;

.field public static final enum c:Lorg/antivirus/core/c/d;

.field public static final enum d:Lorg/antivirus/core/c/d;

.field public static final enum e:Lorg/antivirus/core/c/d;

.field private static final synthetic f:[Lorg/antivirus/core/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/antivirus/core/c/d;

    const-string v1, "CLASSESDEX"

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/c/d;->a:Lorg/antivirus/core/c/d;

    new-instance v0, Lorg/antivirus/core/c/d;

    const-string v1, "MANIFESTMF"

    invoke-direct {v0, v1, v3}, Lorg/antivirus/core/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/c/d;->b:Lorg/antivirus/core/c/d;

    new-instance v0, Lorg/antivirus/core/c/d;

    const-string v1, "BPACK"

    invoke-direct {v0, v1, v4}, Lorg/antivirus/core/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/c/d;->c:Lorg/antivirus/core/c/d;

    new-instance v0, Lorg/antivirus/core/c/d;

    const-string v1, "SPAM"

    invoke-direct {v0, v1, v5}, Lorg/antivirus/core/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/c/d;->d:Lorg/antivirus/core/c/d;

    new-instance v0, Lorg/antivirus/core/c/d;

    const-string v1, "MEDIA"

    invoke-direct {v0, v1, v6}, Lorg/antivirus/core/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/c/d;->e:Lorg/antivirus/core/c/d;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/antivirus/core/c/d;

    sget-object v1, Lorg/antivirus/core/c/d;->a:Lorg/antivirus/core/c/d;

    aput-object v1, v0, v2

    sget-object v1, Lorg/antivirus/core/c/d;->b:Lorg/antivirus/core/c/d;

    aput-object v1, v0, v3

    sget-object v1, Lorg/antivirus/core/c/d;->c:Lorg/antivirus/core/c/d;

    aput-object v1, v0, v4

    sget-object v1, Lorg/antivirus/core/c/d;->d:Lorg/antivirus/core/c/d;

    aput-object v1, v0, v5

    sget-object v1, Lorg/antivirus/core/c/d;->e:Lorg/antivirus/core/c/d;

    aput-object v1, v0, v6

    sput-object v0, Lorg/antivirus/core/c/d;->f:[Lorg/antivirus/core/c/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/core/c/d;
    .locals 1

    const-class v0, Lorg/antivirus/core/c/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/c/d;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/core/c/d;
    .locals 1

    sget-object v0, Lorg/antivirus/core/c/d;->f:[Lorg/antivirus/core/c/d;

    invoke-virtual {v0}, [Lorg/antivirus/core/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/core/c/d;

    return-object v0
.end method
