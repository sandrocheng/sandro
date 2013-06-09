.class public final enum Lorg/antivirus/core/scanners/m;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/core/scanners/m;

.field public static final enum b:Lorg/antivirus/core/scanners/m;

.field public static final enum c:Lorg/antivirus/core/scanners/m;

.field private static final synthetic d:[Lorg/antivirus/core/scanners/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/antivirus/core/scanners/m;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/scanners/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/scanners/m;->a:Lorg/antivirus/core/scanners/m;

    new-instance v0, Lorg/antivirus/core/scanners/m;

    const-string v1, "Progress"

    invoke-direct {v0, v1, v3}, Lorg/antivirus/core/scanners/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/scanners/m;->b:Lorg/antivirus/core/scanners/m;

    new-instance v0, Lorg/antivirus/core/scanners/m;

    const-string v1, "FullDetailed"

    invoke-direct {v0, v1, v4}, Lorg/antivirus/core/scanners/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/scanners/m;->c:Lorg/antivirus/core/scanners/m;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/antivirus/core/scanners/m;

    sget-object v1, Lorg/antivirus/core/scanners/m;->a:Lorg/antivirus/core/scanners/m;

    aput-object v1, v0, v2

    sget-object v1, Lorg/antivirus/core/scanners/m;->b:Lorg/antivirus/core/scanners/m;

    aput-object v1, v0, v3

    sget-object v1, Lorg/antivirus/core/scanners/m;->c:Lorg/antivirus/core/scanners/m;

    aput-object v1, v0, v4

    sput-object v0, Lorg/antivirus/core/scanners/m;->d:[Lorg/antivirus/core/scanners/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/core/scanners/m;
    .locals 1

    const-class v0, Lorg/antivirus/core/scanners/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/scanners/m;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/core/scanners/m;
    .locals 1

    sget-object v0, Lorg/antivirus/core/scanners/m;->d:[Lorg/antivirus/core/scanners/m;

    invoke-virtual {v0}, [Lorg/antivirus/core/scanners/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/core/scanners/m;

    return-object v0
.end method
